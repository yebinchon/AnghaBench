
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct toc_hash_struct {int key_mode; int key; } ;


 int rs6000_hash_constant (int ) ;

__attribute__((used)) static unsigned
toc_hash_function (const void *hash_entry)
{
  const struct toc_hash_struct *thc =
    (const struct toc_hash_struct *) hash_entry;
  return rs6000_hash_constant (thc->key) ^ thc->key_mode;
}
