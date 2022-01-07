
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int disco_number; int * discoveries; } ;
typedef TYPE_1__ irnet_socket ;
typedef int __u16 ;


 int CTRL_INFO ;
 int DEBUG (int ,char*,int *,int) ;
 int DISCOVERY_DEFAULT_SLOTS ;
 int S_LAN ;
 int * irlmp_get_discoveries (int*,int ,int ) ;
 int irlmp_service_to_hint (int ) ;

__attribute__((used)) static void
irnet_get_discovery_log(irnet_socket * ap)
{
  __u16 mask = irlmp_service_to_hint(S_LAN);


  ap->discoveries = irlmp_get_discoveries(&ap->disco_number, mask,
       DISCOVERY_DEFAULT_SLOTS);


  if(ap->discoveries == ((void*)0))
    ap->disco_number = -1;

  DEBUG(CTRL_INFO, "Got the log (0x%p), size is %d\n",
 ap->discoveries, ap->disco_number);
}
