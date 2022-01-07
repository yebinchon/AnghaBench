
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct conditional_frame {int macro_nest; struct conditional_frame* previous_cframe; } ;


 int cond_obstack ;
 struct conditional_frame* current_cframe ;
 int obstack_free (int *,struct conditional_frame*) ;

void
cond_exit_macro (int nest)
{
  while (current_cframe != ((void*)0) && current_cframe->macro_nest >= nest)
    {
      struct conditional_frame *hold;

      hold = current_cframe;
      current_cframe = current_cframe->previous_cframe;
      obstack_free (&cond_obstack, hold);
    }
}
