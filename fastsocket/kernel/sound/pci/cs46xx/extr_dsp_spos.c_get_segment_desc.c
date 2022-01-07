
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsp_segment_desc {int segment_type; } ;
struct dsp_module_desc {int nsegments; struct dsp_segment_desc* segments; } ;



__attribute__((used)) static struct dsp_segment_desc * get_segment_desc (struct dsp_module_desc * module, int seg_type)
{
 int i;
 for (i = 0;i < module->nsegments; ++i) {
  if (module->segments[i].segment_type == seg_type) {
   return (module->segments + i);
  }
 }

 return ((void*)0);
}
