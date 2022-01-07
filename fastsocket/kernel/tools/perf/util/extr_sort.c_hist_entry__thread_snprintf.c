
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hist_entry {TYPE_1__* thread; } ;
struct TYPE_2__ {int pid; scalar_t__ comm; } ;


 int repsep_snprintf (char*,size_t,char*,unsigned int,char*,int ) ;

__attribute__((used)) static int hist_entry__thread_snprintf(struct hist_entry *self, char *bf,
           size_t size, unsigned int width)
{
 return repsep_snprintf(bf, size, "%*s:%5d", width,
         self->thread->comm ?: "", self->thread->pid);
}
