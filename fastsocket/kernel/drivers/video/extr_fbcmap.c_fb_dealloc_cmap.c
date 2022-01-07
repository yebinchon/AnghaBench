
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_cmap {scalar_t__ len; int * transp; int * blue; int * green; int * red; } ;


 int kfree (int *) ;

void fb_dealloc_cmap(struct fb_cmap *cmap)
{
 kfree(cmap->red);
 kfree(cmap->green);
 kfree(cmap->blue);
 kfree(cmap->transp);

 cmap->red = cmap->green = cmap->blue = cmap->transp = ((void*)0);
 cmap->len = 0;
}
