
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int osb_debug_root; struct ocfs2_dlm_debug* osb_dlm_debug; } ;
struct ocfs2_dlm_debug {int d_locking_state; } ;


 int EINVAL ;
 int ML_ERROR ;
 int S_IFREG ;
 int S_IRUSR ;
 int debugfs_create_file (char*,int,int ,struct ocfs2_super*,int *) ;
 int mlog (int ,char*) ;
 int ocfs2_dlm_debug_fops ;
 int ocfs2_get_dlm_debug (struct ocfs2_dlm_debug*) ;

__attribute__((used)) static int ocfs2_dlm_init_debug(struct ocfs2_super *osb)
{
 int ret = 0;
 struct ocfs2_dlm_debug *dlm_debug = osb->osb_dlm_debug;

 dlm_debug->d_locking_state = debugfs_create_file("locking_state",
        S_IFREG|S_IRUSR,
        osb->osb_debug_root,
        osb,
        &ocfs2_dlm_debug_fops);
 if (!dlm_debug->d_locking_state) {
  ret = -EINVAL;
  mlog(ML_ERROR,
       "Unable to create locking state debugfs file.\n");
  goto out;
 }

 ocfs2_get_dlm_debug(dlm_debug);
out:
 return ret;
}
