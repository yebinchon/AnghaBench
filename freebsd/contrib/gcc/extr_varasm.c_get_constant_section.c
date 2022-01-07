
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int tree ;
typedef int section ;
struct TYPE_3__ {int * (* select_section ) (int ,int ,int ) ;} ;
struct TYPE_4__ {TYPE_1__ asm_out; } ;


 scalar_t__ IN_NAMED_SECTION (int ) ;
 int compute_reloc_for_constant (int ) ;
 int get_constant_alignment (int ) ;
 int * get_named_section (int ,int *,int ) ;
 int * stub1 (int ,int ,int ) ;
 TYPE_2__ targetm ;

__attribute__((used)) static section *
get_constant_section (tree exp)
{
  if (IN_NAMED_SECTION (exp))
    return get_named_section (exp, ((void*)0), compute_reloc_for_constant (exp));
  else
    return targetm.asm_out.select_section (exp,
        compute_reloc_for_constant (exp),
        get_constant_alignment (exp));
}
