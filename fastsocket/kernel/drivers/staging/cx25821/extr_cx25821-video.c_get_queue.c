
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct videobuf_queue {int dummy; } ;
struct cx25821_fh {int type; struct videobuf_queue vidq; } ;


 int BUG () ;


struct videobuf_queue *get_queue(struct cx25821_fh *fh)
{
 switch (fh->type) {
 case 128:
  return &fh->vidq;
 default:
  BUG();
  return ((void*)0);
 }
}
