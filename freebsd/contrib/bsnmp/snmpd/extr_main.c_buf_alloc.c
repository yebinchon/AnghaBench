
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int rxbuf; int txbuf; } ;
struct TYPE_3__ {int noRxbuf; int noTxbuf; } ;


 int LOG_CRIT ;
 void* malloc (int ) ;
 TYPE_2__ snmpd ;
 TYPE_1__ snmpd_stats ;
 int syslog (int ,char*) ;

void *
buf_alloc(int tx)
{
 void *buf;

 if ((buf = malloc(tx ? snmpd.txbuf : snmpd.rxbuf)) == ((void*)0)) {
  syslog(LOG_CRIT, "cannot allocate buffer");
  if (tx)
   snmpd_stats.noTxbuf++;
  else
   snmpd_stats.noRxbuf++;
  return (((void*)0));
 }
 return (buf);
}
