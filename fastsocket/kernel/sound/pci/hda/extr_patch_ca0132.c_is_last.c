
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsp_image_seg {scalar_t__ count; } ;



__attribute__((used)) static bool is_last(const struct dsp_image_seg *p)
{
 return p->count == 0;
}
