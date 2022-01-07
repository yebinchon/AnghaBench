
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct named_label_entry {int label_decl; } ;


 int NO_INSERT ;
 int htab_clear_slot (int ,void**) ;
 void** htab_find_slot (int ,struct named_label_entry*,int ) ;
 int named_labels ;
 int pop_label (int ,int ) ;

__attribute__((used)) static void
pop_local_label (tree label, tree old_value)
{
  struct named_label_entry dummy;
  void **slot;

  pop_label (label, old_value);

  dummy.label_decl = label;
  slot = htab_find_slot (named_labels, &dummy, NO_INSERT);
  htab_clear_slot (named_labels, slot);
}
