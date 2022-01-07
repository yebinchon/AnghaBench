
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int dtsp_num_conditions; } ;
typedef TYPE_1__ dt_sugar_parse_t ;
typedef int dt_node_t ;


 int dt_sugar_append_clause (TYPE_1__*,int ) ;
 int dt_sugar_new_condition_impl (TYPE_1__*,int *,int,int) ;

__attribute__((used)) static int
dt_sugar_new_condition(dt_sugar_parse_t *dp, dt_node_t *pred, int condid)
{
 dp->dtsp_num_conditions++;
 dt_sugar_append_clause(dp, dt_sugar_new_condition_impl(dp,
     pred, condid, dp->dtsp_num_conditions));
 return (dp->dtsp_num_conditions);
}
