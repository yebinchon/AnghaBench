
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ swbuf; } ;
typedef TYPE_1__ vwsnd_port_t ;
typedef int vwsnd_dev_t ;


 int DBGEV (char*,int *,TYPE_1__*,TYPE_1__*) ;
 int DBGPV (char*) ;
 int DBGRV () ;
 int READ_INTR_MASK ;
 int WRITE_INTR_MASK ;
 int pcm_shutdown_port (int *,TYPE_1__*,int ) ;

__attribute__((used)) static void pcm_shutdown(vwsnd_dev_t *devc,
    vwsnd_port_t *rport,
    vwsnd_port_t *wport)
{
 DBGEV("(devc=0x%p, rport=0x%p, wport=0x%p)\n", devc, rport, wport);

 if (rport && rport->swbuf) {
  DBGPV("shutting down rport\n");
  pcm_shutdown_port(devc, rport, READ_INTR_MASK);
 }
 if (wport && wport->swbuf) {
  DBGPV("shutting down wport\n");
  pcm_shutdown_port(devc, wport, WRITE_INTR_MASK);
 }
 DBGRV();
}
