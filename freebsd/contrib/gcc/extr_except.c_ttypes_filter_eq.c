
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
struct ttypes_filter {scalar_t__ t; } ;



__attribute__((used)) static int
ttypes_filter_eq (const void *pentry, const void *pdata)
{
  const struct ttypes_filter *entry = (const struct ttypes_filter *) pentry;
  tree data = (tree) pdata;

  return entry->t == data;
}
