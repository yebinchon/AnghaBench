
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ehl_map_entry {int label; } ;
typedef int const hashval_t ;


 int const CODE_LABEL_NUMBER (int ) ;

__attribute__((used)) static hashval_t
ehl_hash (const void *pentry)
{
  struct ehl_map_entry *entry = (struct ehl_map_entry *) pentry;


  const hashval_t scaled_golden_ratio = 0x9e3779b9;
  return CODE_LABEL_NUMBER (entry->label) * scaled_golden_ratio;
}
