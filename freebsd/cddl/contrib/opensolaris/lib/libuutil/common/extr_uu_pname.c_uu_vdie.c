
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int UU_EXIT_FATAL ;
 int uu_die_internal (int ,char const*,int ) ;

void
uu_vdie(const char *format, va_list alist)
{
 uu_die_internal(UU_EXIT_FATAL, format, alist);
}
