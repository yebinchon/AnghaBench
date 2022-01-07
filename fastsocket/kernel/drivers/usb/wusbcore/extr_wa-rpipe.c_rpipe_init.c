
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wa_rpipe {int seg_list; int seg_lock; int refcnt; } ;


 int INIT_LIST_HEAD (int *) ;
 int kref_init (int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void rpipe_init(struct wa_rpipe *rpipe)
{
 kref_init(&rpipe->refcnt);
 spin_lock_init(&rpipe->seg_lock);
 INIT_LIST_HEAD(&rpipe->seg_list);
}
