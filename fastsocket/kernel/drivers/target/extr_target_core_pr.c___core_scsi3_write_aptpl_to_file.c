
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct t10_wwn {unsigned char* unit_serial; } ;
struct se_device {struct t10_wwn t10_wwn; } ;
struct file {int dummy; } ;


 int EIO ;
 int EMSGSIZE ;
 scalar_t__ IS_ERR (struct file*) ;
 int O_CREAT ;
 int O_RDWR ;
 int O_TRUNC ;
 int PTR_ERR (struct file*) ;
 struct file* filp_open (char*,int,int) ;
 int fput (struct file*) ;
 int kernel_write (struct file*,unsigned char*,int,int ) ;
 int memset (char*,int ,int) ;
 int pr_debug (char*,char*) ;
 int pr_err (char*,...) ;
 int snprintf (char*,int,char*,unsigned char*) ;
 int strlen (unsigned char*) ;

__attribute__((used)) static int __core_scsi3_write_aptpl_to_file(
 struct se_device *dev,
 unsigned char *buf,
 u32 pr_aptpl_buf_len)
{
 struct t10_wwn *wwn = &dev->t10_wwn;
 struct file *file;
 int flags = O_RDWR | O_CREAT | O_TRUNC;
 char path[512];
 int ret;

 memset(path, 0, 512);

 if (strlen(&wwn->unit_serial[0]) >= 512) {
  pr_err("WWN value for struct se_device does not fit"
   " into path buffer\n");
  return -EMSGSIZE;
 }

 snprintf(path, 512, "/var/target/pr/aptpl_%s", &wwn->unit_serial[0]);
 file = filp_open(path, flags, 0600);
 if (IS_ERR(file)) {
  pr_err("filp_open(%s) for APTPL metadata"
   " failed\n", path);
  return PTR_ERR(file);
 }

 if (!pr_aptpl_buf_len)
  pr_aptpl_buf_len = (strlen(&buf[0]) + 1);

 ret = kernel_write(file, buf, pr_aptpl_buf_len, 0);

 if (ret < 0)
  pr_debug("Error writing APTPL metadata file: %s\n", path);
 fput(file);

 return ret ? -EIO : 0;
}
