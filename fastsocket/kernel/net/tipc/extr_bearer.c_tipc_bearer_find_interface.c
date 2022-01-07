
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {int name; } ;
struct bearer {TYPE_1__ publ; int active; } ;


 scalar_t__ MAX_BEARERS ;
 char* strchr (int ,char) ;
 int strcmp (char*,char const*) ;
 struct bearer* tipc_bearers ;

struct bearer *tipc_bearer_find_interface(const char *if_name)
{
 struct bearer *b_ptr;
 char *b_if_name;
 u32 i;

 for (i = 0, b_ptr = tipc_bearers; i < MAX_BEARERS; i++, b_ptr++) {
  if (!b_ptr->active)
   continue;
  b_if_name = strchr(b_ptr->publ.name, ':') + 1;
  if (!strcmp(b_if_name, if_name))
   return b_ptr;
 }
 return ((void*)0);
}
