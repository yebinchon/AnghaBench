
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct valkyrie_regvals {int* pitch; int vres; } ;


 struct valkyrie_regvals** valkyrie_reg_init ;

__attribute__((used)) static inline int valkyrie_vram_reqd(int video_mode, int color_mode)
{
 int pitch;
 struct valkyrie_regvals *init = valkyrie_reg_init[video_mode-1];

 if ((pitch = init->pitch[color_mode]) == 0)
  pitch = 2 * init->pitch[0];
 return init->vres * pitch;
}
