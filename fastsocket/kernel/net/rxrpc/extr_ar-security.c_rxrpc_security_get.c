
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxrpc_security {int owner; } ;


 scalar_t__ try_module_get (int ) ;

__attribute__((used)) static struct rxrpc_security *rxrpc_security_get(struct rxrpc_security *sec)
{
 return try_module_get(sec->owner) ? sec : ((void*)0);
}
