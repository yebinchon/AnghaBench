
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ tree ;
typedef int section ;
struct TYPE_3__ {int * (* select_section ) (scalar_t__,int,int ) ;} ;
struct TYPE_4__ {TYPE_1__ asm_out; } ;


 int DECL_ALIGN (scalar_t__) ;
 scalar_t__ DECL_SECTION_NAME (scalar_t__) ;
 scalar_t__ NULL_TREE ;
 scalar_t__ first_function_block_is_cold ;
 int * get_named_section (scalar_t__,int *,int ) ;
 int * hot_function_section (scalar_t__) ;
 int * stub1 (scalar_t__,int,int ) ;
 TYPE_2__ targetm ;
 int * unlikely_text_section () ;

section *
function_section (tree decl)
{
  int reloc = 0;

  if (first_function_block_is_cold)
    reloc = 1;
  return reloc ? unlikely_text_section () : hot_function_section (decl);

}
