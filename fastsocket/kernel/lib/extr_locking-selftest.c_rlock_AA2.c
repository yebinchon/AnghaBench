
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RL (int ) ;
 int WL (int ) ;
 int X1 ;
 int X2 ;

__attribute__((used)) static void rlock_AA2(void)
{
 RL(X1);
 WL(X2);
}
