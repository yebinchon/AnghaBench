
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_dfsbno_t ;
typedef scalar_t__ x ;


 scalar_t__ DSTARTBLOCKMASK ;

__attribute__((used)) static inline int isnulldstartblock(xfs_dfsbno_t x)
{
 return ((x) & DSTARTBLOCKMASK) == DSTARTBLOCKMASK;
}
