
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ds1wm_data {int dummy; } ;


 int ds1wm_reset (struct ds1wm_data*) ;

__attribute__((used)) static u8 ds1wm_reset_bus(void *data)
{
 struct ds1wm_data *ds1wm_data = data;

 ds1wm_reset(ds1wm_data);

 return 0;
}
