
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lwp_info {int resumed; } ;



__attribute__((used)) static int
resumed_callback (struct lwp_info *lp, void *data)
{
  return lp->resumed;
}
