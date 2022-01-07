
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UART_MODE_ON ;
 int del_timer (int *) ;
 int uart6850_cmd (int ) ;
 scalar_t__ uart6850_opened ;
 int uart6850_timer ;

__attribute__((used)) static void uart6850_close(int dev)
{
 uart6850_cmd(UART_MODE_ON);
 del_timer(&uart6850_timer);
 uart6850_opened = 0;
}
