
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int symbolS ;
typedef scalar_t__ segT ;
typedef int relax_substateT ;
typedef int offsetT ;
struct TYPE_4__ {scalar_t__ X_op; int X_add_number; int * X_add_symbol; } ;
typedef TYPE_1__ expressionS ;


 int OCTETS_PER_BYTE ;
 scalar_t__ O_constant ;
 scalar_t__ O_symbol ;
 int _ (char*) ;
 int abs_section_offset ;
 scalar_t__ absolute_section ;
 int as_bad (int ,...) ;
 int as_warn (int ) ;
 char* frag_var (int ,int,int,int ,int *,int,char*) ;
 int * make_expr_symbol (TYPE_1__*) ;
 scalar_t__ now_seg ;
 int rs_org ;
 int segment_name (scalar_t__) ;

__attribute__((used)) static void
do_org (segT segment, expressionS *exp, int fill)
{
  if (segment != now_seg && segment != absolute_section)
    as_bad (_("invalid segment \"%s\""), segment_name (segment));

  if (now_seg == absolute_section)
    {
      if (fill != 0)
 as_warn (_("ignoring fill value in absolute section"));
      if (exp->X_op != O_constant)
 {
   as_bad (_("only constant offsets supported in absolute section"));
   exp->X_add_number = 0;
 }
      abs_section_offset = exp->X_add_number;
    }
  else
    {
      char *p;
      symbolS *sym = exp->X_add_symbol;
      offsetT off = exp->X_add_number * OCTETS_PER_BYTE;

      if (exp->X_op != O_constant && exp->X_op != O_symbol)
 {

   sym = make_expr_symbol (exp);
   off = 0;
 }

      p = frag_var (rs_org, 1, 1, (relax_substateT) 0, sym, off, (char *) 0);
      *p = fill;
    }
}
