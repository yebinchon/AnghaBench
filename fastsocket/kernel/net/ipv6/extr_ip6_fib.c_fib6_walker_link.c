
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fib6_walker_t {struct fib6_walker_t* next; struct fib6_walker_t* prev; } ;


 struct fib6_walker_t fib6_walker_list ;
 int fib6_walker_lock ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static inline void fib6_walker_link(struct fib6_walker_t *w)
{
 write_lock_bh(&fib6_walker_lock);
 w->next = fib6_walker_list.next;
 w->prev = &fib6_walker_list;
 w->next->prev = w;
 w->prev->next = w;
 write_unlock_bh(&fib6_walker_lock);
}
