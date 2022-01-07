
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_rgrpd {int rd_flags; int rd_free; int rd_dinodes; int rd_igeneration; } ;
struct gfs2_rgrp {int rg_reserved; int rg_igeneration; void* __pad; void* rg_dinodes; void* rg_free; void* rg_flags; } ;


 int GFS2_RDF_MASK ;
 void* cpu_to_be32 (int) ;
 int cpu_to_be64 (int ) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static void gfs2_rgrp_out(struct gfs2_rgrpd *rgd, void *buf)
{
 struct gfs2_rgrp *str = buf;

 str->rg_flags = cpu_to_be32(rgd->rd_flags & ~GFS2_RDF_MASK);
 str->rg_free = cpu_to_be32(rgd->rd_free);
 str->rg_dinodes = cpu_to_be32(rgd->rd_dinodes);
 str->__pad = cpu_to_be32(0);
 str->rg_igeneration = cpu_to_be64(rgd->rd_igeneration);
 memset(&str->rg_reserved, 0, sizeof(str->rg_reserved));
}
