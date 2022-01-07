
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct se_device {int dummy; } ;


 int __core_scsi3_write_aptpl_to_file (struct se_device*,unsigned char*,int ) ;
 int core_scsi3_update_aptpl_buf (struct se_device*,unsigned char*,int,int) ;
 int memset (unsigned char*,int ,int) ;

__attribute__((used)) static int
core_scsi3_update_and_write_aptpl(struct se_device *dev, unsigned char *in_buf,
  u32 in_pr_aptpl_buf_len)
{
 unsigned char null_buf[64], *buf;
 u32 pr_aptpl_buf_len;
 int clear_aptpl_metadata = 0;
 int ret;




 if (!in_buf) {
  memset(null_buf, 0, 64);
  buf = &null_buf[0];




  pr_aptpl_buf_len = 64;
  clear_aptpl_metadata = 1;
 } else {
  buf = in_buf;
  pr_aptpl_buf_len = in_pr_aptpl_buf_len;
 }

 ret = core_scsi3_update_aptpl_buf(dev, buf, pr_aptpl_buf_len,
    clear_aptpl_metadata);
 if (ret != 0)
  return ret;





 return __core_scsi3_write_aptpl_to_file(dev, buf, 0);
}
