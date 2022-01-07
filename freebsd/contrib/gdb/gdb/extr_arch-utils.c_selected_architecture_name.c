
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* set_architecture_string ;
 scalar_t__ target_architecture_auto ;

const char *
selected_architecture_name (void)
{
  if (target_architecture_auto)
    return ((void*)0);
  else
    return set_architecture_string;
}
