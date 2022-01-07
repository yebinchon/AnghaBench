
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jffs2_raw_node_ref {scalar_t__ flash_offset; struct jffs2_raw_node_ref* next_in_ino; } ;


 scalar_t__ REF_EMPTY_NODE ;
 scalar_t__ REF_LINK_NODE ;

__attribute__((used)) static inline struct jffs2_raw_node_ref *ref_next(struct jffs2_raw_node_ref *ref)
{
 ref++;


 if (ref->flash_offset == REF_LINK_NODE) {
  ref = ref->next_in_ino;
  if (!ref)
   return ref;
 }


 if (ref->flash_offset == REF_EMPTY_NODE)
  return ((void*)0);

 return ref;
}
