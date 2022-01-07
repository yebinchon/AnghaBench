
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char const** HASH_OID ;

const unsigned char *
get_hash_oid(int id)
{
 if (id >= 2 && id <= 6) {
  return HASH_OID[id - 2];
 } else {
  return ((void*)0);
 }
}
