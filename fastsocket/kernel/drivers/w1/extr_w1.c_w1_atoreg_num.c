
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct w1_reg_num {unsigned int family; unsigned long long id; int crc; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int cpu_to_le64 (int ) ;
 int dev_err (struct device*,char*,char const*) ;
 int dev_info (struct device*,char*,unsigned int,unsigned long long,int ) ;
 int sscanf (char const*,char*,unsigned int*,unsigned long long*) ;
 int w1_calc_crc8 (int *,int) ;

__attribute__((used)) static int w1_atoreg_num(struct device *dev, const char *buf, size_t count,
 struct w1_reg_num *rn)
{
 unsigned int family;
 unsigned long long id;
 int i;
 u64 rn64_le;






 const char *error_msg = "bad slave string format, expecting "
  "ff-dddddddddddd\n";

 if (buf[2] != '-') {
  dev_err(dev, "%s", error_msg);
  return -EINVAL;
 }
 i = sscanf(buf, "%02x-%012llx", &family, &id);
 if (i != 2) {
  dev_err(dev, "%s", error_msg);
  return -EINVAL;
 }
 rn->family = family;
 rn->id = id;

 rn64_le = cpu_to_le64(*(u64 *)rn);
 rn->crc = w1_calc_crc8((u8 *)&rn64_le, 7);






 return 0;
}
