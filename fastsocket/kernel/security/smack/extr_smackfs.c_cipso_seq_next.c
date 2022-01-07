
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct list_head {void* next; } ;
typedef int loff_t ;


 int SEQ_READ_FINISHED ;
 scalar_t__ list_is_last (struct list_head*,int *) ;
 int smack_known_list ;

__attribute__((used)) static void *cipso_seq_next(struct seq_file *s, void *v, loff_t *pos)
{
 struct list_head *list = v;





 if (list_is_last(list, &smack_known_list)) {
  *pos = SEQ_READ_FINISHED;
  return ((void*)0);
 }

 return list->next;
}
