
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fibnode {void* data; int key; } ;
typedef int fibnode_t ;
typedef int fibheapkey_t ;
typedef int fibheap_t ;


 int fibheap_compare (int ,struct fibnode*,int ) ;

__attribute__((used)) static inline int
fibheap_comp_data (fibheap_t heap, fibheapkey_t key, void *data, fibnode_t b)
{
  struct fibnode a;

  a.key = key;
  a.data = data;

  return fibheap_compare (heap, &a, b);
}
