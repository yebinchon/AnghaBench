
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fuse_conn {int interrupts; int pending; } ;


 int list_empty (int *) ;

__attribute__((used)) static int request_pending(struct fuse_conn *fc)
{
 return !list_empty(&fc->pending) || !list_empty(&fc->interrupts);
}
