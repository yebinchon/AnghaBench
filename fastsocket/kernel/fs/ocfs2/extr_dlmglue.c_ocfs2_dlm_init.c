
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int os_lockres; } ;
struct ocfs2_super {int * dc_task; struct ocfs2_cluster_connection* cconn; TYPE_1__ osb_orphan_scan; int osb_nfs_sync_lockres; int osb_rename_lockres; int osb_super_lockres; scalar_t__ node_num; int uuid_str; int osb_cluster_stack; } ;
struct ocfs2_cluster_connection {int dummy; } ;


 scalar_t__ IS_ERR (int *) ;
 int ML_ERROR ;
 int PTR_ERR (int *) ;
 int * kthread_run (int ,struct ocfs2_super*,char*) ;
 int kthread_stop (int *) ;
 int mlog (int ,char*) ;
 int mlog_entry_void () ;
 int mlog_errno (int) ;
 int mlog_exit (int) ;
 int ocfs2_cluster_connect (int ,int ,int ,int ,struct ocfs2_super*,struct ocfs2_cluster_connection**) ;
 int ocfs2_cluster_disconnect (struct ocfs2_cluster_connection*,int ) ;
 int ocfs2_cluster_this_node (scalar_t__*) ;
 int ocfs2_dlm_init_debug (struct ocfs2_super*) ;
 int ocfs2_dlm_shutdown_debug (struct ocfs2_super*) ;
 int ocfs2_do_node_down ;
 int ocfs2_downconvert_thread ;
 scalar_t__ ocfs2_mount_local (struct ocfs2_super*) ;
 int ocfs2_nfs_sync_lock_res_init (int *,struct ocfs2_super*) ;
 int ocfs2_orphan_scan_lock_res_init (int *,struct ocfs2_super*) ;
 int ocfs2_rename_lock_res_init (int *,struct ocfs2_super*) ;
 int ocfs2_super_lock_res_init (int *,struct ocfs2_super*) ;
 int strlen (int ) ;

int ocfs2_dlm_init(struct ocfs2_super *osb)
{
 int status = 0;
 struct ocfs2_cluster_connection *conn = ((void*)0);

 mlog_entry_void();

 if (ocfs2_mount_local(osb)) {
  osb->node_num = 0;
  goto local;
 }

 status = ocfs2_dlm_init_debug(osb);
 if (status < 0) {
  mlog_errno(status);
  goto bail;
 }


 osb->dc_task = kthread_run(ocfs2_downconvert_thread, osb, "ocfs2dc");
 if (IS_ERR(osb->dc_task)) {
  status = PTR_ERR(osb->dc_task);
  osb->dc_task = ((void*)0);
  mlog_errno(status);
  goto bail;
 }


 status = ocfs2_cluster_connect(osb->osb_cluster_stack,
           osb->uuid_str,
           strlen(osb->uuid_str),
           ocfs2_do_node_down, osb,
           &conn);
 if (status) {
  mlog_errno(status);
  goto bail;
 }

 status = ocfs2_cluster_this_node(&osb->node_num);
 if (status < 0) {
  mlog_errno(status);
  mlog(ML_ERROR,
       "could not find this host's node number\n");
  ocfs2_cluster_disconnect(conn, 0);
  goto bail;
 }

local:
 ocfs2_super_lock_res_init(&osb->osb_super_lockres, osb);
 ocfs2_rename_lock_res_init(&osb->osb_rename_lockres, osb);
 ocfs2_nfs_sync_lock_res_init(&osb->osb_nfs_sync_lockres, osb);
 ocfs2_orphan_scan_lock_res_init(&osb->osb_orphan_scan.os_lockres, osb);

 osb->cconn = conn;

 status = 0;
bail:
 if (status < 0) {
  ocfs2_dlm_shutdown_debug(osb);
  if (osb->dc_task)
   kthread_stop(osb->dc_task);
 }

 mlog_exit(status);
 return status;
}
