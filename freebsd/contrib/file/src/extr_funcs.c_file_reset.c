
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * pbuf; int * buf; } ;
struct magic_set {int error; int event_flags; TYPE_1__ o; int ** mlist; } ;


 int EVENT_HAD_ERR ;
 int file_error (struct magic_set*,int ,char*) ;
 int free (int *) ;

int
file_reset(struct magic_set *ms, int checkloaded)
{
 if (checkloaded && ms->mlist[0] == ((void*)0)) {
  file_error(ms, 0, "no magic files loaded");
  return -1;
 }
 if (ms->o.buf) {
  free(ms->o.buf);
  ms->o.buf = ((void*)0);
 }
 if (ms->o.pbuf) {
  free(ms->o.pbuf);
  ms->o.pbuf = ((void*)0);
 }
 ms->event_flags &= ~EVENT_HAD_ERR;
 ms->error = -1;
 return 0;
}
