
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {int name; } ;
struct bearer {TYPE_1__ publ; scalar_t__ active; } ;


 scalar_t__ MAX_BEARERS ;
 scalar_t__ TIPC_NET_MODE ;
 int strcmp (int ,char const*) ;
 struct bearer* tipc_bearers ;
 scalar_t__ tipc_mode ;

__attribute__((used)) static struct bearer *bearer_find(const char *name)
{
 struct bearer *b_ptr;
 u32 i;

 if (tipc_mode != TIPC_NET_MODE)
  return ((void*)0);

 for (i = 0, b_ptr = tipc_bearers; i < MAX_BEARERS; i++, b_ptr++) {
  if (b_ptr->active && (!strcmp(b_ptr->publ.name, name)))
   return b_ptr;
 }
 return ((void*)0);
}
