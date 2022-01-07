
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u32 ;
struct TYPE_2__ {int nodesub_list; } ;
struct publication {TYPE_1__ subscr; int pport_list; int local_list; void* key; void* ref; void* node; void* scope; void* upper; void* lower; void* type; } ;


 int GFP_ATOMIC ;
 int INIT_LIST_HEAD (int *) ;
 struct publication* kzalloc (int,int ) ;
 int warn (char*) ;

__attribute__((used)) static struct publication *publ_create(u32 type, u32 lower, u32 upper,
           u32 scope, u32 node, u32 port_ref,
           u32 key)
{
 struct publication *publ = kzalloc(sizeof(*publ), GFP_ATOMIC);
 if (publ == ((void*)0)) {
  warn("Publication creation failure, no memory\n");
  return ((void*)0);
 }

 publ->type = type;
 publ->lower = lower;
 publ->upper = upper;
 publ->scope = scope;
 publ->node = node;
 publ->ref = port_ref;
 publ->key = key;
 INIT_LIST_HEAD(&publ->local_list);
 INIT_LIST_HEAD(&publ->pport_list);
 INIT_LIST_HEAD(&publ->subscr.nodesub_list);
 return publ;
}
