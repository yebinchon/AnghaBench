
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct breakpoint {int addr_string; TYPE_1__* loc; } ;
struct TYPE_2__ {int address; } ;
typedef int CORE_ADDR ;


 scalar_t__ addressprint ;
 int annotate_field (int) ;
 int * strstr (int ,char*) ;
 int ui_out_field_core_addr (int ,char*,int ) ;
 int ui_out_field_string (int ,char*,char*) ;
 int uiout ;

__attribute__((used)) static void
print_one_exception_catchpoint (struct breakpoint *b, CORE_ADDR *last_addr)
{
  if (addressprint)
    {
      annotate_field (4);
      ui_out_field_core_addr (uiout, "addr", b->loc->address);
    }
  annotate_field (5);
  *last_addr = b->loc->address;
  if (strstr (b->addr_string, "throw") != ((void*)0))
    ui_out_field_string (uiout, "what", "exception throw");
  else
    ui_out_field_string (uiout, "what", "exception catch");
}
