
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int
hash_set (int regno, int hash_table_size)
{
  unsigned int hash;

  hash = regno;
  return hash % hash_table_size;
}
