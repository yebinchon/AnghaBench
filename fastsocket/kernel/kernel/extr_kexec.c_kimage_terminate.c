
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kimage {scalar_t__* entry; } ;


 scalar_t__ IND_DONE ;

__attribute__((used)) static void kimage_terminate(struct kimage *image)
{
 if (*image->entry != 0)
  image->entry++;

 *image->entry = IND_DONE;
}
