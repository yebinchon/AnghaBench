
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsg_dev {scalar_t__ state; } ;


 scalar_t__ FSG_STATE_IDLE ;

__attribute__((used)) static int exception_in_progress(struct fsg_dev *fsg)
{
 return (fsg->state > FSG_STATE_IDLE);
}
