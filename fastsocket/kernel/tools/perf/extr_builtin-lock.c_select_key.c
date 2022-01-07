
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int key; scalar_t__ name; } ;


 int compare ;
 TYPE_1__* keys ;
 int pr_err (char*,int ) ;
 int sort_key ;
 int strcmp (scalar_t__,int ) ;

__attribute__((used)) static int select_key(void)
{
 int i;

 for (i = 0; keys[i].name; i++) {
  if (!strcmp(keys[i].name, sort_key)) {
   compare = keys[i].key;
   return 0;
  }
 }

 pr_err("Unknown compare key: %s\n", sort_key);

 return -1;
}
