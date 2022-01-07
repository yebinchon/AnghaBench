
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VEC_pop (int ,int ) ;
 int current_lang_base ;
 int current_lang_name ;
 int tree ;

void
pop_lang_context (void)
{
  current_lang_name = VEC_pop (tree, current_lang_base);
}
