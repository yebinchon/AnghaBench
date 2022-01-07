
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int set_vma_operand; int get_vma_operand; int set_int_operand; int get_int_operand; int extract_operand; int insert_operand; int * extract_handlers; int * insert_handlers; } ;
typedef TYPE_1__* CGEN_CPU_DESC ;


 int * mep_cgen_extract_handlers ;
 int mep_cgen_extract_operand ;
 int mep_cgen_get_int_operand ;
 int mep_cgen_get_vma_operand ;
 int * mep_cgen_insert_handlers ;
 int mep_cgen_insert_operand ;
 int mep_cgen_set_int_operand ;
 int mep_cgen_set_vma_operand ;

void
mep_cgen_init_ibld_table (CGEN_CPU_DESC cd)
{
  cd->insert_handlers = & mep_cgen_insert_handlers[0];
  cd->extract_handlers = & mep_cgen_extract_handlers[0];

  cd->insert_operand = mep_cgen_insert_operand;
  cd->extract_operand = mep_cgen_extract_operand;

  cd->get_int_operand = mep_cgen_get_int_operand;
  cd->set_int_operand = mep_cgen_set_int_operand;
  cd->get_vma_operand = mep_cgen_get_vma_operand;
  cd->set_vma_operand = mep_cgen_set_vma_operand;
}
