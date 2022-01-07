
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ opened; } ;
typedef TYPE_1__ uart401_devc ;
struct TYPE_5__ {scalar_t__ devc; } ;


 TYPE_3__** midi_devs ;
 int reset_uart401 (TYPE_1__*) ;

__attribute__((used)) static void uart401_close(int dev)
{
 uart401_devc *devc = (uart401_devc *) midi_devs[dev]->devc;

 reset_uart401(devc);
 devc->opened = 0;
}
