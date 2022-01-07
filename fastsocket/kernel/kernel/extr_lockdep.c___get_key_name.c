
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lockdep_subclass_key {int dummy; } ;


 char const* kallsyms_lookup (unsigned long,int *,int *,int *,char*) ;

const char * __get_key_name(struct lockdep_subclass_key *key, char *str)
{
 return kallsyms_lookup((unsigned long)key, ((void*)0), ((void*)0), ((void*)0), str);
}
