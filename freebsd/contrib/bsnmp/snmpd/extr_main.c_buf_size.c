
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t txbuf; size_t rxbuf; } ;


 TYPE_1__ snmpd ;

size_t
buf_size(int tx)
{
 return (tx ? snmpd.txbuf : snmpd.rxbuf);
}
