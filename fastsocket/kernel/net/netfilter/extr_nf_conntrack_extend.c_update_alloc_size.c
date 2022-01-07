
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_ct_ext_type {int flags; int id; int alloc_size; int len; int align; } ;
struct nf_ct_ext {int dummy; } ;
typedef enum nf_ct_ext_id { ____Placeholder_nf_ct_ext_id } nf_ct_ext_id ;


 int ALIGN (int,int ) ;
 int NF_CT_EXT_F_PREALLOC ;
 int NF_CT_EXT_NUM ;
 struct nf_ct_ext_type** nf_ct_ext_types ;

__attribute__((used)) static void update_alloc_size(struct nf_ct_ext_type *type)
{
 int i, j;
 struct nf_ct_ext_type *t1, *t2;
 enum nf_ct_ext_id min = 0, max = NF_CT_EXT_NUM - 1;


 if ((type->flags & NF_CT_EXT_F_PREALLOC) == 0) {
  min = type->id;
  max = type->id;
 }



 for (i = min; i <= max; i++) {
  t1 = nf_ct_ext_types[i];
  if (!t1)
   continue;

  t1->alloc_size = sizeof(struct nf_ct_ext)
     + ALIGN(sizeof(struct nf_ct_ext), t1->align)
     + t1->len;
  for (j = 0; j < NF_CT_EXT_NUM; j++) {
   t2 = nf_ct_ext_types[j];
   if (t2 == ((void*)0) || t2 == t1 ||
       (t2->flags & NF_CT_EXT_F_PREALLOC) == 0)
    continue;

   t1->alloc_size = ALIGN(t1->alloc_size, t2->align)
      + t2->len;
  }
 }
}
