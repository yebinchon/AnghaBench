
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct posix_ace_state_array {int n; TYPE_1__* aces; } ;
struct TYPE_2__ {int perms; } ;


 int deny_bits (int *,int ) ;

__attribute__((used)) static void deny_bits_array(struct posix_ace_state_array *a, u32 mask)
{
 int i;

 for (i=0; i < a->n; i++)
  deny_bits(&a->aces[i].perms, mask);
}
