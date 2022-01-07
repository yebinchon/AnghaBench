
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int err (int,char*) ;
 int exit (int ) ;
 char* getcwd (int *,int ) ;
 char* getcwd_logical () ;
 int getopt (int,char**,char*) ;
 scalar_t__ optind ;
 int printf (char*,char*) ;
 int usage () ;

int
main(int argc, char *argv[])
{
 int physical;
 int ch;
 char *p;

 physical = 1;
 while ((ch = getopt(argc, argv, "LP")) != -1)
  switch (ch) {
  case 'L':
   physical = 0;
   break;
  case 'P':
   physical = 1;
   break;
  case '?':
  default:
   usage();
  }
 argc -= optind;
 argv += optind;

 if (argc != 0)
  usage();





 if ((!physical && (p = getcwd_logical()) != ((void*)0)) ||
     (p = getcwd(((void*)0), 0)) != ((void*)0))
  printf("%s\n", p);
 else
  err(1, ".");

 exit(0);
}
