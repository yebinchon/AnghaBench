
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct hfs_extent {scalar_t__ count; scalar_t__ block; } ;


 scalar_t__ be16_to_cpu (scalar_t__) ;

__attribute__((used)) static u16 hfs_ext_lastblock(struct hfs_extent *ext)
{
 int i;

 ext += 2;
 for (i = 0; i < 2; ext--, i++)
  if (ext->count)
   break;
 return be16_to_cpu(ext->block) + be16_to_cpu(ext->count);
}
