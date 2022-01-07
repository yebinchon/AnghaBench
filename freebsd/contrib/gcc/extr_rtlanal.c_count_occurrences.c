
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;







 int GET_CODE (scalar_t__) ;
 char* GET_RTX_FORMAT (int) ;
 int GET_RTX_LENGTH (int) ;

 int MEM_P (scalar_t__) ;



 scalar_t__ SET_DEST (scalar_t__) ;
 scalar_t__ SET_SRC (scalar_t__) ;

 scalar_t__ XEXP (scalar_t__,int) ;
 scalar_t__ XVECEXP (scalar_t__,int,int) ;
 int XVECLEN (scalar_t__,int) ;
 int rtx_equal_p (scalar_t__,scalar_t__) ;

int
count_occurrences (rtx x, rtx find, int count_dest)
{
  int i, j;
  enum rtx_code code;
  const char *format_ptr;
  int count;

  if (x == find)
    return 1;

  code = GET_CODE (x);

  switch (code)
    {
    case 130:
    case 134:
    case 135:
    case 133:
    case 128:
    case 136:
    case 131:
    case 137:
      return 0;

    case 132:
      if (MEM_P (find) && rtx_equal_p (x, find))
 return 1;
      break;

    case 129:
      if (SET_DEST (x) == find && ! count_dest)
 return count_occurrences (SET_SRC (x), find, count_dest);
      break;

    default:
      break;
    }

  format_ptr = GET_RTX_FORMAT (code);
  count = 0;

  for (i = 0; i < GET_RTX_LENGTH (code); i++)
    {
      switch (*format_ptr++)
 {
 case 'e':
   count += count_occurrences (XEXP (x, i), find, count_dest);
   break;

 case 'E':
   for (j = 0; j < XVECLEN (x, i); j++)
     count += count_occurrences (XVECEXP (x, i, j), find, count_dest);
   break;
 }
    }
  return count;
}
