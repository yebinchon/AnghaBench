
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_15__ {scalar_t__ lcn; scalar_t__ length; scalar_t__ vcn; } ;
typedef TYPE_1__ runlist_element ;


 int BUG_ON (int) ;
 scalar_t__ IS_ERR (TYPE_1__*) ;
 scalar_t__ LCN_ENOENT ;
 int __ntfs_rl_merge (TYPE_1__*,TYPE_1__*) ;
 int ntfs_are_rl_mergeable (TYPE_1__*,TYPE_1__*) ;
 int ntfs_rl_mc (TYPE_1__*,int,TYPE_1__*,int,int) ;
 int ntfs_rl_mm (TYPE_1__*,int,int,int) ;
 TYPE_1__* ntfs_rl_realloc (TYPE_1__*,int,int) ;

__attribute__((used)) static inline runlist_element *ntfs_rl_replace(runlist_element *dst,
  int dsize, runlist_element *src, int ssize, int loc)
{
 signed delta;
 bool left = 0;
 bool right = 0;
 int tail;
 int marker;

 BUG_ON(!dst);
 BUG_ON(!src);


 if ((loc + 1) < dsize)
  right = ntfs_are_rl_mergeable(src + ssize - 1, dst + loc + 1);
 if (loc > 0)
  left = ntfs_are_rl_mergeable(dst + loc - 1, src);




 delta = ssize - 1 - left - right;
 if (delta > 0) {
  dst = ntfs_rl_realloc(dst, dsize, dsize + delta);
  if (IS_ERR(dst))
   return dst;
 }






 if (right)
  __ntfs_rl_merge(src + ssize - 1, dst + loc + 1);
 if (left)
  __ntfs_rl_merge(dst + loc - 1, src);
 tail = loc + right + 1;







 marker = loc + ssize - left;


 ntfs_rl_mm(dst, marker, tail, dsize - tail);
 ntfs_rl_mc(dst, loc, src, left, ssize - left);


 if (dsize - tail > 0 && dst[marker].lcn == LCN_ENOENT)
  dst[marker].vcn = dst[marker - 1].vcn + dst[marker - 1].length;
 return dst;
}
