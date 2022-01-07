
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int __u16 ;
struct TYPE_6__ {int * private; } ;
struct TYPE_8__ {int ckey; int stsap_sel; int * file; TYPE_1__ chan; scalar_t__ ppp_open; } ;
struct TYPE_7__ {TYPE_3__ s; int ias_obj; int skey; } ;


 int DENTER (int ,char*) ;
 int DEXIT (int ,char*,TYPE_3__*) ;
 int IAS_KERNEL_ATTR ;
 int IRDA_SERV_TRACE ;
 int IRNET_IAS_VALUE ;
 int IRNET_SERVICE_NAME ;
 int S_LAN ;
 int irda_irnet_create (TYPE_3__*) ;
 int irias_add_integer_attrib (int ,int ,int ,int ) ;
 int irias_insert_object (int ) ;
 int irias_new_object (int ,int ) ;
 int irlmp_register_service (int ) ;
 int irlmp_service_to_hint (int ) ;
 int irlmp_update_client (int ,int ,int ,int ,void*) ;
 int irnet_discovery_indication ;
 int irnet_expiry_indication ;
 int irnet_open_tsap (TYPE_3__*) ;
 TYPE_2__ irnet_server ;
 int jiffies ;

__attribute__((used)) static inline int
irnet_setup_server(void)
{
  __u16 hints;

  DENTER(IRDA_SERV_TRACE, "()\n");


  irda_irnet_create(&irnet_server.s);


  irnet_open_tsap(&irnet_server.s);


  irnet_server.s.ppp_open = 0;
  irnet_server.s.chan.private = ((void*)0);
  irnet_server.s.file = ((void*)0);






  hints = irlmp_service_to_hint(S_LAN);







  irnet_server.ias_obj = irias_new_object(IRNET_SERVICE_NAME, jiffies);
  irias_add_integer_attrib(irnet_server.ias_obj, IRNET_IAS_VALUE,
      irnet_server.s.stsap_sel, IAS_KERNEL_ATTR);
  irias_insert_object(irnet_server.ias_obj);
  DEXIT(IRDA_SERV_TRACE, " - self=0x%p\n", &irnet_server.s);
  return 0;
}
