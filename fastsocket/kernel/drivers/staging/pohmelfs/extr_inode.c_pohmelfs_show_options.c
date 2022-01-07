
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int mnt_sb; } ;
struct seq_file {int dummy; } ;
struct pohmelfs_sb {scalar_t__ crypto_fail_unsupported; int mcache_timeout; int trans_max_pages; int crypto_thread_num; int trans_retries; int wait_on_page_timeout; int drop_scan_timeout; int trans_scan_timeout; int idx; } ;


 struct pohmelfs_sb* POHMELFS_SB (int ) ;
 int jiffies_to_msecs (int ) ;
 int seq_printf (struct seq_file*,char*,...) ;

__attribute__((used)) static int pohmelfs_show_options(struct seq_file *seq, struct vfsmount *vfs)
{
 struct pohmelfs_sb *psb = POHMELFS_SB(vfs->mnt_sb);

 seq_printf(seq, ",idx=%u", psb->idx);
 seq_printf(seq, ",trans_scan_timeout=%u", jiffies_to_msecs(psb->trans_scan_timeout));
 seq_printf(seq, ",drop_scan_timeout=%u", jiffies_to_msecs(psb->drop_scan_timeout));
 seq_printf(seq, ",wait_on_page_timeout=%u", jiffies_to_msecs(psb->wait_on_page_timeout));
 seq_printf(seq, ",trans_retries=%u", psb->trans_retries);
 seq_printf(seq, ",crypto_thread_num=%u", psb->crypto_thread_num);
 seq_printf(seq, ",trans_max_pages=%u", psb->trans_max_pages);
 seq_printf(seq, ",mcache_timeout=%u", jiffies_to_msecs(psb->mcache_timeout));
 if (psb->crypto_fail_unsupported)
  seq_printf(seq, ",crypto_fail_unsupported");

 return 0;
}
