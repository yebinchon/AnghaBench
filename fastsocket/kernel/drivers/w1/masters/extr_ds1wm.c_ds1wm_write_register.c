
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ds1wm_data {int bus_shift; scalar_t__ map; } ;


 int __raw_writeb (int ,scalar_t__) ;

__attribute__((used)) static inline void ds1wm_write_register(struct ds1wm_data *ds1wm_data, u32 reg,
     u8 val)
{
 __raw_writeb(val, ds1wm_data->map + (reg << ds1wm_data->bus_shift));
}
