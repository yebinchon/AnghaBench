
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
struct ttypes_filter {scalar_t__ t; } ;
typedef int hashval_t ;


 scalar_t__ TREE_CHAIN (scalar_t__) ;
 int TREE_HASH (int ) ;
 int TREE_VALUE (scalar_t__) ;

__attribute__((used)) static hashval_t
ehspec_filter_hash (const void *pentry)
{
  const struct ttypes_filter *entry = (const struct ttypes_filter *) pentry;
  hashval_t h = 0;
  tree list;

  for (list = entry->t; list ; list = TREE_CHAIN (list))
    h = (h << 5) + (h >> 27) + TREE_HASH (TREE_VALUE (list));
  return h;
}
