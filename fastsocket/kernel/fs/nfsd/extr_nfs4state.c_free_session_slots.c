
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int maxreqs; } ;
struct nfsd4_session {int * se_slots; TYPE_1__ se_fchannel; } ;


 int kfree (int ) ;

__attribute__((used)) static void
free_session_slots(struct nfsd4_session *ses)
{
 int i;

 for (i = 0; i < ses->se_fchannel.maxreqs; i++)
  kfree(ses->se_slots[i]);
}
