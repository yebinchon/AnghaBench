
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct printk_list {unsigned long long addr; int printk; struct printk_list* next; } ;
struct pevent {int printk_count; struct printk_list* printklist; } ;


 int ENOMEM ;
 int errno ;
 int free (struct printk_list*) ;
 struct printk_list* malloc (int) ;
 int strdup (char*) ;

int pevent_register_print_string(struct pevent *pevent, char *fmt,
     unsigned long long addr)
{
 struct printk_list *item = malloc(sizeof(*item));

 if (!item)
  return -1;

 item->next = pevent->printklist;
 item->addr = addr;

 item->printk = strdup(fmt);
 if (!item->printk)
  goto out_free;

 pevent->printklist = item;
 pevent->printk_count++;

 return 0;

out_free:
 free(item);
 errno = ENOMEM;
 return -1;
}
