
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct biv_entry {int regno; } ;
typedef int hashval_t ;



__attribute__((used)) static hashval_t
biv_hash (const void *b)
{
  return ((const struct biv_entry *) b)->regno;
}
