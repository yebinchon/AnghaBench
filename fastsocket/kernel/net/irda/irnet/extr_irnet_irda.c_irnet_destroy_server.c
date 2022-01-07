
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s; scalar_t__ ias_obj; int skey; } ;


 int DENTER (int ,char*) ;
 int DEXIT (int ,char*) ;
 int IRDA_SERV_TRACE ;
 int irda_irnet_destroy (int *) ;
 int irias_delete_object (scalar_t__) ;
 int irlmp_unregister_service (int ) ;
 TYPE_1__ irnet_server ;

__attribute__((used)) static inline void
irnet_destroy_server(void)
{
  DENTER(IRDA_SERV_TRACE, "()\n");







  if(irnet_server.ias_obj)
    irias_delete_object(irnet_server.ias_obj);


  irda_irnet_destroy(&irnet_server.s);

  DEXIT(IRDA_SERV_TRACE, "\n");
  return;
}
