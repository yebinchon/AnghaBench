
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int domainname ;


 int MAXHOSTNAMELEN ;
 int err (int,char*) ;
 int exit (int ) ;
 scalar_t__ getdomainname (char*,int) ;
 int getopt (int,char**,char*) ;
 scalar_t__ optind ;
 int printf (char*,char*) ;
 scalar_t__ setdomainname (char*,int) ;
 scalar_t__ strlen (char*) ;
 int usage () ;

int
main(int argc, char *argv[])
{
 int ch;
 char domainname[MAXHOSTNAMELEN];

 while ((ch = getopt(argc, argv, "")) != -1)
  switch (ch) {
  case '?':

  default:
   usage();
  }
 argc -= optind;
 argv += optind;

 if (argc > 1)
  usage();

 if (*argv) {
  if (setdomainname(*argv, (int)strlen(*argv)))
   err(1, "setdomainname");
 } else {
  if (getdomainname(domainname, (int)sizeof(domainname)))
   err(1, "getdomainname");
  (void)printf("%s\n", domainname);
 }
 exit(0);
}
