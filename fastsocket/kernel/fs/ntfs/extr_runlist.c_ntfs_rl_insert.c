
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_1__ ;


typedef scalar_t__ s64 ;
struct TYPE_15__ {scalar_t__ vcn; scalar_t__ length; scalar_t__ lcn; } ;
typedef TYPE_1__ runlist_element ;


 int BUG_ON (int) ;
 scalar_t__ IS_ERR (TYPE_1__*) ;
 scalar_t__ LCN_HOLE ;
 scalar_t__ LCN_RL_NOT_MAPPED ;
 int __ntfs_rl_merge (TYPE_1__*,TYPE_1__*) ;
 int ntfs_are_rl_mergeable (TYPE_1__*,TYPE_1__*) ;
 int ntfs_rl_mc (TYPE_1__*,int,TYPE_1__*,int,int) ;
 int ntfs_rl_mm (TYPE_1__*,int,int,int) ;
 TYPE_1__* ntfs_rl_realloc (TYPE_1__*,int,int) ;

__attribute__((used)) static inline runlist_element *ntfs_rl_insert(runlist_element *dst,
  int dsize, runlist_element *src, int ssize, int loc)
{
 bool left = 0;
 bool disc = 0;
 int marker;

 BUG_ON(!dst);
 BUG_ON(!src);





 if (loc == 0)
  disc = (src[0].vcn > 0);
 else {
  s64 merged_length;

  left = ntfs_are_rl_mergeable(dst + loc - 1, src);

  merged_length = dst[loc - 1].length;
  if (left)
   merged_length += src->length;

  disc = (src[0].vcn > dst[loc - 1].vcn + merged_length);
 }




 dst = ntfs_rl_realloc(dst, dsize, dsize + ssize - left + disc);
 if (IS_ERR(dst))
  return dst;




 if (left)
  __ntfs_rl_merge(dst + loc - 1, src);







 marker = loc + ssize - left + disc;


 ntfs_rl_mm(dst, marker, loc, dsize - loc);
 ntfs_rl_mc(dst, loc + disc, src, left, ssize - left);


 dst[marker].vcn = dst[marker - 1].vcn + dst[marker - 1].length;

 if (dst[marker].lcn == LCN_HOLE || dst[marker].lcn == LCN_RL_NOT_MAPPED)
  dst[marker].length = dst[marker + 1].vcn - dst[marker].vcn;


 if (disc) {
  if (loc > 0) {
   dst[loc].vcn = dst[loc - 1].vcn + dst[loc - 1].length;
   dst[loc].length = dst[loc + 1].vcn - dst[loc].vcn;
  } else {
   dst[loc].vcn = 0;
   dst[loc].length = dst[loc + 1].vcn;
  }
  dst[loc].lcn = LCN_RL_NOT_MAPPED;
 }
 return dst;
}
