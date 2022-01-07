
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct qos_info {int dummy; } ;
struct TYPE_15__ {int rname; int daddr; int saddr; int chan; int * discoveries; int * iriap; int ttp_connect; int ttp_open; int max_sdu_size_rx; TYPE_2__* tsap; scalar_t__ max_data_size; scalar_t__ max_sdu_size_tx; int max_header_size; int dtsap_sel; int stsap_sel; } ;
typedef TYPE_1__ irnet_socket ;
typedef int __u8 ;
typedef scalar_t__ __u32 ;
struct TYPE_16__ {int dtsap_sel; int stsap_sel; } ;


 int DABORT (int ,int,int ,char*) ;
 int DENTER (int ,char*,TYPE_1__*,TYPE_1__*) ;
 int DEXIT (int ,char*) ;
 int IRDA_SERV_ERROR ;
 int IRDA_SERV_TRACE ;
 int IRNET_CONNECT_FROM ;
 int clear_bit (int ,int *) ;
 int iriap_close (int *) ;
 int irnet_post_event (TYPE_1__*,int ,int ,int ,int ,int ) ;
 int irttp_connect_response (TYPE_2__*,int ,int *) ;
 TYPE_2__* irttp_dup (TYPE_2__*,TYPE_1__*) ;
 int irttp_get_daddr (TYPE_2__*) ;
 scalar_t__ irttp_get_max_seg_size (TYPE_2__*) ;
 int irttp_get_saddr (TYPE_2__*) ;
 int irttp_listen (TYPE_2__*) ;
 int kfree (int *) ;
 int ppp_output_wakeup (int *) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static inline int
irnet_connect_socket(irnet_socket * server,
       irnet_socket * new,
       struct qos_info * qos,
       __u32 max_sdu_size,
       __u8 max_header_size)
{
  DENTER(IRDA_SERV_TRACE, "(server=0x%p, new=0x%p)\n",
  server, new);


  new->tsap = irttp_dup(server->tsap, new);
  DABORT(new->tsap == ((void*)0), -1, IRDA_SERV_ERROR, "dup failed!\n");


  new->stsap_sel = new->tsap->stsap_sel;
  new->dtsap_sel = new->tsap->dtsap_sel;
  new->saddr = irttp_get_saddr(new->tsap);
  new->daddr = irttp_get_daddr(new->tsap);

  new->max_header_size = max_header_size;
  new->max_sdu_size_tx = max_sdu_size;
  new->max_data_size = max_sdu_size;







  irttp_listen(server->tsap);


  irttp_connect_response(new->tsap, new->max_sdu_size_rx, ((void*)0));


  set_bit(0, &new->ttp_open);



  clear_bit(0, &new->ttp_connect);
  if(new->iriap)
    {
      iriap_close(new->iriap);
      new->iriap = ((void*)0);
    }
  if(new->discoveries != ((void*)0))
    {
      kfree(new->discoveries);
      new->discoveries = ((void*)0);
    }
  irnet_post_event(new, IRNET_CONNECT_FROM,
     new->saddr, new->daddr, server->rname, 0);

  DEXIT(IRDA_SERV_TRACE, "\n");
  return 0;
}
