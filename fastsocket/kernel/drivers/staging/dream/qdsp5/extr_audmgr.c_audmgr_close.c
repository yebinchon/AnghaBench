
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audmgr {int dummy; } ;


 int EBUSY ;

int audmgr_close(struct audmgr *am)
{
 return -EBUSY;
}
