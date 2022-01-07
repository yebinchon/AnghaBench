
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; int tv_usec; } ;


 int o2hb_tv_subtract (struct timeval*,struct timeval*) ;

__attribute__((used)) static unsigned int o2hb_elapsed_msecs(struct timeval *start,
           struct timeval *end)
{
 struct timeval res = *end;

 o2hb_tv_subtract(&res, start);

 return res.tv_sec * 1000 + res.tv_usec / 1000;
}
