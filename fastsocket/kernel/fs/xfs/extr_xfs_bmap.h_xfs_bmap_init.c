
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int xfs_fsblock_t ;
struct TYPE_3__ {scalar_t__ xbf_low; scalar_t__ xbf_count; int * xbf_first; } ;
typedef TYPE_1__ xfs_bmap_free_t ;


 int NULLFSBLOCK ;

__attribute__((used)) static inline void xfs_bmap_init(xfs_bmap_free_t *flp, xfs_fsblock_t *fbp)
{
 ((flp)->xbf_first = ((void*)0), (flp)->xbf_count = 0, (flp)->xbf_low = 0, *(fbp) = NULLFSBLOCK);

}
