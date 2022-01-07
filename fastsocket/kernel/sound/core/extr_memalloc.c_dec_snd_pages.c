
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int snd_allocated_pages ;

__attribute__((used)) static inline void dec_snd_pages(int order)
{
 snd_allocated_pages -= 1 << order;
}
