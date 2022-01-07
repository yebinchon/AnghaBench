
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RTX_CODE ;


 char* GET_RTX_NAME (int ) ;
 int TOUPPER (char const) ;
 int putchar (int ) ;

__attribute__((used)) static void
print_code (RTX_CODE code)
{
  const char *p1;
  for (p1 = GET_RTX_NAME (code); *p1; p1++)
    putchar (TOUPPER(*p1));
}
