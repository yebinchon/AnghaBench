
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sep_device {int send_ct; } ;


 int HW_HOST_HOST_SEP_GPR0_REG_ADDR ;
 int dbg (char*) ;
 int flush_cache_all () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sep_dump_message (struct sep_device*) ;
 int sep_mutex ;
 int sep_set_time (struct sep_device*) ;
 int sep_write_reg (struct sep_device*,int ,int) ;

__attribute__((used)) static void sep_send_command_handler(struct sep_device *sep)
{
 dbg("sep:sep_send_command_handler start\n");

 mutex_lock(&sep_mutex);
 sep_set_time(sep);


 flush_cache_all();

 sep_dump_message(sep);

 sep->send_ct++;

 sep_write_reg(sep, HW_HOST_HOST_SEP_GPR0_REG_ADDR, 0x2);
 dbg("SEP Driver:<-------- sep_send_command_handler end\n");
 mutex_unlock(&sep_mutex);
 return;
}
