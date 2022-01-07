
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tracepoint_entry {int hlist; } ;


 int hlist_del (int *) ;
 int kfree (struct tracepoint_entry*) ;

__attribute__((used)) static inline void remove_tracepoint(struct tracepoint_entry *e)
{
 hlist_del(&e->hlist);
 kfree(e);
}
