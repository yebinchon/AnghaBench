
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fuse_conn {int bdi; scalar_t__ bdi_initialized; } ;


 int bdi_destroy (int *) ;

__attribute__((used)) static void fuse_bdi_destroy(struct fuse_conn *fc)
{
 if (fc->bdi_initialized)
  bdi_destroy(&fc->bdi);
}
