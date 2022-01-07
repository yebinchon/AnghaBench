
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_cluster_connection {int cc_recovery_data; int (* cc_recovery_handler ) (int,int ) ;int cc_name; int cc_namelen; } ;


 int ML_NOTICE ;
 int mlog (int ,char*,int,int ,int ) ;
 int stub1 (int,int ) ;

__attribute__((used)) static void o2dlm_eviction_cb(int node_num, void *data)
{
 struct ocfs2_cluster_connection *conn = data;

 mlog(ML_NOTICE, "o2dlm has evicted node %d from group %.*s\n",
      node_num, conn->cc_namelen, conn->cc_name);

 conn->cc_recovery_handler(node_num, conn->cc_recovery_data);
}
