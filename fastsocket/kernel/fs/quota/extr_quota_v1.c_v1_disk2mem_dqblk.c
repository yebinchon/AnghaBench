
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v1_disk_dqblk {int dqb_btime; int dqb_itime; int dqb_curblocks; int dqb_bsoftlimit; int dqb_bhardlimit; int dqb_curinodes; int dqb_isoftlimit; int dqb_ihardlimit; } ;
struct mem_dqblk {int dqb_btime; int dqb_itime; void* dqb_curspace; void* dqb_bsoftlimit; void* dqb_bhardlimit; int dqb_curinodes; int dqb_isoftlimit; int dqb_ihardlimit; } ;


 void* v1_qbtos (int ) ;

__attribute__((used)) static void v1_disk2mem_dqblk(struct mem_dqblk *m, struct v1_disk_dqblk *d)
{
 m->dqb_ihardlimit = d->dqb_ihardlimit;
 m->dqb_isoftlimit = d->dqb_isoftlimit;
 m->dqb_curinodes = d->dqb_curinodes;
 m->dqb_bhardlimit = v1_qbtos(d->dqb_bhardlimit);
 m->dqb_bsoftlimit = v1_qbtos(d->dqb_bsoftlimit);
 m->dqb_curspace = v1_qbtos(d->dqb_curblocks);
 m->dqb_itime = d->dqb_itime;
 m->dqb_btime = d->dqb_btime;
}
