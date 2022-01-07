
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
typedef int location_t ;
typedef int diagnostic_t ;
typedef int diagnostic_info ;


 int _ (char const*) ;
 int diagnostic_set_info_translated (int *,int ,int *,int ,int ) ;

void
diagnostic_set_info (diagnostic_info *diagnostic, const char *gmsgid,
       va_list *args, location_t location,
       diagnostic_t kind)
{
  diagnostic_set_info_translated (diagnostic, _(gmsgid), args, location, kind);
}
