
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int dump_info_p ;


 scalar_t__ EXPR_HAS_LOCATION (int ) ;
 int EXPR_LINENO (int ) ;
 int dump_int (int ,char*,int ) ;

void
dump_stmt (dump_info_p di, tree t)
{
  if (EXPR_HAS_LOCATION (t))
    dump_int (di, "line", EXPR_LINENO (t));
}
