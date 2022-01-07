
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct short_ad {void* extPosition; void* extLength; } ;


 void* cpu_to_le32 (void*) ;

__attribute__((used)) static inline struct short_ad cpu_to_lesa(struct short_ad in)
{
 struct short_ad out;

 out.extLength = cpu_to_le32(in.extLength);
 out.extPosition = cpu_to_le32(in.extPosition);

 return out;
}
