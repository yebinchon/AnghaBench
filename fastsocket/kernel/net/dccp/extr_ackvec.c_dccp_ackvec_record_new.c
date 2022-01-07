
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dccp_ackvec_record {int avr_node; } ;


 int GFP_ATOMIC ;
 int INIT_LIST_HEAD (int *) ;
 int dccp_ackvec_record_slab ;
 struct dccp_ackvec_record* kmem_cache_alloc (int ,int ) ;

__attribute__((used)) static struct dccp_ackvec_record *dccp_ackvec_record_new(void)
{
 struct dccp_ackvec_record *avr =
   kmem_cache_alloc(dccp_ackvec_record_slab, GFP_ATOMIC);

 if (avr != ((void*)0))
  INIT_LIST_HEAD(&avr->avr_node);

 return avr;
}
