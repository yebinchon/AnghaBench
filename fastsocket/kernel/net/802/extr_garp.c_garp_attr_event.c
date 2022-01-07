
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct garp_attr {size_t state; } ;
struct garp_applicant {int dummy; } ;
typedef enum garp_event { ____Placeholder_garp_event } garp_event ;
typedef enum garp_applicant_state { ____Placeholder_garp_applicant_state } garp_applicant_state ;
struct TYPE_2__ {int state; int action; } ;





 int GARP_APPLICANT_INVALID ;
 int GARP_JOIN_IN ;
 int GARP_LEAVE_EMPTY ;
 int WARN_ON (int) ;
 TYPE_1__** garp_applicant_state_table ;
 int garp_attr_destroy (struct garp_applicant*,struct garp_attr*) ;
 int garp_pdu_append_attr (struct garp_applicant*,struct garp_attr*,int ) ;

__attribute__((used)) static void garp_attr_event(struct garp_applicant *app,
       struct garp_attr *attr, enum garp_event event)
{
 enum garp_applicant_state state;

 state = garp_applicant_state_table[attr->state][event].state;
 if (state == GARP_APPLICANT_INVALID)
  return;

 switch (garp_applicant_state_table[attr->state][event].action) {
 case 130:
  break;
 case 129:


  if (garp_pdu_append_attr(app, attr, GARP_JOIN_IN) < 0)
   return;
  break;
 case 128:
  garp_pdu_append_attr(app, attr, GARP_LEAVE_EMPTY);


  garp_attr_destroy(app, attr);
  return;
 default:
  WARN_ON(1);
 }

 attr->state = state;
}
