
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ DECL_NAME (scalar_t__) ;
 size_t GLOBAL_SCOPE_HT_SIZE ;
 size_t NAMESPACE_ORDINARY_HT_SIZE ;
 size_t NAMESPACE_STD_HT_SIZE ;
 scalar_t__ global_scope_name ;
 scalar_t__ std_identifier ;

__attribute__((used)) static inline size_t
namespace_scope_ht_size (tree ns)
{
  tree name = DECL_NAME (ns);

  return name == std_identifier
    ? NAMESPACE_STD_HT_SIZE
    : (name == global_scope_name
       ? GLOBAL_SCOPE_HT_SIZE
       : NAMESPACE_ORDINARY_HT_SIZE);
}
