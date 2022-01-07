
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_extent_rec {int e_leaf_clusters; } ;



__attribute__((used)) static inline int ocfs2_is_empty_extent(struct ocfs2_extent_rec *rec)
{
 return !rec->e_leaf_clusters;
}
