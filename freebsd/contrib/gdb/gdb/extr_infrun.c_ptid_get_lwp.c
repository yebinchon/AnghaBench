
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {long lwp; } ;
typedef TYPE_1__ ptid_t ;



long
ptid_get_lwp (ptid_t ptid)
{
  return ptid.lwp;
}
