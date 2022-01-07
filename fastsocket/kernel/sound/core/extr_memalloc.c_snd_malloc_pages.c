
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gfp_t ;


 scalar_t__ WARN_ON (int) ;
 int __GFP_COMP ;
 scalar_t__ __get_free_pages (int ,int) ;
 int get_order (size_t) ;
 int inc_snd_pages (int) ;

void *snd_malloc_pages(size_t size, gfp_t gfp_flags)
{
 int pg;
 void *res;

 if (WARN_ON(!size))
  return ((void*)0);
 if (WARN_ON(!gfp_flags))
  return ((void*)0);
 gfp_flags |= __GFP_COMP;
 pg = get_order(size);
 if ((res = (void *) __get_free_pages(gfp_flags, pg)) != ((void*)0))
  inc_snd_pages(pg);
 return res;
}
