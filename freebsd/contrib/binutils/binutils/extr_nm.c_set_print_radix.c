
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _ (char*) ;
 char* desc_format ;
 int fatal (int ,char*) ;
 char* other_format ;
 int print_radix ;
 char* value_format_32bit ;
 char* value_format_64bit ;

__attribute__((used)) static void
set_print_radix (char *radix)
{
  switch (*radix)
    {
    case 'x':
      break;
    case 'd':
    case 'o':
      if (*radix == 'd')
 print_radix = 10;
      else
 print_radix = 8;
      value_format_32bit[4] = *radix;
      value_format_64bit[5] = *radix;
      other_format[3] = desc_format[3] = *radix;
      break;
    default:
      fatal (_("%s: invalid radix"), radix);
    }
}
