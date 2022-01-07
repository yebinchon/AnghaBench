
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int (* walk_wild_section_handler ) (TYPE_1__*,TYPE_2__*,int ,void*) ;} ;
typedef TYPE_1__ lang_wild_statement_type ;
struct TYPE_8__ {scalar_t__ just_syms_flag; } ;
typedef TYPE_2__ lang_input_statement_type ;
typedef int callback_t ;


 int stub1 (TYPE_1__*,TYPE_2__*,int ,void*) ;

__attribute__((used)) static void
walk_wild_section (lang_wild_statement_type *ptr,
     lang_input_statement_type *file,
     callback_t callback,
     void *data)
{
  if (file->just_syms_flag)
    return;

  (*ptr->walk_wild_section_handler) (ptr, file, callback, data);
}
