
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fu_rcuhead; } ;
struct file {TYPE_1__ f_u; } ;


 int call_rcu (int *,int ) ;
 int file_check_state (struct file*) ;
 int file_free_rcu ;
 int nr_files ;
 int percpu_counter_dec (int *) ;

__attribute__((used)) static inline void file_free(struct file *f)
{
 percpu_counter_dec(&nr_files);
 file_check_state(f);
 call_rcu(&f->f_u.fu_rcuhead, file_free_rcu);
}
