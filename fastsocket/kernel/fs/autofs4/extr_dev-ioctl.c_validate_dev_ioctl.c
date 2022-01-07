
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct autofs_dev_ioctl {int size; int path; } ;


 int AUTOFS_WARN (char*,int) ;
 int check_dev_ioctl_version (int,struct autofs_dev_ioctl*) ;
 int check_name (int ) ;
 int invalid_str (int ,int) ;

__attribute__((used)) static int validate_dev_ioctl(int cmd, struct autofs_dev_ioctl *param)
{
 int err;

 err = check_dev_ioctl_version(cmd, param);
 if (err) {
  AUTOFS_WARN("invalid device control module version "
       "supplied for cmd(0x%08x)", cmd);
  goto out;
 }

 if (param->size > sizeof(*param)) {
  err = invalid_str(param->path, param->size - sizeof(*param));
  if (err) {
   AUTOFS_WARN(
     "path string terminator missing for cmd(0x%08x)",
     cmd);
   goto out;
  }

  err = check_name(param->path);
  if (err) {
   AUTOFS_WARN("invalid path supplied for cmd(0x%08x)",
        cmd);
   goto out;
  }
 }

 err = 0;
out:
 return err;
}
