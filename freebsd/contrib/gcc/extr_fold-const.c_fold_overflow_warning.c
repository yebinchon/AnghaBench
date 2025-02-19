
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum warn_strict_overflow_code { ____Placeholder_warn_strict_overflow_code } warn_strict_overflow_code ;


 int OPT_Wstrict_overflow ;
 int flag_trapv ;
 int flag_wrapv ;
 int fold_deferred_overflow_code ;
 char const* fold_deferred_overflow_warning ;
 scalar_t__ fold_deferring_overflow_warnings ;
 int gcc_assert (int) ;
 scalar_t__ issue_strict_overflow_warning (int) ;
 int warning (int ,char*,char const*) ;

__attribute__((used)) static void
fold_overflow_warning (const char* gmsgid, enum warn_strict_overflow_code wc)
{
  gcc_assert (!flag_wrapv && !flag_trapv);
  if (fold_deferring_overflow_warnings > 0)
    {
      if (fold_deferred_overflow_warning == ((void*)0)
   || wc < fold_deferred_overflow_code)
 {
   fold_deferred_overflow_warning = gmsgid;
   fold_deferred_overflow_code = wc;
 }
    }
  else if (issue_strict_overflow_warning (wc))
    warning (OPT_Wstrict_overflow, "%s", gmsgid);
}
