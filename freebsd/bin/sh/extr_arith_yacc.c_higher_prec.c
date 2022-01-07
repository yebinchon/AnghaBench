
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ arith_prec (int) ;

__attribute__((used)) static inline int higher_prec(int op1, int op2)
{
 return arith_prec(op1) < arith_prec(op2);
}
