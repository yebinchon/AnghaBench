
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef int location_t ;


 int EXPR_HAS_LOCATION (scalar_t__) ;
 int EXPR_LOCATION (scalar_t__) ;
 scalar_t__ NULL_TREE ;
 int OPT_Wstrict_overflow ;
 int fold_deferred_overflow_code ;
 char* fold_deferred_overflow_warning ;
 scalar_t__ fold_deferring_overflow_warnings ;
 int gcc_assert (int) ;
 int input_location ;
 int issue_strict_overflow_warning (int) ;
 int warning (int ,char*,int *,char const*) ;

void
fold_undefer_overflow_warnings (bool issue, tree stmt, int code)
{
  const char *warnmsg;
  location_t locus;

  gcc_assert (fold_deferring_overflow_warnings > 0);
  --fold_deferring_overflow_warnings;
  if (fold_deferring_overflow_warnings > 0)
    {
      if (fold_deferred_overflow_warning != ((void*)0)
   && code != 0
   && code < (int) fold_deferred_overflow_code)
 fold_deferred_overflow_code = code;
      return;
    }

  warnmsg = fold_deferred_overflow_warning;
  fold_deferred_overflow_warning = ((void*)0);

  if (!issue || warnmsg == ((void*)0))
    return;



  if (code == 0 || code > (int) fold_deferred_overflow_code)
    code = fold_deferred_overflow_code;

  if (!issue_strict_overflow_warning (code))
    return;

  if (stmt == NULL_TREE || !EXPR_HAS_LOCATION (stmt))
    locus = input_location;
  else
    locus = EXPR_LOCATION (stmt);
  warning (OPT_Wstrict_overflow, "%H%s", &locus, warnmsg);
}
