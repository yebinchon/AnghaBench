
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flow_table {int dummy; } ;
struct datapath {int table; } ;


 int ENOMEM ;
 int TBL_MIN_BUCKETS ;
 struct flow_table* ovs_flow_tbl_alloc (int ) ;
 int ovs_flow_tbl_deferred_destroy (struct flow_table*) ;
 struct flow_table* ovsl_dereference (int ) ;
 int rcu_assign_pointer (int ,struct flow_table*) ;

__attribute__((used)) static int flush_flows(struct datapath *dp)
{
 struct flow_table *old_table;
 struct flow_table *new_table;

 old_table = ovsl_dereference(dp->table);
 new_table = ovs_flow_tbl_alloc(TBL_MIN_BUCKETS);
 if (!new_table)
  return -ENOMEM;

 rcu_assign_pointer(dp->table, new_table);

 ovs_flow_tbl_deferred_destroy(old_table);
 return 0;
}
