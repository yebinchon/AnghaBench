
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;



void __attribute__((weak)) read_boot_clock(struct timespec *ts)
{
 ts->tv_sec = 0;
 ts->tv_nsec = 0;
}
