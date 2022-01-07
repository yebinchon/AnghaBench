
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_SUCCESS ;
 char* VERSION ;
 int backtrack ;
 int dflag ;
 int exit (int ) ;
 int gflag ;
 int iflag ;
 int lflag ;
 int locations ;
 char* myname ;
 int printf (char*,char*,char*) ;
 int pure_parser ;
 int rflag ;
 int sflag ;
 int tflag ;
 int unsupported_flag_warning (char*,char*) ;
 int usage () ;
 int vflag ;

__attribute__((used)) static void
setflag(int ch)
{
    switch (ch)
    {
    case 'B':



 unsupported_flag_warning("-B", "reconfigure with --enable-btyacc");

 break;

    case 'd':
 dflag = 1;
 break;

    case 'g':
 gflag = 1;
 break;

    case 'i':
 iflag = 1;
 break;

    case 'l':
 lflag = 1;
 break;

    case 'L':



 unsupported_flag_warning("-L", "reconfigure with --enable-btyacc");

 break;

    case 'P':
 pure_parser = 1;
 break;

    case 'r':
 rflag = 1;
 break;

    case 's':
 sflag = 1;
 break;

    case 't':
 tflag = 1;
 break;

    case 'v':
 vflag = 1;
 break;

    case 'V':
 printf("%s - %s\n", myname, VERSION);
 exit(EXIT_SUCCESS);

    case 'y':


 break;

    default:
 usage();
    }
}
