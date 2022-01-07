
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pathname ;
typedef int acl_type_t ;


 int PATH_MAX ;
 scalar_t__ fgets (char*,int,int ) ;
 int print_acl (char*,int ,int,int,int,int,int) ;
 int stdin ;
 char* strchr (char*,char) ;

__attribute__((used)) static int
print_acl_from_stdin(acl_type_t type, int hflag, int iflag, int nflag,
    int qflag, int vflag)
{
 char *p, pathname[PATH_MAX];
 int carried_error = 0;

 while (fgets(pathname, (int)sizeof(pathname), stdin)) {
  if ((p = strchr(pathname, '\n')) != ((void*)0))
   *p = '\0';
  if (print_acl(pathname, type, hflag, iflag, nflag,
      qflag, vflag) == -1) {
   carried_error = -1;
  }
 }

 return(carried_error);
}
