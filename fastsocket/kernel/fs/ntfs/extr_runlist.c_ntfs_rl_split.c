
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ vcn; scalar_t__ length; } ;
typedef TYPE_1__ runlist_element ;


 int BUG_ON (int) ;
 scalar_t__ IS_ERR (TYPE_1__*) ;
 int ntfs_rl_mc (TYPE_1__*,int,TYPE_1__*,int ,int) ;
 int ntfs_rl_mm (TYPE_1__*,int,int,int) ;
 TYPE_1__* ntfs_rl_realloc (TYPE_1__*,int,int) ;

__attribute__((used)) static inline runlist_element *ntfs_rl_split(runlist_element *dst, int dsize,
  runlist_element *src, int ssize, int loc)
{
 BUG_ON(!dst);
 BUG_ON(!src);


 dst = ntfs_rl_realloc(dst, dsize, dsize + ssize + 1);
 if (IS_ERR(dst))
  return dst;






 ntfs_rl_mm(dst, loc + 1 + ssize, loc, dsize - loc);
 ntfs_rl_mc(dst, loc + 1, src, 0, ssize);


 dst[loc].length = dst[loc+1].vcn - dst[loc].vcn;
 dst[loc+ssize+1].vcn = dst[loc+ssize].vcn + dst[loc+ssize].length;
 dst[loc+ssize+1].length = dst[loc+ssize+2].vcn - dst[loc+ssize+1].vcn;

 return dst;
}
