
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_7__ {int pr_size; } ;
typedef TYPE_1__ sysset_t ;
struct TYPE_8__ {int num_syscalls; } ;
typedef TYPE_2__ procinfo ;


 int sysset_t_size (TYPE_2__*) ;
 TYPE_1__* xmalloc (int) ;

__attribute__((used)) static sysset_t *
sysset_t_alloc (procinfo * pi)
{
  sysset_t *ret;
  int size = sysset_t_size (pi);
  ret = xmalloc (size);




  return ret;
}
