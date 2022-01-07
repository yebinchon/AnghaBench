
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_quota_change_host {void* qc_id; void* qc_flags; int qc_change; } ;
struct gfs2_quota_change {int qc_id; int qc_flags; int qc_change; } ;


 void* be32_to_cpu (int ) ;
 int be64_to_cpu (int ) ;

__attribute__((used)) static void gfs2_quota_change_in(struct gfs2_quota_change_host *qc, const void *buf)
{
 const struct gfs2_quota_change *str = buf;

 qc->qc_change = be64_to_cpu(str->qc_change);
 qc->qc_flags = be32_to_cpu(str->qc_flags);
 qc->qc_id = be32_to_cpu(str->qc_id);
}
