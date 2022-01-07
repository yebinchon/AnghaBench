
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
 int ntfs_rl_mc (TYPE_1__*,int,TYPE_1__*,int ,int) ;
 int ntfs_rl_mm (TYPE_1__*,int,int,int) ;
 TYPE_1__* ntfs_rl_realloc (TYPE_1__*,int,int) ;

__attribute__((used)) static inline runlist_element *ntfs_rl_append(runlist_element *dst,
  int dsize, runlist_element *src, int ssize, int loc)
{
 bool right = 0;
 int marker;

 BUG_ON(!dst);
 BUG_ON(!src);


 if ((loc + 1) < dsize)
  right = ntfs_are_rl_mergeable(src + ssize - 1, dst + loc + 1);


 dst = ntfs_rl_realloc(dst, dsize, dsize + ssize - right);
 if (IS_ERR(dst))
  return dst;






 if (right)
  __ntfs_rl_merge(src + ssize - 1, dst + loc + 1);


 marker = loc + ssize + 1;


 ntfs_rl_mm(dst, marker, loc + 1 + right, dsize - (loc + 1 + right));
 ntfs_rl_mc(dst, loc + 1, src, 0, ssize);


 dst[loc].length = dst[loc + 1].vcn - dst[loc].vcn;


 if (dst[marker].lcn == LCN_ENOENT)
  dst[marker].vcn = dst[marker - 1].vcn + dst[marker - 1].length;

 return dst;
}
