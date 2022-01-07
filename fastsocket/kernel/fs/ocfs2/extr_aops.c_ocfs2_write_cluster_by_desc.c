
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_write_ctxt {int w_clen; struct ocfs2_write_cluster_desc* w_desc; } ;
struct ocfs2_write_cluster_desc {int c_cpos; int c_needs_zero; int c_unwritten; int c_phys; } ;
struct ocfs2_super {int s_clustersize; } ;
struct ocfs2_alloc_context {int dummy; } ;
struct address_space {TYPE_1__* host; } ;
typedef int loff_t ;
struct TYPE_2__ {int i_sb; } ;


 struct ocfs2_super* OCFS2_SB (int ) ;
 int mlog_errno (int) ;
 int ocfs2_write_cluster (struct address_space*,int ,int ,int ,struct ocfs2_alloc_context*,struct ocfs2_alloc_context*,struct ocfs2_write_ctxt*,int ,int,unsigned int) ;

__attribute__((used)) static int ocfs2_write_cluster_by_desc(struct address_space *mapping,
           struct ocfs2_alloc_context *data_ac,
           struct ocfs2_alloc_context *meta_ac,
           struct ocfs2_write_ctxt *wc,
           loff_t pos, unsigned len)
{
 int ret, i;
 loff_t cluster_off;
 unsigned int local_len = len;
 struct ocfs2_write_cluster_desc *desc;
 struct ocfs2_super *osb = OCFS2_SB(mapping->host->i_sb);

 for (i = 0; i < wc->w_clen; i++) {
  desc = &wc->w_desc[i];





  local_len = len;
  cluster_off = pos & (osb->s_clustersize - 1);
  if ((cluster_off + local_len) > osb->s_clustersize)
   local_len = osb->s_clustersize - cluster_off;

  ret = ocfs2_write_cluster(mapping, desc->c_phys,
       desc->c_unwritten,
       desc->c_needs_zero,
       data_ac, meta_ac,
       wc, desc->c_cpos, pos, local_len);
  if (ret) {
   mlog_errno(ret);
   goto out;
  }

  len -= local_len;
  pos += local_len;
 }

 ret = 0;
out:
 return ret;
}
