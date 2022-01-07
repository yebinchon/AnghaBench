
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int A ;
 int B ;
 int C ;
 int D ;
 int I1 (int ) ;
 int I2 (int ) ;
 int X1 ;
 int X2 ;
 int Y1 ;
 int Y2 ;
 int Z1 ;
 int Z2 ;
 int init_shared_classes () ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 int lockdep_reset () ;

__attribute__((used)) static void reset_locks(void)
{
 local_irq_disable();
 I1(A); I1(B); I1(C); I1(D);
 I1(X1); I1(X2); I1(Y1); I1(Y2); I1(Z1); I1(Z2);
 lockdep_reset();
 I2(A); I2(B); I2(C); I2(D);
 init_shared_classes();
 local_irq_enable();
}
