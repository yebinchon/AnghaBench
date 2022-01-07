
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int len; int data; } ;
struct rsc {TYPE_1__ handle; } ;


 int RSC_HASHBITS ;
 int hash_mem (int ,int ,int ) ;

__attribute__((used)) static inline int
rsc_hash(struct rsc *rsci)
{
 return hash_mem(rsci->handle.data, rsci->handle.len, RSC_HASHBITS);
}
