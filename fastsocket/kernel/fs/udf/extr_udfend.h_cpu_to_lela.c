
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct long_ad {int extLocation; int extLength; } ;
struct kernel_long_ad {int extLocation; int extLength; } ;


 int cpu_to_le32 (int ) ;
 int cpu_to_lelb (int ) ;

__attribute__((used)) static inline struct long_ad cpu_to_lela(struct kernel_long_ad in)
{
 struct long_ad out;

 out.extLength = cpu_to_le32(in.extLength);
 out.extLocation = cpu_to_lelb(in.extLocation);

 return out;
}
