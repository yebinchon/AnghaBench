
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_cred {int dummy; } ;
struct auth_cred {int dummy; } ;



__attribute__((used)) static int
nul_match(struct auth_cred *acred, struct rpc_cred *cred, int taskflags)
{
 return 1;
}
