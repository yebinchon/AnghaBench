
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int pid_t ;
struct TYPE_2__ {int remembered; } ;


 int backgndpid ;
 TYPE_1__* bgjob ;
 int forcelocal ;

pid_t
backgndpidval(void)
{
 if (bgjob != ((void*)0) && !forcelocal)
  bgjob->remembered = 1;
 return backgndpid;
}
