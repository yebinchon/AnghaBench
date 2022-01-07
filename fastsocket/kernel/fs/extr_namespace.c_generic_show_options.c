
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vfsmount {TYPE_1__* mnt_sb; } ;
struct seq_file {int dummy; } ;
struct TYPE_2__ {int s_options; } ;


 int mangle (struct seq_file*,char const*) ;
 char* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int seq_putc (struct seq_file*,char) ;

int generic_show_options(struct seq_file *m, struct vfsmount *mnt)
{
 const char *options;

 rcu_read_lock();
 options = rcu_dereference(mnt->mnt_sb->s_options);

 if (options != ((void*)0) && options[0]) {
  seq_putc(m, ',');
  mangle(m, options);
 }
 rcu_read_unlock();

 return 0;
}
