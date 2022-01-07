
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct seq_file {int dummy; } ;
typedef scalar_t__ loff_t ;
struct TYPE_3__ {void* next; } ;


 scalar_t__ SEQ_READ_FINISHED ;
 scalar_t__ list_empty (TYPE_1__*) ;
 TYPE_1__ smk_netlbladdr_list ;

__attribute__((used)) static void *netlbladdr_seq_start(struct seq_file *s, loff_t *pos)
{
 if (*pos == SEQ_READ_FINISHED)
  return ((void*)0);
 if (list_empty(&smk_netlbladdr_list))
  return ((void*)0);
 return smk_netlbladdr_list.next;
}
