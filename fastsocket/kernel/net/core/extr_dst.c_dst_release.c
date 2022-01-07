
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dst_entry {int __refcnt; } ;


 int WARN_ON (int) ;
 int atomic_dec_return (int *) ;
 int smp_mb__before_atomic_dec () ;

void dst_release(struct dst_entry *dst)
{
 if (dst) {
               int newrefcnt;

  smp_mb__before_atomic_dec();
               newrefcnt = atomic_dec_return(&dst->__refcnt);

               WARN_ON(newrefcnt < 0);
 }
}
