
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int B_FALSE ;
 int fprintf (int ,char*,...) ;
 int g_zfs ;
 int getopt (int,char**,char*) ;
 char* gettext (char*) ;
 int optopt ;
 int stderr ;
 int usage (int ) ;
 int zfs_remap_indirects (int ,char const*) ;

__attribute__((used)) static int
zfs_do_remap(int argc, char **argv)
{
 const char *fsname;
 int err = 0;
 int c;


 while ((c = getopt(argc, argv, "")) != -1) {
  switch (c) {
  case '?':
   (void) fprintf(stderr,
       gettext("invalid option '%c'\n"), optopt);
   usage(B_FALSE);
  }
 }

 if (argc != 2) {
  (void) fprintf(stderr, gettext("wrong number of arguments\n"));
  usage(B_FALSE);
 }

 fsname = argv[1];
 err = zfs_remap_indirects(g_zfs, fsname);

 return (err);
}
