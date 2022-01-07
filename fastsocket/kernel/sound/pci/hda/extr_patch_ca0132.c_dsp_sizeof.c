
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dsp_image_seg {int count; } ;



__attribute__((used)) static size_t dsp_sizeof(const struct dsp_image_seg *p)
{
 return sizeof(*p) + p->count*sizeof(u32);
}
