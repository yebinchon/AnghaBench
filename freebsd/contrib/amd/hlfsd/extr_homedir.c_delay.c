
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ child; } ;
typedef TYPE_1__ uid2home_t ;
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;


 int dlog (char*,long,int) ;
 scalar_t__ select (int ,int *,int *,int *,struct timeval*) ;

__attribute__((used)) static void
delay(uid2home_t *found, int secs)
{
  struct timeval tv;

  if (found)
    dlog("delaying on child %ld for %d seconds", (long) found->child, secs);

  tv.tv_usec = 0;

  do {
    tv.tv_sec = secs;
    if (select(0, ((void*)0), ((void*)0), ((void*)0), &tv) == 0)
      break;
  } while (--secs && found->child);
}
