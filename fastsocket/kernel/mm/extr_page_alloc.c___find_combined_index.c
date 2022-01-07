
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned long
__find_combined_index(unsigned long page_idx, unsigned int order)
{
 return (page_idx & ~(1 << order));
}
