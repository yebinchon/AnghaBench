
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slob_page {int dummy; } ;


 scalar_t__ virt_to_page (void const*) ;

__attribute__((used)) static inline struct slob_page *slob_page(const void *addr)
{
 return (struct slob_page *)virt_to_page(addr);
}
