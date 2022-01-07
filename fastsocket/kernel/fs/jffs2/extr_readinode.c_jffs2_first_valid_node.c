
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jffs2_raw_node_ref {struct jffs2_raw_node_ref* next_in_ino; } ;


 int dbg_noderef (char*,int ) ;
 int ref_obsolete (struct jffs2_raw_node_ref*) ;
 int ref_offset (struct jffs2_raw_node_ref*) ;

__attribute__((used)) static struct jffs2_raw_node_ref *jffs2_first_valid_node(struct jffs2_raw_node_ref *ref)
{
 while (ref && ref->next_in_ino) {
  if (!ref_obsolete(ref))
   return ref;
  dbg_noderef("node at 0x%08x is obsoleted. Ignoring.\n", ref_offset(ref));
  ref = ref->next_in_ino;
 }
 return ((void*)0);
}
