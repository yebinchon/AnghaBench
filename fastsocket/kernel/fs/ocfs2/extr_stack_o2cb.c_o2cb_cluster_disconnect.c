
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_cluster_connection {struct dlm_ctxt* cc_lockspace; struct o2dlm_private* cc_private; } ;
struct o2dlm_private {int op_eviction_cb; } ;
struct dlm_ctxt {int dummy; } ;


 int dlm_unregister_domain (struct dlm_ctxt*) ;
 int dlm_unregister_eviction_cb (int *) ;
 int kfree (struct o2dlm_private*) ;

__attribute__((used)) static int o2cb_cluster_disconnect(struct ocfs2_cluster_connection *conn)
{
 struct dlm_ctxt *dlm = conn->cc_lockspace;
 struct o2dlm_private *priv = conn->cc_private;

 dlm_unregister_eviction_cb(&priv->op_eviction_cb);
 conn->cc_private = ((void*)0);
 kfree(priv);

 dlm_unregister_domain(dlm);
 conn->cc_lockspace = ((void*)0);

 return 0;
}
