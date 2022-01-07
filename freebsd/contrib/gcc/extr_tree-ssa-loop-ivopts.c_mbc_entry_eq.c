
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbc_entry {scalar_t__ mode; scalar_t__ cst; } ;



__attribute__((used)) static int
mbc_entry_eq (const void *entry1, const void *entry2)
{
  const struct mbc_entry *e1 = entry1;
  const struct mbc_entry *e2 = entry2;

  return (e1->mode == e2->mode
   && e1->cst == e2->cst);
}
