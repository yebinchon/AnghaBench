
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
typedef scalar_t__ loff_t ;


 struct list_head* seq_list_start (struct list_head*,scalar_t__) ;

struct list_head *seq_list_start_head(struct list_head *head, loff_t pos)
{
 if (!pos)
  return head;

 return seq_list_start(head, pos - 1);
}
