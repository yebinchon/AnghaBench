
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_bearer {scalar_t__ usr_handle; } ;
struct eth_bearer {int * bearer; } ;



__attribute__((used)) static void disable_bearer(struct tipc_bearer *tb_ptr)
{
 ((struct eth_bearer *)tb_ptr->usr_handle)->bearer = ((void*)0);
}
