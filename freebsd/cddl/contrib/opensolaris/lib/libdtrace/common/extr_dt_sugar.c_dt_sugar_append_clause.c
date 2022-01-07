
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dtsp_clause_list; } ;
typedef TYPE_1__ dt_sugar_parse_t ;
typedef int dt_node_t ;


 int dt_node_link (int ,int *) ;

__attribute__((used)) static void
dt_sugar_append_clause(dt_sugar_parse_t *dp, dt_node_t *clause)
{
 dp->dtsp_clause_list = dt_node_link(dp->dtsp_clause_list, clause);
}
