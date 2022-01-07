
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_extent_ad {void* extLocation; void* extLength; } ;
struct extent_ad {int extLocation; int extLength; } ;


 void* le32_to_cpu (int ) ;

__attribute__((used)) static inline struct kernel_extent_ad leea_to_cpu(struct extent_ad in)
{
 struct kernel_extent_ad out;

 out.extLength = le32_to_cpu(in.extLength);
 out.extLocation = le32_to_cpu(in.extLocation);

 return out;
}
