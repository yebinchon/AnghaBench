
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct long_ad {int extLocation; int extLength; } ;
struct kernel_long_ad {int extLocation; int extLength; } ;


 int le32_to_cpu (int ) ;
 int lelb_to_cpu (int ) ;

__attribute__((used)) static inline struct kernel_long_ad lela_to_cpu(struct long_ad in)
{
 struct kernel_long_ad out;

 out.extLength = le32_to_cpu(in.extLength);
 out.extLocation = lelb_to_cpu(in.extLocation);

 return out;
}
