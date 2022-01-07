
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ls_expr {int invalid; } ;
typedef int rtx ;


 int GET_CODE (int ) ;
 char* GET_RTX_FORMAT (int ) ;
 int GET_RTX_LENGTH (int ) ;
 scalar_t__ MEM_P (int ) ;
 int XEXP (int ,int) ;
 int XVECEXP (int ,int,int) ;
 int XVECLEN (int ,int) ;
 struct ls_expr* ldst_entry (int ) ;
 scalar_t__ simple_mem (int ) ;

__attribute__((used)) static void
invalidate_any_buried_refs (rtx x)
{
  const char * fmt;
  int i, j;
  struct ls_expr * ptr;


  if (MEM_P (x) && simple_mem (x))
    {
      ptr = ldst_entry (x);
      ptr->invalid = 1;
    }


  fmt = GET_RTX_FORMAT (GET_CODE (x));

  for (i = GET_RTX_LENGTH (GET_CODE (x)) - 1; i >= 0; i--)
    {
      if (fmt[i] == 'e')
 invalidate_any_buried_refs (XEXP (x, i));
      else if (fmt[i] == 'E')
 for (j = XVECLEN (x, i) - 1; j >= 0; j--)
   invalidate_any_buried_refs (XVECEXP (x, i, j));
    }
}
