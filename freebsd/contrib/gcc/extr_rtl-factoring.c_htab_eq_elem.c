
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ htab_hash_elem (void const*) ;

__attribute__((used)) static int
htab_eq_elem (const void *p0, const void *p1)
{
  return htab_hash_elem (p0) == htab_hash_elem (p1);
}
