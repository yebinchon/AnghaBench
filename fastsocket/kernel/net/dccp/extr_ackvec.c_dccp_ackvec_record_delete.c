
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dccp_ackvec_record {int avr_node; } ;


 int WARN_ON (int) ;
 int dccp_ackvec_record_slab ;
 int kmem_cache_free (int ,struct dccp_ackvec_record*) ;
 int list_empty (int *) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void dccp_ackvec_record_delete(struct dccp_ackvec_record *avr)
{
 if (unlikely(avr == ((void*)0)))
  return;

 WARN_ON(!list_empty(&avr->avr_node));
 kmem_cache_free(dccp_ackvec_record_slab, avr);
}
