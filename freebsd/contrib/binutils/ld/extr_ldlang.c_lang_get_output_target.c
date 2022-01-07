
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ current_target ;
 scalar_t__ default_target ;
 char* get_first_input_target () ;
 char const* output_target ;

const char *
lang_get_output_target (void)
{
  const char *target;


  if (output_target != ((void*)0))
    return output_target;



  if (current_target != default_target)
    return current_target;


  target = get_first_input_target ();
  if (target != ((void*)0))
    return target;


  return default_target;
}
