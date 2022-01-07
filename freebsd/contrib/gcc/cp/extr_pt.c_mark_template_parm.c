
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct template_parm_data {int level; int* parms; int* arg_uses_template_parms; size_t current_arg; } ;


 int TEMPLATE_PARM_IDX (int ) ;
 scalar_t__ TEMPLATE_PARM_INDEX ;
 int TEMPLATE_PARM_LEVEL (int ) ;
 int TEMPLATE_TYPE_IDX (int ) ;
 int TEMPLATE_TYPE_LEVEL (int ) ;
 scalar_t__ TREE_CODE (int ) ;

__attribute__((used)) static int
mark_template_parm (tree t, void* data)
{
  int level;
  int idx;
  struct template_parm_data* tpd = (struct template_parm_data*) data;

  if (TREE_CODE (t) == TEMPLATE_PARM_INDEX)
    {
      level = TEMPLATE_PARM_LEVEL (t);
      idx = TEMPLATE_PARM_IDX (t);
    }
  else
    {
      level = TEMPLATE_TYPE_LEVEL (t);
      idx = TEMPLATE_TYPE_IDX (t);
    }

  if (level == tpd->level)
    {
      tpd->parms[idx] = 1;
      tpd->arg_uses_template_parms[tpd->current_arg] = 1;
    }



  return 0;
}
