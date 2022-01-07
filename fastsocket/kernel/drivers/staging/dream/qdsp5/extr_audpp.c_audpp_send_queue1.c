
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mod; } ;


 int QDSP_uPAudPPCmd1Queue ;
 int msm_adsp_write (int ,int ,void*,unsigned int) ;
 TYPE_1__ the_audpp_state ;

int audpp_send_queue1(void *cmd, unsigned len)
{
 return msm_adsp_write(the_audpp_state.mod,
         QDSP_uPAudPPCmd1Queue, cmd, len);
}
