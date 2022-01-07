
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opt_info {scalar_t__ insns_with_var_to_expand; scalar_t__ insns_to_split; } ;


 int free (struct opt_info*) ;
 int htab_delete (scalar_t__) ;
 int htab_traverse (scalar_t__,int ,int *) ;
 int release_var_copies ;

__attribute__((used)) static void
free_opt_info (struct opt_info *opt_info)
{
  if (opt_info->insns_to_split)
    htab_delete (opt_info->insns_to_split);
  if (opt_info->insns_with_var_to_expand)
    {
      htab_traverse (opt_info->insns_with_var_to_expand,
                     release_var_copies, ((void*)0));
      htab_delete (opt_info->insns_with_var_to_expand);
    }
  free (opt_info);
}
