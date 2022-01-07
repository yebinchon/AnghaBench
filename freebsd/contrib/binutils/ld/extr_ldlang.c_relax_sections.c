
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ bfd_boolean ;
struct TYPE_2__ {int relax_trip; } ;


 scalar_t__ FALSE ;
 int lang_do_assignments () ;
 int lang_reset_memory_regions () ;
 int lang_size_sections (scalar_t__*,scalar_t__) ;
 TYPE_1__ link_info ;

__attribute__((used)) static void
relax_sections (void)
{

  bfd_boolean relax_again;

  link_info.relax_trip = -1;
  do
    {
      relax_again = FALSE;
      link_info.relax_trip++;







      lang_do_assignments ();



      lang_reset_memory_regions ();



      lang_size_sections (&relax_again, FALSE);
    }
  while (relax_again);
}
