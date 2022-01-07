
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audit_names {int should_free; unsigned long ino; unsigned char type; int list; } ;
struct audit_context {size_t name_count; int ino_count; int names_list; struct audit_names* preallocated_names; } ;


 size_t AUDIT_NAMES ;
 int GFP_NOFS ;
 struct audit_names* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int memset (struct audit_names*,int ,int) ;

__attribute__((used)) static struct audit_names *audit_alloc_name(struct audit_context *context,
      unsigned char type)
{
 struct audit_names *aname;

 if (context->name_count < AUDIT_NAMES) {
  aname = &context->preallocated_names[context->name_count];
  memset(aname, 0, sizeof(*aname));
 } else {
  aname = kzalloc(sizeof(*aname), GFP_NOFS);
  if (!aname)
   return ((void*)0);
  aname->should_free = 1;
 }

 aname->ino = (unsigned long)-1;
 aname->type = type;
 list_add_tail(&aname->list, &context->names_list);

 context->name_count++;



 return aname;
}
