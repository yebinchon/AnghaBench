
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VEC_length (int ,int ) ;
 int current_lang_base ;
 int tree ;

int
current_lang_depth (void)
{
  return VEC_length (tree, current_lang_base);
}
