
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mapping {scalar_t__ index; struct macro_group* group; } ;
struct macro_group {scalar_t__ num_builtins; scalar_t__ (* uses_macro_p ) (int ,scalar_t__) ;} ;
typedef int rtx ;


 int BELLWETHER_CODE (int ) ;
 int GET_CODE (int ) ;
 char* GET_RTX_FORMAT (int ) ;
 int XEXP (int ,int) ;
 int XVEC (int ,int) ;
 int XVECEXP (int ,int,int) ;
 int XVECLEN (int ,int) ;
 scalar_t__ stub1 (int ,scalar_t__) ;

__attribute__((used)) static bool
uses_macro_p (rtx x, struct mapping *macro)
{
  struct macro_group *group;
  const char *format_ptr;
  int i, j;

  if (x == 0)
    return 0;

  group = macro->group;
  if (group->uses_macro_p (x, macro->index + group->num_builtins))
    return 1;

  format_ptr = GET_RTX_FORMAT (BELLWETHER_CODE (GET_CODE (x)));
  for (i = 0; format_ptr[i] != 0; i++)
    switch (format_ptr[i])
      {
      case 'e':
 if (uses_macro_p (XEXP (x, i), macro))
   return 1;
 break;

      case 'V':
      case 'E':
 if (XVEC (x, i))
   for (j = 0; j < XVECLEN (x, i); j++)
     if (uses_macro_p (XVECEXP (x, i, j), macro))
       return 1;
 break;

      default:
 break;
      }
  return 0;
}
