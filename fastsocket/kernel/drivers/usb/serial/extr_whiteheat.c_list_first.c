
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {struct list_head* next; } ;



__attribute__((used)) static struct list_head *list_first(struct list_head *head)
{
 return head->next;
}
