
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timespec {int dummy; } ;
struct TYPE_2__ {struct timespec xtime; } ;


 TYPE_1__ timekeeper ;

struct timespec __current_kernel_time(void)
{
 return timekeeper.xtime;
}
