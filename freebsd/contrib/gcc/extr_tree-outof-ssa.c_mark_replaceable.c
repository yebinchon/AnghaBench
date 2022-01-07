
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* value_expr_p ;
typedef int tree ;
typedef TYPE_2__* temp_expr_table_p ;
struct TYPE_6__ {scalar_t__* version_info; TYPE_1__* pending_dependence; } ;
struct TYPE_5__ {struct TYPE_5__* next; } ;


 scalar_t__ SSA_NAME_DEF_STMT (int ) ;
 int SSA_NAME_VERSION (int ) ;
 int finish_expr (TYPE_2__*,int,int) ;

__attribute__((used)) static void
mark_replaceable (temp_expr_table_p tab, tree var)
{
  value_expr_p info;
  int version = SSA_NAME_VERSION (var);
  finish_expr (tab, version, 1);


  if (tab->version_info[version])
    {
      info = (value_expr_p) tab->version_info[version];
      for ( ; info->next; info = info->next)
 continue;
      info->next = tab->pending_dependence;
      tab->pending_dependence = (value_expr_p)tab->version_info[version];
    }

  tab->version_info[version] = SSA_NAME_DEF_STMT (var);
}
