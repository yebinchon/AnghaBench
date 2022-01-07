
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ end; scalar_t__ start; int parent; } ;
struct umc_dev {TYPE_1__ resource; int dev; } ;


 int dev_err (int *,char*,unsigned long long,unsigned long long,int) ;
 int device_register (int *) ;
 int release_resource (TYPE_1__*) ;
 int request_resource (int ,TYPE_1__*) ;

int umc_device_register(struct umc_dev *umc)
{
 int err;

 err = request_resource(umc->resource.parent, &umc->resource);
 if (err < 0) {
  dev_err(&umc->dev, "can't allocate resource range "
   "%016Lx to %016Lx: %d\n",
   (unsigned long long)umc->resource.start,
   (unsigned long long)umc->resource.end,
   err);
  goto error_request_resource;
 }

 err = device_register(&umc->dev);
 if (err < 0)
  goto error_device_register;
 return 0;

error_device_register:
 release_resource(&umc->resource);
error_request_resource:
 return err;
}
