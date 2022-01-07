
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ds1wm_data {int * write_complete; } ;


 int DECLARE_COMPLETION_ONSTACK (int ) ;
 int DS1WM_DATA ;
 int DS1WM_TIMEOUT ;
 int ds1wm_write_register (struct ds1wm_data*,int ,int ) ;
 int wait_for_completion_timeout (int *,int ) ;
 int write_done ;

__attribute__((used)) static int ds1wm_write(struct ds1wm_data *ds1wm_data, u8 data)
{
 DECLARE_COMPLETION_ONSTACK(write_done);
 ds1wm_data->write_complete = &write_done;

 ds1wm_write_register(ds1wm_data, DS1WM_DATA, data);

 wait_for_completion_timeout(&write_done, DS1WM_TIMEOUT);
 ds1wm_data->write_complete = ((void*)0);

 return 0;
}
