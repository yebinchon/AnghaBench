
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dec_snd_pages (int) ;
 int free_pages (unsigned long,int) ;
 int get_order (size_t) ;

void snd_free_pages(void *ptr, size_t size)
{
 int pg;

 if (ptr == ((void*)0))
  return;
 pg = get_order(size);
 dec_snd_pages(pg);
 free_pages((unsigned long) ptr, pg);
}
