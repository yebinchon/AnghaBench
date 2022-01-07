
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int lang_input_statement_type ;
struct TYPE_2__ {int (* find_potential_libraries ) (char*,int *) ;} ;


 TYPE_1__* ld_emulation ;
 int stub1 (char*,int *) ;

int
ldemul_find_potential_libraries (char *name, lang_input_statement_type *entry)
{
  if (ld_emulation->find_potential_libraries)
    return ld_emulation->find_potential_libraries (name, entry);

  return 0;
}
