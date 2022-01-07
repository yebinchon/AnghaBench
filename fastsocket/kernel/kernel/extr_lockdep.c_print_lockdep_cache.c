
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lockdep_map {char* name; TYPE_1__* key; } ;
struct TYPE_2__ {int subkeys; } ;


 int KSYM_NAME_LEN ;
 char* __get_key_name (int ,char*) ;
 int printk (char*,char const*) ;

__attribute__((used)) static void print_lockdep_cache(struct lockdep_map *lock)
{
 const char *name;
 char str[KSYM_NAME_LEN];

 name = lock->name;
 if (!name)
  name = __get_key_name(lock->key->subkeys, str);

 printk("%s", name);
}
