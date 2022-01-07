
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct powerpc_macro {unsigned int operands; char* format; } ;


 int _ (char*) ;
 scalar_t__ alloca (unsigned int) ;
 int as_bad (int ) ;
 int know (int) ;
 int md_assemble (char*) ;
 char* strchr (char*,char) ;
 int strcpy (char*,char*) ;
 scalar_t__ strlen (char*) ;
 unsigned int strtol (char const*,char**,int) ;

__attribute__((used)) static void
ppc_macro (char *str, const struct powerpc_macro *macro)
{
  char *operands[10];
  unsigned int count;
  char *s;
  unsigned int len;
  const char *format;
  unsigned int arg;
  char *send;
  char *complete;


  count = 0;
  s = str;
  while (1)
    {
      if (count >= sizeof operands / sizeof operands[0])
 break;
      operands[count++] = s;
      s = strchr (s, ',');
      if (s == (char *) ((void*)0))
 break;
      *s++ = '\0';
    }

  if (count != macro->operands)
    {
      as_bad (_("wrong number of operands"));
      return;
    }



  len = 0;
  format = macro->format;
  while (*format != '\0')
    {
      if (*format != '%')
 {
   ++len;
   ++format;
 }
      else
 {
   arg = strtol (format + 1, &send, 10);
   know (send != format && arg < count);
   len += strlen (operands[arg]);
   format = send;
 }
    }


  complete = s = (char *) alloca (len + 1);
  format = macro->format;
  while (*format != '\0')
    {
      if (*format != '%')
 *s++ = *format++;
      else
 {
   arg = strtol (format + 1, &send, 10);
   strcpy (s, operands[arg]);
   s += strlen (s);
   format = send;
 }
    }
  *s = '\0';


  md_assemble (complete);
}
