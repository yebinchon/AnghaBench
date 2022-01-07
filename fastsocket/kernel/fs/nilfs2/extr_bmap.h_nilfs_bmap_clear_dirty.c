
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_bmap {int b_state; } ;


 int NILFS_BMAP_DIRTY ;

__attribute__((used)) static inline void nilfs_bmap_clear_dirty(struct nilfs_bmap *bmap)
{
 bmap->b_state &= ~NILFS_BMAP_DIRTY;
}
