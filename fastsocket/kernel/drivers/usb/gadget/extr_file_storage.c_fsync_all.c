
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsg_dev {int nluns; int * luns; } ;


 int fsync_sub (int *) ;

__attribute__((used)) static void fsync_all(struct fsg_dev *fsg)
{
 int i;

 for (i = 0; i < fsg->nluns; ++i)
  fsync_sub(&fsg->luns[i]);
}
