
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ocfs2_cluster_connection {int cc_namelen; void (* cc_recovery_handler ) (int,void*) ;int cc_version; void* cc_recovery_data; int cc_name; } ;
struct TYPE_6__ {TYPE_1__* sp_ops; } ;
struct TYPE_5__ {int lp_max_version; } ;
struct TYPE_4__ {int (* connect ) (struct ocfs2_cluster_connection*) ;} ;


 int BUG_ON (int ) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int GROUP_NAME_MAX ;
 TYPE_3__* active_stack ;
 int kfree (struct ocfs2_cluster_connection*) ;
 struct ocfs2_cluster_connection* kzalloc (int,int ) ;
 TYPE_2__* lproto ;
 int memcpy (int ,char const*,int) ;
 int ocfs2_stack_driver_get (char const*) ;
 int ocfs2_stack_driver_put () ;
 int stub1 (struct ocfs2_cluster_connection*) ;

int ocfs2_cluster_connect(const char *stack_name,
     const char *group,
     int grouplen,
     void (*recovery_handler)(int node_num,
         void *recovery_data),
     void *recovery_data,
     struct ocfs2_cluster_connection **conn)
{
 int rc = 0;
 struct ocfs2_cluster_connection *new_conn;

 BUG_ON(group == ((void*)0));
 BUG_ON(conn == ((void*)0));
 BUG_ON(recovery_handler == ((void*)0));

 if (grouplen > GROUP_NAME_MAX) {
  rc = -EINVAL;
  goto out;
 }

 new_conn = kzalloc(sizeof(struct ocfs2_cluster_connection),
      GFP_KERNEL);
 if (!new_conn) {
  rc = -ENOMEM;
  goto out;
 }

 memcpy(new_conn->cc_name, group, grouplen);
 new_conn->cc_namelen = grouplen;
 new_conn->cc_recovery_handler = recovery_handler;
 new_conn->cc_recovery_data = recovery_data;


 new_conn->cc_version = lproto->lp_max_version;


 rc = ocfs2_stack_driver_get(stack_name);
 if (rc)
  goto out_free;

 rc = active_stack->sp_ops->connect(new_conn);
 if (rc) {
  ocfs2_stack_driver_put();
  goto out_free;
 }

 *conn = new_conn;

out_free:
 if (rc)
  kfree(new_conn);

out:
 return rc;
}
