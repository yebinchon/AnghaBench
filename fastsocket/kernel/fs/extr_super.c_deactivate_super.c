
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_umount; int s_active; struct file_system_type* s_type; } ;
struct file_system_type {int (* kill_sb ) (struct super_block*) ;} ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int down_write (int *) ;
 int put_filesystem (struct file_system_type*) ;
 int put_super (struct super_block*) ;
 int stub1 (struct super_block*) ;
 int vfs_dq_off (struct super_block*,int ) ;

void deactivate_super(struct super_block *s)
{
 struct file_system_type *fs = s->s_type;
 if (atomic_dec_and_test(&s->s_active)) {
  vfs_dq_off(s, 0);
  down_write(&s->s_umount);
  fs->kill_sb(s);
  put_filesystem(fs);
  put_super(s);
 }
}
