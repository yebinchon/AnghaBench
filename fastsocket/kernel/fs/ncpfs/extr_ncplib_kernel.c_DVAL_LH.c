
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int get_unaligned_le32 (void*) ;

__attribute__((used)) static inline u32 DVAL_LH(void *data)
{
 return get_unaligned_le32(data);
}
