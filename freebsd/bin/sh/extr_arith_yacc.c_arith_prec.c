
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARITH_BINOP_MIN ;
 int* prec ;

__attribute__((used)) static inline int arith_prec(int op)
{
 return prec[op - ARITH_BINOP_MIN];
}
