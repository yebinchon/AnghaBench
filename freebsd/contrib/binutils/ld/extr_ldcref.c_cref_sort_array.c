
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cref_hash_entry {int demangled; } ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int
cref_sort_array (const void *a1, const void *a2)
{
  const struct cref_hash_entry * const *p1 = a1;
  const struct cref_hash_entry * const *p2 = a2;

  return strcmp ((*p1)->demangled, (*p2)->demangled);
}
