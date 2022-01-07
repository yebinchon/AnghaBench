
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ds1wm_data {int read_byte; int * read_complete; } ;


 int DECLARE_COMPLETION_ONSTACK (int ) ;
 int DS1WM_TIMEOUT ;
 int ds1wm_write (struct ds1wm_data*,unsigned char) ;
 int read_done ;
 int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int ds1wm_read(struct ds1wm_data *ds1wm_data, unsigned char write_data)
{
 DECLARE_COMPLETION_ONSTACK(read_done);
 ds1wm_data->read_complete = &read_done;

 ds1wm_write(ds1wm_data, write_data);
 wait_for_completion_timeout(&read_done, DS1WM_TIMEOUT);
 ds1wm_data->read_complete = ((void*)0);

 return ds1wm_data->read_byte;
}
