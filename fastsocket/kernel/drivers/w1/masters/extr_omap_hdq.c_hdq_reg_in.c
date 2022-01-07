
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct hdq_data {scalar_t__ hdq_base; } ;


 int __raw_readb (scalar_t__) ;

__attribute__((used)) static inline u8 hdq_reg_in(struct hdq_data *hdq_data, u32 offset)
{
 return __raw_readb(hdq_data->hdq_base + offset);
}
