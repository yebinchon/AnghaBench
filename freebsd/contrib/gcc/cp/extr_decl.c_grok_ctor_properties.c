
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* tree ;


 int copy_fn_p (char*) ;
 int error (char*,char*,char*) ;

int
grok_ctor_properties (tree ctype, tree decl)
{
  int ctor_parm = copy_fn_p (decl);

  if (ctor_parm < 0)
    {
      error ("invalid constructor; you probably meant %<%T (const %T&)%>",
  ctype, ctype);
      return 0;
    }

  return 1;
}
