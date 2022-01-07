
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_tune {int gt_spin; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline unsigned int gfs2_tune_get_i(struct gfs2_tune *gt,
        unsigned int *p)
{
 unsigned int x;
 spin_lock(&gt->gt_spin);
 x = *p;
 spin_unlock(&gt->gt_spin);
 return x;
}
