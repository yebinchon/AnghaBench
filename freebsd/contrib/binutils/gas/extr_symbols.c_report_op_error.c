
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int symbolS ;
typedef scalar_t__ segT ;


 int S_GET_NAME (int *) ;
 scalar_t__ S_GET_SEGMENT (int *) ;
 int _ (char*) ;
 int as_bad (int ,int ,int ,...) ;
 int as_bad_where (char*,unsigned int,int ,int ,...) ;
 scalar_t__ expr_symbol_where (int *,char**,unsigned int*) ;
 scalar_t__ undefined_section ;

__attribute__((used)) static void
report_op_error (symbolS *symp, symbolS *left, symbolS *right)
{
  char *file;
  unsigned int line;
  segT seg_left = S_GET_SEGMENT (left);
  segT seg_right = right ? S_GET_SEGMENT (right) : 0;

  if (expr_symbol_where (symp, &file, &line))
    {
      if (seg_left == undefined_section)
 as_bad_where (file, line,
        _("undefined symbol `%s' in operation"),
        S_GET_NAME (left));
      if (seg_right == undefined_section)
 as_bad_where (file, line,
        _("undefined symbol `%s' in operation"),
        S_GET_NAME (right));
      if (seg_left != undefined_section
   && seg_right != undefined_section)
 {
   if (right)
     as_bad_where (file, line,
     _("invalid sections for operation on `%s' and `%s'"),
     S_GET_NAME (left), S_GET_NAME (right));
   else
     as_bad_where (file, line,
     _("invalid section for operation on `%s'"),
     S_GET_NAME (left));
 }

    }
  else
    {
      if (seg_left == undefined_section)
 as_bad (_("undefined symbol `%s' in operation setting `%s'"),
  S_GET_NAME (left), S_GET_NAME (symp));
      if (seg_right == undefined_section)
 as_bad (_("undefined symbol `%s' in operation setting `%s'"),
  S_GET_NAME (right), S_GET_NAME (symp));
      if (seg_left != undefined_section
   && seg_right != undefined_section)
 {
   if (right)
     as_bad (_("invalid sections for operation on `%s' and `%s' setting `%s'"),
      S_GET_NAME (left), S_GET_NAME (right), S_GET_NAME (symp));
   else
     as_bad (_("invalid section for operation on `%s' setting `%s'"),
      S_GET_NAME (left), S_GET_NAME (symp));
 }
    }
}
