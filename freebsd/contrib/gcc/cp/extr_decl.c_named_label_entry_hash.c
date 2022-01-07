
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct named_label_entry {int label_decl; } ;
typedef int hashval_t ;


 int DECL_UID (int ) ;

__attribute__((used)) static hashval_t
named_label_entry_hash (const void *data)
{
  const struct named_label_entry *ent = (const struct named_label_entry *) data;
  return DECL_UID (ent->label_decl);
}
