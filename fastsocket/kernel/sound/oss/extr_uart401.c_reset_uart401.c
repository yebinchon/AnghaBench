
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ input_byte; } ;
typedef TYPE_1__ uart401_devc ;


 int DDB (int ) ;
 int DEB (int ) ;
 scalar_t__ MPU_ACK ;
 int MPU_RESET ;
 scalar_t__ input_avail (TYPE_1__*) ;
 int output_ready (TYPE_1__*) ;
 int printk (char*) ;
 int uart401_cmd (TYPE_1__*,int ) ;
 int uart401_input_loop (TYPE_1__*) ;
 scalar_t__ uart401_read (TYPE_1__*) ;

__attribute__((used)) static int reset_uart401(uart401_devc * devc)
{
 int ok, timeout, n;





 ok = 0;

 for (n = 0; n < 2 && !ok; n++)
 {
  for (timeout = 30000; timeout > 0 && !output_ready(devc); timeout--);
  devc->input_byte = 0;
  uart401_cmd(devc, MPU_RESET);






  for (timeout = 50000; timeout > 0 && !ok; timeout--)
  {
   if (devc->input_byte == MPU_ACK)
    ok = 1;
   else if (input_avail(devc))
   {
    if (uart401_read(devc) == MPU_ACK)
     ok = 1;
   }
  }
 }


 if (ok)
 {
  DEB(printk("Reset UART401 OK\n"));
 }
 else
  DDB(printk("Reset UART401 failed - No hardware detected.\n"));

 if (ok)
  uart401_input_loop(devc);



 return ok;
}
