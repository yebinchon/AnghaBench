
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ my_vtag; scalar_t__ peer_vtag; scalar_t__ my_ttag; scalar_t__ peer_ttag; } ;
struct sctp_association {TYPE_1__ c; } ;



__attribute__((used)) static char sctp_tietags_compare(struct sctp_association *new_asoc,
     const struct sctp_association *asoc)
{

 if ((asoc->c.my_vtag != new_asoc->c.my_vtag) &&
     (asoc->c.peer_vtag != new_asoc->c.peer_vtag) &&
     (asoc->c.my_vtag == new_asoc->c.my_ttag) &&
     (asoc->c.peer_vtag == new_asoc->c.peer_ttag))
  return 'A';


 if ((asoc->c.my_vtag == new_asoc->c.my_vtag) &&
     ((asoc->c.peer_vtag != new_asoc->c.peer_vtag) ||
      (0 == asoc->c.peer_vtag))) {
  return 'B';
 }


 if ((asoc->c.my_vtag == new_asoc->c.my_vtag) &&
     (asoc->c.peer_vtag == new_asoc->c.peer_vtag))
  return 'D';


 if ((asoc->c.my_vtag != new_asoc->c.my_vtag) &&
     (asoc->c.peer_vtag == new_asoc->c.peer_vtag) &&
     (0 == new_asoc->c.my_ttag) &&
     (0 == new_asoc->c.peer_ttag))
  return 'C';


 return 'E';
}
