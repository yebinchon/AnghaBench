
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lapb_cb {int dummy; } ;


 int LAPB_COMMAND ;
 int lapb_enquiry_response (struct lapb_cb*) ;

void lapb_check_need_response(struct lapb_cb *lapb, int type, int pf)
{
 if (type == LAPB_COMMAND && pf)
  lapb_enquiry_response(lapb);
}
