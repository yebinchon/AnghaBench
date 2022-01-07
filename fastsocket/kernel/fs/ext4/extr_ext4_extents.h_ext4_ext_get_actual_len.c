
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext4_extent {int ee_len; } ;


 scalar_t__ EXT_INIT_MAX_LEN ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static inline int ext4_ext_get_actual_len(struct ext4_extent *ext)
{
 return (le16_to_cpu(ext->ee_len) <= EXT_INIT_MAX_LEN ?
  le16_to_cpu(ext->ee_len) :
  (le16_to_cpu(ext->ee_len) - EXT_INIT_MAX_LEN));
}
