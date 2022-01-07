
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PAGE_SIZE ;

__attribute__((used)) static inline void do_copy_page(long *dst, long *src)
{
 int n;

 for (n = PAGE_SIZE / sizeof(long); n; n--)
  *dst++ = *src++;
}
