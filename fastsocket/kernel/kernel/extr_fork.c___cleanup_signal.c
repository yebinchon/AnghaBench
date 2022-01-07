
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct signal_struct {int tty; } ;


 int kmem_cache_free (int ,struct signal_struct*) ;
 int sched_autogroup_exit (struct signal_struct*) ;
 int signal_cachep ;
 int thread_group_cputime_free (struct signal_struct*) ;
 int tty_kref_put (int ) ;

void __cleanup_signal(struct signal_struct *sig)
{
 thread_group_cputime_free(sig);
 tty_kref_put(sig->tty);
 sched_autogroup_exit(sig);
 kmem_cache_free(signal_cachep, sig);
}
