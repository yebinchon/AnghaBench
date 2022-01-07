
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tipc_name {int instance; int type; } ;


 scalar_t__ tipc_nametbl_translate (int ,int ,int *) ;

int tipc_ispublished(struct tipc_name const *name)
{
 u32 domain = 0;

 return(tipc_nametbl_translate(name->type, name->instance,&domain) != 0);
}
