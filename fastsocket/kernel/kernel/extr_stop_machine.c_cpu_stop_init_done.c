
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpu_stop_done {int completion; int nr_todo; } ;


 int atomic_set (int *,unsigned int) ;
 int init_completion (int *) ;
 int memset (struct cpu_stop_done*,int ,int) ;

__attribute__((used)) static void cpu_stop_init_done(struct cpu_stop_done *done, unsigned int nr_todo)
{
 memset(done, 0, sizeof(*done));
 atomic_set(&done->nr_todo, nr_todo);
 init_completion(&done->completion);
}
