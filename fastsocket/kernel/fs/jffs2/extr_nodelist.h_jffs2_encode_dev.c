
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union jffs2_device_node {int new; int old; } ;
typedef int dev_t ;


 int cpu_to_je16 (int ) ;
 int cpu_to_je32 (int ) ;
 int new_encode_dev (int ) ;
 int old_encode_dev (int ) ;
 scalar_t__ old_valid_dev (int ) ;

__attribute__((used)) static inline int jffs2_encode_dev(union jffs2_device_node *jdev, dev_t rdev)
{
 if (old_valid_dev(rdev)) {
  jdev->old = cpu_to_je16(old_encode_dev(rdev));
  return sizeof(jdev->old);
 } else {
  jdev->new = cpu_to_je32(new_encode_dev(rdev));
  return sizeof(jdev->new);
 }
}
