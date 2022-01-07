
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fibheap {int dummy; } ;
typedef int fibheap_t ;


 int xcalloc (int,int) ;

fibheap_t
fibheap_new (void)
{
  return (fibheap_t) xcalloc (1, sizeof (struct fibheap));
}
