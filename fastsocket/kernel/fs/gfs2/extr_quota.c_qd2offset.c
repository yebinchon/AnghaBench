
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct gfs2_quota_data {int qd_flags; scalar_t__ qd_id; } ;
struct gfs2_quota {int dummy; } ;


 int QDF_USER ;
 int test_bit (int ,int *) ;

__attribute__((used)) static u64 qd2offset(struct gfs2_quota_data *qd)
{
 u64 offset;

 offset = 2 * (u64)qd->qd_id + !test_bit(QDF_USER, &qd->qd_flags);
 offset *= sizeof(struct gfs2_quota);

 return offset;
}
