
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DOLLAR_LABEL_CHAR ;
 int LOCAL_LABEL_PREFIX ;
 int dollar_label_instance (long) ;
 int know (int) ;

char *
dollar_label_name (register long n,
     register int augend )
{
  long i;

  static char symbol_name_build[24];
  register char *p;
  register char *q;
  char symbol_name_temporary[20];

  know (n >= 0);
  know (augend == 0 || augend == 1);
  p = symbol_name_build;



  *p++ = 'L';



  q = symbol_name_temporary;
  for (*q++ = 0, i = n; i; ++q)
    {
      *q = i % 10 + '0';
      i /= 10;
    }
  while ((*p = *--q) != '\0')
    ++p;

  *p++ = DOLLAR_LABEL_CHAR;


  q = symbol_name_temporary;
  for (*q++ = 0, i = dollar_label_instance (n) + augend; i; ++q)
    {
      *q = i % 10 + '0';
      i /= 10;
    }
  while ((*p++ = *--q) != '\0')
 ;;


  return symbol_name_build;
}
