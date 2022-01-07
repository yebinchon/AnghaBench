
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int acl_type_t ;


 int ACL_TYPE_ACCESS ;
 int ACL_TYPE_DEFAULT ;
 int getopt (int,char**,char*) ;
 scalar_t__ optind ;
 int print_acl (char*,int ,int,int,int,int,int) ;
 int print_acl_from_stdin (int ,int,int,int,int,int) ;
 int strcmp (char*,char*) ;
 int usage () ;

int
main(int argc, char *argv[])
{
 acl_type_t type = ACL_TYPE_ACCESS;
 int carried_error = 0;
 int ch, error, i;
 int hflag, iflag, qflag, nflag, vflag;

 hflag = 0;
 iflag = 0;
 qflag = 0;
 nflag = 0;
 vflag = 0;
 while ((ch = getopt(argc, argv, "dhinqv")) != -1)
  switch(ch) {
  case 'd':
   type = ACL_TYPE_DEFAULT;
   break;
  case 'h':
   hflag = 1;
   break;
  case 'i':
   iflag = 1;
   break;
  case 'n':
   nflag = 1;
   break;
  case 'q':
   qflag = 1;
   break;
  case 'v':
   vflag = 1;
   break;
  default:
   usage();
   return(-1);
  }
 argc -= optind;
 argv += optind;

 if (argc == 0) {
  error = print_acl_from_stdin(type, hflag, iflag, nflag,
      qflag, vflag);
  return(error ? 1 : 0);
 }

 for (i = 0; i < argc; i++) {
  if (!strcmp(argv[i], "-")) {
   error = print_acl_from_stdin(type, hflag, iflag, nflag,
       qflag, vflag);
   if (error == -1)
    carried_error = -1;
  } else {
   error = print_acl(argv[i], type, hflag, iflag, nflag,
       qflag, vflag);
   if (error == -1)
    carried_error = -1;
  }
 }

 return(carried_error ? 1 : 0);
}
