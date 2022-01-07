
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_extent_tree {int et_ci; TYPE_1__* et_ops; } ;
struct ocfs2_extent_rec {int dummy; } ;
typedef enum ocfs2_contig_type { ____Placeholder_ocfs2_contig_type } ocfs2_contig_type ;
struct TYPE_2__ {int (* eo_extent_contig ) (struct ocfs2_extent_tree*,struct ocfs2_extent_rec*,struct ocfs2_extent_rec*) ;} ;


 int ocfs2_extent_rec_contig (int ,struct ocfs2_extent_rec*,struct ocfs2_extent_rec*) ;
 int ocfs2_metadata_cache_get_super (int ) ;
 int stub1 (struct ocfs2_extent_tree*,struct ocfs2_extent_rec*,struct ocfs2_extent_rec*) ;

__attribute__((used)) static inline enum ocfs2_contig_type
 ocfs2_et_extent_contig(struct ocfs2_extent_tree *et,
          struct ocfs2_extent_rec *rec,
          struct ocfs2_extent_rec *insert_rec)
{
 if (et->et_ops->eo_extent_contig)
  return et->et_ops->eo_extent_contig(et, rec, insert_rec);

 return ocfs2_extent_rec_contig(
    ocfs2_metadata_cache_get_super(et->et_ci),
    rec, insert_rec);
}
