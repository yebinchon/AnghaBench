
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int uu_timelow; int uu_timemid; int uu_clockseq; } ;
typedef TYPE_1__ xfs_uu_t ;
typedef int uuid_t ;


 int be16_to_cpu (int ) ;
 int be32_to_cpu (int ) ;

void
uuid_getnodeuniq(uuid_t *uuid, int fsid [2])
{
 xfs_uu_t *uup = (xfs_uu_t *)uuid;

 fsid[0] = (be16_to_cpu(uup->uu_clockseq) << 16) |
     be16_to_cpu(uup->uu_timemid);
 fsid[1] = be32_to_cpu(uup->uu_timelow);
}
