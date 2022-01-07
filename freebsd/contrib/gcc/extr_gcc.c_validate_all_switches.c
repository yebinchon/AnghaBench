
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spec_list {scalar_t__* ptr_spec; struct spec_list* next; } ;
struct compiler {scalar_t__ spec; } ;


 struct compiler* compilers ;
 scalar_t__ link_command_spec ;
 struct spec_list* specs ;
 int validate_switches_from_spec (scalar_t__) ;

__attribute__((used)) static void
validate_all_switches (void)
{
  struct compiler *comp;
  struct spec_list *spec;

  for (comp = compilers; comp->spec; comp++)
    validate_switches_from_spec (comp->spec);


  for (spec = specs; spec; spec = spec->next)
    validate_switches_from_spec (*spec->ptr_spec);

  validate_switches_from_spec (link_command_spec);
}
