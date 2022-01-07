
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct named_label_entry {scalar_t__ label_decl; } ;



__attribute__((used)) static int
named_label_entry_eq (const void *a, const void *b)
{
  const struct named_label_entry *ent_a = (const struct named_label_entry *) a;
  const struct named_label_entry *ent_b = (const struct named_label_entry *) b;
  return ent_a->label_decl == ent_b->label_decl;
}
