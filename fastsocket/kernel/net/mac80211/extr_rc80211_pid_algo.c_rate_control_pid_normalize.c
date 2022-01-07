
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rc_pid_rateinfo {int diff; } ;
struct rc_pid_info {int norm_offset; struct rc_pid_rateinfo* rinfo; } ;



__attribute__((used)) static void rate_control_pid_normalize(struct rc_pid_info *pinfo, int l)
{
 int i, norm_offset = pinfo->norm_offset;
 struct rc_pid_rateinfo *r = pinfo->rinfo;

 if (r[0].diff > norm_offset)
  r[0].diff -= norm_offset;
 else if (r[0].diff < -norm_offset)
  r[0].diff += norm_offset;
 for (i = 0; i < l - 1; i++)
  if (r[i + 1].diff > r[i].diff + norm_offset)
   r[i + 1].diff -= norm_offset;
  else if (r[i + 1].diff <= r[i].diff)
   r[i + 1].diff += norm_offset;
}
