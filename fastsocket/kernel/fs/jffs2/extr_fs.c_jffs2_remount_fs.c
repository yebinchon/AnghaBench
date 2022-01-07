
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_flags; } ;
struct jffs2_sb_info {int flags; int alloc_sem; } ;


 int EROFS ;
 int JFFS2_SB_FLAG_RO ;
 struct jffs2_sb_info* JFFS2_SB_INFO (struct super_block*) ;
 int MS_NOATIME ;
 int MS_RDONLY ;
 int jffs2_flush_wbuf_pad (struct jffs2_sb_info*) ;
 int jffs2_start_garbage_collect_thread (struct jffs2_sb_info*) ;
 int jffs2_stop_garbage_collect_thread (struct jffs2_sb_info*) ;
 int lock_kernel () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int unlock_kernel () ;

int jffs2_remount_fs (struct super_block *sb, int *flags, char *data)
{
 struct jffs2_sb_info *c = JFFS2_SB_INFO(sb);

 if (c->flags & JFFS2_SB_FLAG_RO && !(sb->s_flags & MS_RDONLY))
  return -EROFS;





 lock_kernel();
 if (!(sb->s_flags & MS_RDONLY)) {
  jffs2_stop_garbage_collect_thread(c);
  mutex_lock(&c->alloc_sem);
  jffs2_flush_wbuf_pad(c);
  mutex_unlock(&c->alloc_sem);
 }

 if (!(*flags & MS_RDONLY))
  jffs2_start_garbage_collect_thread(c);

 *flags |= MS_NOATIME;

 unlock_kernel();
 return 0;
}
