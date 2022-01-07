
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct fb_cmap {int len; scalar_t__ start; int * transp; void* blue; void* green; void* red; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int fb_copy_cmap (int ,struct fb_cmap*) ;
 int fb_dealloc_cmap (struct fb_cmap*) ;
 int fb_default_cmap (int) ;
 void* kmalloc (int,int ) ;

int fb_alloc_cmap(struct fb_cmap *cmap, int len, int transp)
{
    int size = len*sizeof(u16);

    if (cmap->len != len) {
 fb_dealloc_cmap(cmap);
 if (!len)
     return 0;
 if (!(cmap->red = kmalloc(size, GFP_ATOMIC)))
     goto fail;
 if (!(cmap->green = kmalloc(size, GFP_ATOMIC)))
     goto fail;
 if (!(cmap->blue = kmalloc(size, GFP_ATOMIC)))
     goto fail;
 if (transp) {
     if (!(cmap->transp = kmalloc(size, GFP_ATOMIC)))
  goto fail;
 } else
     cmap->transp = ((void*)0);
    }
    cmap->start = 0;
    cmap->len = len;
    fb_copy_cmap(fb_default_cmap(len), cmap);
    return 0;

fail:
    fb_dealloc_cmap(cmap);
    return -ENOMEM;
}
