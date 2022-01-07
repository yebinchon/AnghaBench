
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_dev; } ;


 int MINOR (int ) ;
 int generic_shutdown_super (struct super_block*) ;
 int ida_remove (int *,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int unnamed_dev_ida ;
 int unnamed_dev_lock ;
 int unnamed_dev_start ;

void kill_anon_super(struct super_block *sb)
{
 int slot = MINOR(sb->s_dev);

 generic_shutdown_super(sb);
 spin_lock(&unnamed_dev_lock);
 ida_remove(&unnamed_dev_ida, slot);
 if (slot < unnamed_dev_start)
  unnamed_dev_start = slot;
 spin_unlock(&unnamed_dev_lock);
}
