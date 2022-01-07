
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct constant_descriptor_rtx {int hash; } ;
typedef int hashval_t ;



__attribute__((used)) static hashval_t
const_desc_rtx_hash (const void *ptr)
{
  const struct constant_descriptor_rtx *desc = ptr;
  return desc->hash;
}
