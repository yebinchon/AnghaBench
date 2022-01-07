
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TOUPPER (char const) ;
 int putchar (int ) ;

__attribute__((used)) static void
write_upcase (const char *str)
{
  while (*str)
    {

      putchar (TOUPPER(*str));
      str++;
    }
}
