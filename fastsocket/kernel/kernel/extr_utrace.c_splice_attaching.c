
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utrace {scalar_t__ pending_attach; int attached; int attaching; int lock; } ;


 int list_splice_tail_init (int *,int *) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static void splice_attaching(struct utrace *utrace)
{
 lockdep_assert_held(&utrace->lock);
 list_splice_tail_init(&utrace->attaching, &utrace->attached);
 utrace->pending_attach = 0;
}
