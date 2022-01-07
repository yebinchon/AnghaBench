
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct ocfs2_lock_res {scalar_t__ l_type; int l_lksb; int l_blocking; int l_requested; int l_ex_holders; int l_ro_holders; int l_unlock_action; int l_action; int l_flags; int l_level; int l_name; } ;


 int DLM_LVB_LEN ;
 int EINVAL ;
 scalar_t__ OCFS2_DENTRY_LOCK_INO_START ;
 int OCFS2_DLM_DEBUG_STR_VERSION ;
 int OCFS2_LOCK_ID_MAX_LEN ;
 scalar_t__ OCFS2_LOCK_TYPE_DENTRY ;
 int lock_max_exmode (struct ocfs2_lock_res*) ;
 int lock_max_prmode (struct ocfs2_lock_res*) ;
 int lock_num_exmode (struct ocfs2_lock_res*) ;
 int lock_num_exmode_failed (struct ocfs2_lock_res*) ;
 int lock_num_prmode (struct ocfs2_lock_res*) ;
 int lock_num_prmode_failed (struct ocfs2_lock_res*) ;
 int lock_refresh (struct ocfs2_lock_res*) ;
 int lock_total_exmode (struct ocfs2_lock_res*) ;
 int lock_total_prmode (struct ocfs2_lock_res*) ;
 char* ocfs2_dlm_lvb (int *) ;
 scalar_t__ ocfs2_get_dentry_lock_ino (struct ocfs2_lock_res*) ;
 int seq_printf (struct seq_file*,char*,...) ;

__attribute__((used)) static int ocfs2_dlm_seq_show(struct seq_file *m, void *v)
{
 int i;
 char *lvb;
 struct ocfs2_lock_res *lockres = v;

 if (!lockres)
  return -EINVAL;

 seq_printf(m, "0x%x\t", OCFS2_DLM_DEBUG_STR_VERSION);

 if (lockres->l_type == OCFS2_LOCK_TYPE_DENTRY)
  seq_printf(m, "%.*s%08x\t", OCFS2_DENTRY_LOCK_INO_START - 1,
      lockres->l_name,
      (unsigned int)ocfs2_get_dentry_lock_ino(lockres));
 else
  seq_printf(m, "%.*s\t", OCFS2_LOCK_ID_MAX_LEN, lockres->l_name);

 seq_printf(m, "%d\t"
     "0x%lx\t"
     "0x%x\t"
     "0x%x\t"
     "%u\t"
     "%u\t"
     "%d\t"
     "%d\t",
     lockres->l_level,
     lockres->l_flags,
     lockres->l_action,
     lockres->l_unlock_action,
     lockres->l_ro_holders,
     lockres->l_ex_holders,
     lockres->l_requested,
     lockres->l_blocking);


 lvb = ocfs2_dlm_lvb(&lockres->l_lksb);
 for(i = 0; i < DLM_LVB_LEN; i++)
  seq_printf(m, "0x%x\t", lvb[i]);
 seq_printf(m, "%llu\t"
     "%llu\t"
     "%u\t"
     "%u\t"
     "%llu\t"
     "%llu\t"
     "%u\t"
     "%u\t"
     "%u\t",
     (0ULL),
     (0ULL),
     (0),
     (0),
     (0ULL),
     (0ULL),
     (0),
     (0),
     (0));


 seq_printf(m, "\n");
 return 0;
}
