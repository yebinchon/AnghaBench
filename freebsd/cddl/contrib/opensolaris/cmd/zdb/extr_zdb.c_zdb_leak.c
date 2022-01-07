
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ vdev_id; } ;
typedef TYPE_1__ vdev_t ;
typedef scalar_t__ uint64_t ;
typedef int u_longlong_t ;


 int printf (char*,int ,int ,int ) ;

__attribute__((used)) static void
zdb_leak(void *arg, uint64_t start, uint64_t size)
{
 vdev_t *vd = arg;

 (void) printf("leaked space: vdev %llu, offset 0x%llx, size %llu\n",
     (u_longlong_t)vd->vdev_id, (u_longlong_t)start, (u_longlong_t)size);
}
