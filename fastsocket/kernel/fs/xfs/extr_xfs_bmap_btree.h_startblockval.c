
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_fsblock_t ;
typedef int xfs_filblks_t ;
typedef int x ;


 int STARTBLOCKMASK ;

__attribute__((used)) static inline xfs_filblks_t startblockval(xfs_fsblock_t x)
{
 return (xfs_filblks_t)((x) & ~STARTBLOCKMASK);
}
