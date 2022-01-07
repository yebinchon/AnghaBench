
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;
typedef int boolean_t ;


 int add_prop_list (char const*,char*,int **,int ) ;
 scalar_t__ nvlist_lookup_string (int *,char const*,char**) ;

__attribute__((used)) static int
add_prop_list_default(const char *propname, char *propval, nvlist_t **props,
    boolean_t poolprop)
{
 char *pval;

 if (nvlist_lookup_string(*props, propname, &pval) == 0)
  return (0);

 return (add_prop_list(propname, propval, props, poolprop));
}
