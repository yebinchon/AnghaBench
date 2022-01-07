
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tx_flow; int chan; } ;
typedef TYPE_1__ irnet_socket ;
typedef int LOCAL_FLOW ;


 int DEBUG (int ,char*) ;
 int DENTER (int ,char*,TYPE_1__*,int) ;
 int DEXIT (int ,char*) ;


 int IRDA_CB_INFO ;
 int IRDA_TCB_TRACE ;
 int ppp_output_wakeup (int *) ;

__attribute__((used)) static void
irnet_flow_indication(void * instance,
        void * sap,
        LOCAL_FLOW flow)
{
  irnet_socket * self = (irnet_socket *) instance;
  LOCAL_FLOW oldflow = self->tx_flow;

  DENTER(IRDA_TCB_TRACE, "(self=0x%p, flow=%d)\n", self, flow);


  self->tx_flow = flow;


  switch(flow)
    {
    case 129:
      DEBUG(IRDA_CB_INFO, "IrTTP wants us to start again\n");

      if(oldflow == 128)
 ppp_output_wakeup(&self->chan);
      else
 DEBUG(IRDA_CB_INFO, "But we were already transmitting !!!\n");
      break;
    case 128:
      DEBUG(IRDA_CB_INFO, "IrTTP wants us to slow down\n");
      break;
    default:
      DEBUG(IRDA_CB_INFO, "Unknown flow command!\n");
      break;
    }

  DEXIT(IRDA_TCB_TRACE, "\n");
}
