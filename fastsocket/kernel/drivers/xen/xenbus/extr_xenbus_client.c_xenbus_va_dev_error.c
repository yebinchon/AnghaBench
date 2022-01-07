
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
struct xenbus_device {int nodename; int dev; } ;


 int BUG_ON (int) ;
 int GFP_KERNEL ;
 unsigned int PRINTF_BUFFER_SIZE ;
 int XBT_NIL ;
 int dev_err (int *,char*,char*,...) ;
 char* error_path (struct xenbus_device*) ;
 int kfree (char*) ;
 char* kmalloc (unsigned int,int ) ;
 unsigned int sprintf (char*,char*,int) ;
 int vsnprintf (char*,unsigned int,char const*,int ) ;
 scalar_t__ xenbus_write (int ,char*,char*,char*) ;

__attribute__((used)) static void xenbus_va_dev_error(struct xenbus_device *dev, int err,
    const char *fmt, va_list ap)
{
 int ret;
 unsigned int len;
 char *printf_buffer = ((void*)0);
 char *path_buffer = ((void*)0);


 printf_buffer = kmalloc(4096, GFP_KERNEL);
 if (printf_buffer == ((void*)0))
  goto fail;

 len = sprintf(printf_buffer, "%i ", -err);
 ret = vsnprintf(printf_buffer+len, 4096 -len, fmt, ap);

 BUG_ON(len + ret > 4096 -1);

 dev_err(&dev->dev, "%s\n", printf_buffer);

 path_buffer = error_path(dev);

 if (path_buffer == ((void*)0)) {
  dev_err(&dev->dev, "failed to write error node for %s (%s)\n",
         dev->nodename, printf_buffer);
  goto fail;
 }

 if (xenbus_write(XBT_NIL, path_buffer, "error", printf_buffer) != 0) {
  dev_err(&dev->dev, "failed to write error node for %s (%s)\n",
         dev->nodename, printf_buffer);
  goto fail;
 }

fail:
 kfree(printf_buffer);
 kfree(path_buffer);
}
