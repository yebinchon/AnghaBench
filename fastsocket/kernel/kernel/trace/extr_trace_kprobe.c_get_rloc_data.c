
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void u8 ;
typedef int u32 ;


 int get_rloc_offs (int ) ;

__attribute__((used)) static inline void *get_rloc_data(u32 *dl)
{
 return (u8 *)dl + get_rloc_offs(*dl);
}
