
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwarf2_cu {int dummy; } ;
struct die_info {int dummy; } ;


 struct die_info* dwarf2_extension (struct die_info*,struct dwarf2_cu*) ;
 char* dwarf2_name (struct die_info*,struct dwarf2_cu*) ;

__attribute__((used)) static const char *
namespace_name (struct die_info *die, int *is_anonymous, struct dwarf2_cu *cu)
{
  struct die_info *current_die;
  const char *name = ((void*)0);



  for (current_die = die;
       current_die != ((void*)0);
       current_die = dwarf2_extension (die, cu))
    {
      name = dwarf2_name (current_die, cu);
      if (name != ((void*)0))
 break;
    }



  *is_anonymous = (name == ((void*)0));
  if (*is_anonymous)
    name = "(anonymous namespace)";

  return name;
}
