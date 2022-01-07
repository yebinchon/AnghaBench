
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ evalskip ;
 scalar_t__ loopnest ;

void
reseteval(void)
{
 evalskip = 0;
 loopnest = 0;
}
