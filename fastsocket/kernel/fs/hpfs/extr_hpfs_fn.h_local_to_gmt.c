
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ time_t ;
typedef scalar_t__ time32_t ;
struct timezone {int tz_minuteswest; } ;
struct super_block {int dummy; } ;
struct TYPE_2__ {scalar_t__ sb_timeshift; } ;


 TYPE_1__* hpfs_sb (struct super_block*) ;

__attribute__((used)) static inline time_t local_to_gmt(struct super_block *s, time32_t t)
{
 extern struct timezone sys_tz;
 return t + sys_tz.tz_minuteswest * 60 + hpfs_sb(s)->sb_timeshift;
}
