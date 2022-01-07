
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_queue_entry {int list; } ;


 int list_add_tail (int *,int *) ;
 int queue_list ;
 int queue_total ;

__attribute__((used)) static inline void
__ipq_enqueue_entry(struct nf_queue_entry *entry)
{
       list_add_tail(&entry->list, &queue_list);
       queue_total++;
}
