
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int disco_number; size_t disco_index; TYPE_2__* discoveries; } ;
typedef TYPE_1__ irnet_socket ;
struct TYPE_7__ {int daddr; char* info; int saddr; int* hints; } ;


 int CTRL_INFO ;
 int CTRL_TRACE ;
 int DEBUG (int ,char*,...) ;
 int DENTER (int ,char*,TYPE_1__*,char*) ;
 int irnet_get_discovery_log (TYPE_1__*) ;
 int kfree (TYPE_2__*) ;
 int sprintf (char*,char*,int,char*,int,int,int) ;

__attribute__((used)) static inline int
irnet_read_discovery_log(irnet_socket * ap,
    char * event)
{
  int done_event = 0;

  DENTER(CTRL_TRACE, "(ap=0x%p, event=0x%p)\n",
  ap, event);


  if(ap->disco_number == -1)
    {
      DEBUG(CTRL_INFO, "Already done\n");
      return 0;
    }


  if(ap->discoveries == ((void*)0))
    irnet_get_discovery_log(ap);


  if(ap->disco_index < ap->disco_number)
    {

      sprintf(event, "Found %08x (%s) behind %08x {hints %02X-%02X}\n",
       ap->discoveries[ap->disco_index].daddr,
       ap->discoveries[ap->disco_index].info,
       ap->discoveries[ap->disco_index].saddr,
       ap->discoveries[ap->disco_index].hints[0],
       ap->discoveries[ap->disco_index].hints[1]);
      DEBUG(CTRL_INFO, "Writing discovery %d : %s\n",
     ap->disco_index, ap->discoveries[ap->disco_index].info);


      done_event = 1;

      ap->disco_index++;
    }


  if(ap->disco_index >= ap->disco_number)
    {

      DEBUG(CTRL_INFO, "Cleaning up log (0x%p)\n",
     ap->discoveries);
      if(ap->discoveries != ((void*)0))
 {

   kfree(ap->discoveries);
   ap->discoveries = ((void*)0);
 }
      ap->disco_number = -1;
    }

  return done_event;
}
