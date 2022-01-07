
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int time_t ;
typedef int time32_t ;
struct timezone {int tz_minuteswest; } ;
struct super_block {int dummy; } ;
struct TYPE_2__ {int sb_timeshift; } ;


 TYPE_1__* hpfs_sb (struct super_block*) ;

__attribute__((used)) static inline time32_t gmt_to_local(struct super_block *s, time_t t)
{
 extern struct timezone sys_tz;
 return t - sys_tz.tz_minuteswest * 60 - hpfs_sb(s)->sb_timeshift;
}
