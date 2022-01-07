
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx25821_fh {int type; } ;


 int BUG () ;


int get_resource(struct cx25821_fh *fh, int resource)
{
 switch (fh->type) {
 case 128:
  return resource;
 default:
  BUG();
  return 0;
 }
}
