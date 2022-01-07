
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int lang_input_statement_type ;
typedef int bfd_boolean ;
struct TYPE_2__ {int (* unrecognized_file ) (int *) ;} ;


 int FALSE ;
 TYPE_1__* ld_emulation ;
 int stub1 (int *) ;

bfd_boolean
ldemul_unrecognized_file (lang_input_statement_type *entry)
{
  if (ld_emulation->unrecognized_file)
    return (*ld_emulation->unrecognized_file) (entry);
  return FALSE;
}
