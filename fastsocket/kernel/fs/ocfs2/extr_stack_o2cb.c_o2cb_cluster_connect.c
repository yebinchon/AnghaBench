
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int pv_minor; int pv_major; } ;
struct ocfs2_cluster_connection {struct o2dlm_private* cc_private; struct dlm_ctxt* cc_lockspace; TYPE_1__ cc_version; int cc_name; int cc_namelen; } ;
struct o2dlm_private {int op_eviction_cb; } ;
struct dlm_protocol_version {int pv_minor; int pv_major; } ;
struct dlm_ctxt {int dummy; } ;
struct TYPE_4__ {int * sp_proto; } ;


 int BUG_ON (int ) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct dlm_ctxt*) ;
 int PTR_ERR (struct dlm_ctxt*) ;
 int crc32_le (int ,int ,int ) ;
 struct dlm_ctxt* dlm_register_domain (int ,int ,struct dlm_protocol_version*) ;
 int dlm_register_eviction_cb (struct dlm_ctxt*,int *) ;
 int dlm_setup_eviction_cb (int *,int ,struct ocfs2_cluster_connection*) ;
 int kfree (struct o2dlm_private*) ;
 struct o2dlm_private* kzalloc (int,int ) ;
 int mlog_errno (int) ;
 TYPE_2__ o2cb_stack ;
 int o2dlm_eviction_cb ;
 int o2hb_check_local_node_heartbeating () ;

__attribute__((used)) static int o2cb_cluster_connect(struct ocfs2_cluster_connection *conn)
{
 int rc = 0;
 u32 dlm_key;
 struct dlm_ctxt *dlm;
 struct o2dlm_private *priv;
 struct dlm_protocol_version dlm_version;

 BUG_ON(conn == ((void*)0));
 BUG_ON(o2cb_stack.sp_proto == ((void*)0));



 if (!o2hb_check_local_node_heartbeating()) {
  rc = -EINVAL;
  goto out;
 }

 priv = kzalloc(sizeof(struct o2dlm_private), GFP_KERNEL);
 if (!priv) {
  rc = -ENOMEM;
  goto out_free;
 }


 dlm_setup_eviction_cb(&priv->op_eviction_cb, o2dlm_eviction_cb,
         conn);

 conn->cc_private = priv;



 dlm_key = crc32_le(0, conn->cc_name, conn->cc_namelen);
 dlm_version.pv_major = conn->cc_version.pv_major;
 dlm_version.pv_minor = conn->cc_version.pv_minor;

 dlm = dlm_register_domain(conn->cc_name, dlm_key, &dlm_version);
 if (IS_ERR(dlm)) {
  rc = PTR_ERR(dlm);
  mlog_errno(rc);
  goto out_free;
 }

 conn->cc_version.pv_major = dlm_version.pv_major;
 conn->cc_version.pv_minor = dlm_version.pv_minor;
 conn->cc_lockspace = dlm;

 dlm_register_eviction_cb(dlm, &priv->op_eviction_cb);

out_free:
 if (rc && conn->cc_private)
  kfree(conn->cc_private);

out:
 return rc;
}
