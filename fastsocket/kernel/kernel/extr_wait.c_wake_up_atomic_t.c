
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atomic_t ;


 int WAIT_ATOMIC_T_BIT_NR ;
 int __wake_up_bit (int ,int *,int ) ;
 int atomic_t_waitqueue (int *) ;

void wake_up_atomic_t(atomic_t *p)
{
 __wake_up_bit(atomic_t_waitqueue(p), p, WAIT_ATOMIC_T_BIT_NR);
}
