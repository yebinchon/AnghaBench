
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;


 char* GET_RTX_NAME (int) ;
 int TOUPPER (char const) ;
 int putchar (int ) ;

__attribute__((used)) static void
print_code (enum rtx_code code)
{
  const char *p;
  for (p = GET_RTX_NAME (code); *p; p++)
    putchar (TOUPPER (*p));
}
