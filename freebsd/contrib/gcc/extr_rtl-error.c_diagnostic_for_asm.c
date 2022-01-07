
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
typedef int rtx ;
typedef int diagnostic_t ;
typedef int diagnostic_info ;


 int diagnostic_set_info (int *,char const*,int *,int ,int ) ;
 int location_for_asm (int ) ;
 int report_diagnostic (int *) ;

__attribute__((used)) static void
diagnostic_for_asm (rtx insn, const char *msg, va_list *args_ptr,
      diagnostic_t kind)
{
  diagnostic_info diagnostic;

  diagnostic_set_info (&diagnostic, msg, args_ptr,
         location_for_asm (insn), kind);
  report_diagnostic (&diagnostic);
}
