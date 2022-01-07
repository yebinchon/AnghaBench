
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOCAL_LABEL_CHAR ;
 int LOCAL_LABEL_PREFIX ;
 long fb_label_instance (long) ;
 int know (int) ;

char *
fb_label_name (long n,
        long augend )
{
  long i;

  static char symbol_name_build[24];
  register char *p;
  register char *q;
  char symbol_name_temporary[20];

  know (n >= 0);



  know ((unsigned long) augend <= 1);

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

  *p++ = LOCAL_LABEL_CHAR;


  q = symbol_name_temporary;
  for (*q++ = 0, i = fb_label_instance (n) + augend; i; ++q)
    {
      *q = i % 10 + '0';
      i /= 10;
    }
  while ((*p++ = *--q) != '\0')
 ;;


  return (symbol_name_build);
}
