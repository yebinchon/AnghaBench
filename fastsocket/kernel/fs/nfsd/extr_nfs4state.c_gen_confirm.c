
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ data; } ;
struct nfs4_client {TYPE_1__ cl_confirm; } ;


 int get_seconds () ;

__attribute__((used)) static void gen_confirm(struct nfs4_client *clp)
{
 static u32 i;
 u32 *p;

 p = (u32 *)clp->cl_confirm.data;
 *p++ = get_seconds();
 *p++ = i++;
}
