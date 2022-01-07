
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ htab_hash_bucket (void const*) ;

__attribute__((used)) static int
htab_eq_bucket (const void *p0, const void *p1)
{
  return htab_hash_bucket (p0) == htab_hash_bucket (p1);
}
