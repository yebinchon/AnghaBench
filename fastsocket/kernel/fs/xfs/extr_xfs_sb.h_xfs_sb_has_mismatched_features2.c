
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ sb_bad_features2; scalar_t__ sb_features2; } ;
typedef TYPE_1__ xfs_sb_t ;



__attribute__((used)) static inline int xfs_sb_has_mismatched_features2(xfs_sb_t *sbp)
{
 return (sbp->sb_bad_features2 != sbp->sb_features2);
}
