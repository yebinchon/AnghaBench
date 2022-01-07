
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int section ;
struct TYPE_3__ {int * (* select_section ) (scalar_t__,scalar_t__,int ) ;} ;
struct TYPE_4__ {TYPE_1__ asm_out; } ;


 int DECL_ALIGN (scalar_t__) ;
 scalar_t__ DECL_SECTION_NAME (scalar_t__) ;
 scalar_t__ NULL_TREE ;
 scalar_t__ current_function_decl ;
 int * get_named_section (scalar_t__,int *,int ) ;
 int * hot_function_section (scalar_t__) ;
 scalar_t__ in_cold_section_p ;
 int * stub1 (scalar_t__,scalar_t__,int ) ;
 TYPE_2__ targetm ;
 int * unlikely_text_section () ;

section *
current_function_section (void)
{
  return (in_cold_section_p
   ? unlikely_text_section ()
   : hot_function_section (current_function_decl));

}
