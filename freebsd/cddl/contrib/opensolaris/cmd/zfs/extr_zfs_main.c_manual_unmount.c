
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int B_TRUE ;
 int MS_FORCE ;
 int OP_MOUNT ;
 int fprintf (int ,char*,...) ;
 int getopt (int,char**,char*) ;
 char* gettext (char*) ;
 scalar_t__ optind ;
 int optopt ;
 int stderr ;
 int unshare_unmount_path (int ,char*,int,int ) ;

__attribute__((used)) static int
manual_unmount(int argc, char **argv)
{
 int flags = 0;
 int c;


 while ((c = getopt(argc, argv, "f")) != -1) {
  switch (c) {
  case 'f':
   flags = MS_FORCE;
   break;
  case '?':
   (void) fprintf(stderr, gettext("invalid option '%c'\n"),
       optopt);
   (void) fprintf(stderr, gettext("usage: unmount [-f] "
       "<path>\n"));
   return (2);
  }
 }

 argc -= optind;
 argv += optind;


 if (argc != 1) {
  if (argc == 0)
   (void) fprintf(stderr, gettext("missing path "
       "argument\n"));
  else
   (void) fprintf(stderr, gettext("too many arguments\n"));
  (void) fprintf(stderr, gettext("usage: unmount [-f] <path>\n"));
  return (2);
 }

 return (unshare_unmount_path(OP_MOUNT, argv[0], flags, B_TRUE));
}
