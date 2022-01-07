
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wa_rpipe {int refcnt; } ;


 int kref_get (int *) ;

__attribute__((used)) static inline
void __rpipe_get(struct wa_rpipe *rpipe)
{
 kref_get(&rpipe->refcnt);
}
