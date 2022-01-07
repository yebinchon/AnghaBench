
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strcmp (void const*,void const*) ;

__attribute__((used)) static int
nonexistent_file_hash_eq (const void *p, const void *q)
{
  return strcmp (p, q) == 0;
}
