
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* name; } ;


 TYPE_1__* get_output_file_with_visibility (char const*) ;

const char *
get_output_file_name (const char *input_file)
{
  return get_output_file_with_visibility (input_file)->name;
}
