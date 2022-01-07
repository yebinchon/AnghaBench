
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union ubifs_dev_desc {int huge; int new; } ;
typedef int dev_t ;


 int cpu_to_le32 (int ) ;
 int cpu_to_le64 (int ) ;
 int huge_encode_dev (int ) ;
 int new_encode_dev (int ) ;
 scalar_t__ new_valid_dev (int ) ;

__attribute__((used)) static inline int ubifs_encode_dev(union ubifs_dev_desc *dev, dev_t rdev)
{
 if (new_valid_dev(rdev)) {
  dev->new = cpu_to_le32(new_encode_dev(rdev));
  return sizeof(dev->new);
 } else {
  dev->huge = cpu_to_le64(huge_encode_dev(rdev));
  return sizeof(dev->huge);
 }
}
