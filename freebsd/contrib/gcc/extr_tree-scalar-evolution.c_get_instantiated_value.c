
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct scev_info_str {int chrec; int var; } ;
typedef int htab_t ;


 int NULL_TREE ;
 scalar_t__ htab_find (int ,struct scev_info_str*) ;

__attribute__((used)) static tree
get_instantiated_value (htab_t cache, tree version)
{
  struct scev_info_str *info, pattern;

  pattern.var = version;
  info = (struct scev_info_str *) htab_find (cache, &pattern);

  if (info)
    return info->chrec;
  else
    return NULL_TREE;
}
