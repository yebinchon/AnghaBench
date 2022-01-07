
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hostname ;


 int MAXHOSTNAMELEN ;
 int err (int,char*) ;
 int exit (int ) ;
 scalar_t__ gethostname (char*,int) ;
 int getopt (int,char**,char*) ;
 scalar_t__ optind ;
 int printf (char*,char*) ;
 scalar_t__ sethostname (char*,int) ;
 char* strchr (char*,char) ;
 int strcpy (char*,char*) ;
 scalar_t__ strlen (char*) ;
 int usage () ;

int
main(int argc, char *argv[])
{
 int ch, sflag, dflag;
 char *p, hostname[MAXHOSTNAMELEN];

 sflag = 0;
 dflag = 0;
 while ((ch = getopt(argc, argv, "fsd")) != -1)
  switch (ch) {
  case 'f':





   break;
  case 's':
   sflag = 1;
   break;
  case 'd':
   dflag = 1;
   break;
  case '?':
  default:
   usage();
  }
 argc -= optind;
 argv += optind;

 if (argc > 1 || (sflag && dflag))
  usage();

 if (*argv) {
  if (sethostname(*argv, (int)strlen(*argv)))
   err(1, "sethostname");
 } else {
  if (gethostname(hostname, (int)sizeof(hostname)))
   err(1, "gethostname");
  if (sflag) {
   p = strchr(hostname, '.');
   if (p != ((void*)0))
    *p = '\0';
  } else if (dflag) {
   p = strchr(hostname, '.');
   if (p != ((void*)0))
    strcpy(hostname, ++p);
  }
  (void)printf("%s\n", hostname);
 }
 exit(0);
}
