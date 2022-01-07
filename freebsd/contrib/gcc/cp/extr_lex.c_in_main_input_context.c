
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 int LOCATION_FILE (int ) ;
 int TINST_LOCATION (scalar_t__) ;
 int input_filename ;
 int main_input_filename ;
 scalar_t__ outermost_tinst_level () ;
 scalar_t__ strcmp (int ,int ) ;

bool
in_main_input_context (void)
{
  tree tl = outermost_tinst_level();

  if (tl)
    return strcmp (main_input_filename,
     LOCATION_FILE (TINST_LOCATION (tl))) == 0;
  else
    return strcmp (main_input_filename, input_filename) == 0;
}
