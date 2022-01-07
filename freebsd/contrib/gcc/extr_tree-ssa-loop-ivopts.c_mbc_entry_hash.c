
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbc_entry {int cst; scalar_t__ mode; } ;
typedef int hashval_t ;



__attribute__((used)) static hashval_t
mbc_entry_hash (const void *entry)
{
  const struct mbc_entry *e = entry;

  return 57 * (hashval_t) e->mode + (hashval_t) (e->cst % 877);
}
