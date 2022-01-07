
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ name; } ;
typedef TYPE_1__ format_length_info ;


 int gcc_unreachable () ;
 scalar_t__ strchr (scalar_t__,int) ;

__attribute__((used)) static unsigned int
find_length_info_modifier_index (const format_length_info *fli, int c)
{
  unsigned i;

  for (i = 0; fli->name; i++, fli++)
    if (strchr (fli->name, c))
      return i;


  gcc_unreachable ();
}
