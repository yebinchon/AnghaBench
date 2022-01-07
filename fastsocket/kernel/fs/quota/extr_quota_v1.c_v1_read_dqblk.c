
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct v1_disk_dqblk {int dummy; } ;
struct TYPE_8__ {scalar_t__ dqb_bhardlimit; scalar_t__ dqb_bsoftlimit; scalar_t__ dqb_ihardlimit; scalar_t__ dqb_isoftlimit; } ;
struct dquot {int dq_type; int dq_flags; TYPE_2__ dq_dqb; int dq_id; TYPE_3__* dq_sb; } ;
struct TYPE_11__ {int reads; } ;
struct TYPE_10__ {int * files; } ;
struct TYPE_9__ {TYPE_1__* s_op; } ;
struct TYPE_7__ {int (* quota_read ) (TYPE_3__*,int,char*,int,int ) ;} ;


 int DQ_FAKE_B ;
 int EINVAL ;
 TYPE_6__ dqstats ;
 int memset (struct v1_disk_dqblk*,int ,int) ;
 TYPE_4__* sb_dqopt (TYPE_3__*) ;
 int set_bit (int ,int *) ;
 int stub1 (TYPE_3__*,int,char*,int,int ) ;
 int v1_disk2mem_dqblk (TYPE_2__*,struct v1_disk_dqblk*) ;
 int v1_dqoff (int ) ;

__attribute__((used)) static int v1_read_dqblk(struct dquot *dquot)
{
 int type = dquot->dq_type;
 struct v1_disk_dqblk dqblk;

 if (!sb_dqopt(dquot->dq_sb)->files[type])
  return -EINVAL;


 memset(&dqblk, 0, sizeof(struct v1_disk_dqblk));
 dquot->dq_sb->s_op->quota_read(dquot->dq_sb, type, (char *)&dqblk,
   sizeof(struct v1_disk_dqblk), v1_dqoff(dquot->dq_id));

 v1_disk2mem_dqblk(&dquot->dq_dqb, &dqblk);
 if (dquot->dq_dqb.dqb_bhardlimit == 0 &&
     dquot->dq_dqb.dqb_bsoftlimit == 0 &&
     dquot->dq_dqb.dqb_ihardlimit == 0 &&
     dquot->dq_dqb.dqb_isoftlimit == 0)
  set_bit(DQ_FAKE_B, &dquot->dq_flags);
 dqstats.reads++;

 return 0;
}
