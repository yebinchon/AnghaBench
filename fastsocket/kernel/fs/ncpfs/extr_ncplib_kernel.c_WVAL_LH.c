
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int get_unaligned_le16 (void*) ;

__attribute__((used)) static inline u16 WVAL_LH(void *data)
{
 return get_unaligned_le16(data);
}
