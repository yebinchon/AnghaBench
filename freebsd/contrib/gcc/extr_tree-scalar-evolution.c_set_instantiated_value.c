
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* tree ;
struct scev_info_str {void* chrec; void* var; } ;
typedef int htab_t ;
typedef scalar_t__ PTR ;


 int INSERT ;
 scalar_t__* htab_find_slot (int ,struct scev_info_str*,int ) ;
 scalar_t__ new_scev_info_str (void*) ;

__attribute__((used)) static void
set_instantiated_value (htab_t cache, tree version, tree val)
{
  struct scev_info_str *info, pattern;
  PTR *slot;

  pattern.var = version;
  slot = htab_find_slot (cache, &pattern, INSERT);

  if (!*slot)
    *slot = new_scev_info_str (version);
  info = (struct scev_info_str *) *slot;
  info->chrec = val;
}
