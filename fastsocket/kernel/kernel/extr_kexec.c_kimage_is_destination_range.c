
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kimage {unsigned long nr_segments; TYPE_1__* segment; } ;
struct TYPE_2__ {unsigned long mem; unsigned long memsz; } ;



__attribute__((used)) static int kimage_is_destination_range(struct kimage *image,
     unsigned long start,
     unsigned long end)
{
 unsigned long i;

 for (i = 0; i < image->nr_segments; i++) {
  unsigned long mstart, mend;

  mstart = image->segment[i].mem;
  mend = mstart + image->segment[i].memsz;
  if ((end > mstart) && (start < mend))
   return 1;
 }

 return 0;
}
