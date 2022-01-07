
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct attr_desc {scalar_t__ name; int is_numeric; } ;
typedef int rtx ;


 scalar_t__ EQ_ATTR ;
 scalar_t__ GET_CODE (int ) ;
 char* GET_RTX_FORMAT (scalar_t__) ;
 int GET_RTX_LENGTH (scalar_t__) ;
 int XEXP (int ,int) ;
 scalar_t__ XSTR (int ,int ) ;
 int XVECEXP (int ,int,int) ;
 int XVECLEN (int ,int) ;
 int printf (char*,...) ;

__attribute__((used)) static int
write_expr_attr_cache (rtx p, struct attr_desc *attr)
{
  const char *fmt;
  int i, ie, j, je;

  if (GET_CODE (p) == EQ_ATTR)
    {
      if (XSTR (p, 0) != attr->name)
 return 0;

      if (!attr->is_numeric)
 printf ("  enum attr_%s ", attr->name);
      else
 printf ("  int ");

      printf ("attr_%s = get_attr_%s (insn);\n", attr->name, attr->name);
      return 1;
    }

  fmt = GET_RTX_FORMAT (GET_CODE (p));
  ie = GET_RTX_LENGTH (GET_CODE (p));
  for (i = 0; i < ie; i++)
    {
      switch (*fmt++)
 {
 case 'e':
   if (write_expr_attr_cache (XEXP (p, i), attr))
     return 1;
   break;

 case 'E':
   je = XVECLEN (p, i);
   for (j = 0; j < je; ++j)
     if (write_expr_attr_cache (XVECEXP (p, i, j), attr))
       return 1;
   break;
 }
    }

  return 0;
}
