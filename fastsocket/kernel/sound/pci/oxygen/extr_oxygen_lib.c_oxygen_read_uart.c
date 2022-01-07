
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_2__ {int (* uart_input ) (struct oxygen*) ;} ;
struct oxygen {scalar_t__ uart_input_count; TYPE_1__ model; scalar_t__* uart_input; } ;


 scalar_t__ ARRAY_SIZE (scalar_t__*) ;
 scalar_t__ MPU401_ACK ;
 int OXYGEN_MPU401 ;
 scalar_t__ oxygen_read8 (struct oxygen*,int ) ;
 scalar_t__ oxygen_uart_input_ready (struct oxygen*) ;
 int stub1 (struct oxygen*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void oxygen_read_uart(struct oxygen *chip)
{
 if (unlikely(!oxygen_uart_input_ready(chip))) {

  oxygen_read8(chip, OXYGEN_MPU401);
  return;
 }
 do {
  u8 data = oxygen_read8(chip, OXYGEN_MPU401);
  if (data == MPU401_ACK)
   continue;
  if (chip->uart_input_count >= ARRAY_SIZE(chip->uart_input))
   chip->uart_input_count = 0;
  chip->uart_input[chip->uart_input_count++] = data;
 } while (oxygen_uart_input_ready(chip));
 if (chip->model.uart_input)
  chip->model.uart_input(chip);
}
