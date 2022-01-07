
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxrpc_security {int owner; } ;


 int module_put (int ) ;

__attribute__((used)) static void rxrpc_security_put(struct rxrpc_security *sec)
{
 module_put(sec->owner);
}
