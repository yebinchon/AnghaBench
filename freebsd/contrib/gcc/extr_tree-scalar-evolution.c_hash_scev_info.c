
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scev_info_str {int var; } ;
typedef int hashval_t ;


 int SSA_NAME_VERSION (int ) ;

__attribute__((used)) static hashval_t
hash_scev_info (const void *elt)
{
  return SSA_NAME_VERSION (((struct scev_info_str *) elt)->var);
}
