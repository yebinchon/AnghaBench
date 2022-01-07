
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int data; } ;


 int DONT_WRITEBACK (int) ;
 int cvmx_fpa_free (int,int,int ) ;
 struct sk_buff* dev_alloc_skb (int) ;
 int pr_warning (char*,int) ;
 int skb_reserve (struct sk_buff*,int) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int cvm_oct_fill_hw_skbuff(int pool, int size, int elements)
{
 int freed = elements;
 while (freed) {

  struct sk_buff *skb = dev_alloc_skb(size + 128);
  if (unlikely(skb == ((void*)0))) {
   pr_warning
       ("Failed to allocate skb for hardware pool %d\n",
        pool);
   break;
  }

  skb_reserve(skb, 128 - (((unsigned long)skb->data) & 0x7f));
  *(struct sk_buff **)(skb->data - sizeof(void *)) = skb;
  cvmx_fpa_free(skb->data, pool, DONT_WRITEBACK(size / 128));
  freed--;
 }
 return elements - freed;
}
