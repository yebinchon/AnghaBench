
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int initial_tsn; int sinit_max_instreams; int sinit_num_ostreams; int peer_vtag; int peer_ttag; int my_vtag; int my_ttag; } ;
struct sctp_association {int state; TYPE_1__ c; int rwnd; } ;





__attribute__((used)) static void sctp_tietags_populate(struct sctp_association *new_asoc,
      const struct sctp_association *asoc)
{
 switch (asoc->state) {



 case 128:
  new_asoc->c.my_vtag = asoc->c.my_vtag;
  new_asoc->c.my_ttag = asoc->c.my_vtag;
  new_asoc->c.peer_ttag = 0;
  break;

 case 129:
  new_asoc->c.my_vtag = asoc->c.my_vtag;
  new_asoc->c.my_ttag = asoc->c.my_vtag;
  new_asoc->c.peer_ttag = asoc->c.peer_vtag;
  break;




 default:
  new_asoc->c.my_ttag = asoc->c.my_vtag;
  new_asoc->c.peer_ttag = asoc->c.peer_vtag;
  break;
 }





 new_asoc->rwnd = asoc->rwnd;
 new_asoc->c.sinit_num_ostreams = asoc->c.sinit_num_ostreams;
 new_asoc->c.sinit_max_instreams = asoc->c.sinit_max_instreams;
 new_asoc->c.initial_tsn = asoc->c.initial_tsn;
}
