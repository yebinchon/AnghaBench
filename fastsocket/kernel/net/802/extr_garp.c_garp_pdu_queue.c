
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct garp_applicant {int * pdu; int queue; TYPE_2__* app; TYPE_3__* dev; } ;
struct TYPE_6__ {int dev_addr; } ;
struct TYPE_4__ {int group_address; } ;
struct TYPE_5__ {TYPE_1__ proto; } ;


 int LLC_PDU_CMD ;
 int LLC_PDU_TYPE_U ;
 int LLC_SAP_BSPAN ;
 int garp_pdu_append_end_mark (struct garp_applicant*) ;
 int llc_mac_hdr_init (int *,int ,int ) ;
 int llc_pdu_header_init (int *,int ,int ,int ,int ) ;
 int llc_pdu_init_as_ui_cmd (int *) ;
 int skb_queue_tail (int *,int *) ;

__attribute__((used)) static void garp_pdu_queue(struct garp_applicant *app)
{
 if (!app->pdu)
  return;

 garp_pdu_append_end_mark(app);
 garp_pdu_append_end_mark(app);

 llc_pdu_header_init(app->pdu, LLC_PDU_TYPE_U, LLC_SAP_BSPAN,
       LLC_SAP_BSPAN, LLC_PDU_CMD);
 llc_pdu_init_as_ui_cmd(app->pdu);
 llc_mac_hdr_init(app->pdu, app->dev->dev_addr,
    app->app->proto.group_address);

 skb_queue_tail(&app->queue, app->pdu);
 app->pdu = ((void*)0);
}
