
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {int dummy; } ;
struct regulatory_request {int initiator; int alpha2; int intersect; int wiphy_idx; } ;
typedef enum reg_request_treatment { ____Placeholder_reg_request_treatment } reg_request_treatment ;


 int EINVAL ;




 int REG_REQ_ALREADY_SET ;
 int REG_REQ_IGNORE ;
 int REG_REQ_INTERSECT ;
 int REG_REQ_OK ;
 int WARN_ON (int ) ;
 struct regulatory_request* get_last_request () ;
 int is_an_alpha2 (int ) ;
 int reg_ignore_cell_hint (struct regulatory_request*) ;
 int reg_request_cell_base (struct regulatory_request*) ;
 int regdom_changes (int ) ;
 int unlikely (int) ;
 struct wiphy* wiphy_idx_to_wiphy (int ) ;

__attribute__((used)) static enum reg_request_treatment
get_reg_request_treatment(struct wiphy *wiphy,
     struct regulatory_request *pending_request)
{
 struct wiphy *last_wiphy = ((void*)0);
 struct regulatory_request *lr = get_last_request();


 if (!lr)
  return REG_REQ_OK;

 switch (pending_request->initiator) {
 case 131:
  return REG_REQ_OK;
 case 130:
  if (reg_request_cell_base(lr)) {

   if (regdom_changes(pending_request->alpha2))
    return REG_REQ_IGNORE;
   return REG_REQ_ALREADY_SET;
  }

  last_wiphy = wiphy_idx_to_wiphy(lr->wiphy_idx);

  if (unlikely(!is_an_alpha2(pending_request->alpha2)))
   return -EINVAL;
  if (lr->initiator == 130) {
   if (last_wiphy != wiphy) {






    if (regdom_changes(pending_request->alpha2))
     return REG_REQ_IGNORE;
    return REG_REQ_ALREADY_SET;
   }




   if (WARN_ON(regdom_changes(pending_request->alpha2)))
    return REG_REQ_OK;
   return REG_REQ_ALREADY_SET;
  }
  return 0;
 case 129:
  if (lr->initiator == 131) {
   if (regdom_changes(pending_request->alpha2))
    return REG_REQ_OK;
   return REG_REQ_ALREADY_SET;
  }






  if (lr->initiator == 129 &&
      !regdom_changes(pending_request->alpha2))
   return REG_REQ_ALREADY_SET;

  return REG_REQ_INTERSECT;
 case 128:
  if (reg_request_cell_base(pending_request))
   return reg_ignore_cell_hint(pending_request);

  if (reg_request_cell_base(lr))
   return REG_REQ_IGNORE;

  if (lr->initiator == 130)
   return REG_REQ_INTERSECT;




  if (lr->initiator == 128 &&
      lr->intersect)
   return REG_REQ_IGNORE;




  if ((lr->initiator == 131 ||
       lr->initiator == 129 ||
       lr->initiator == 128) &&
      regdom_changes(lr->alpha2))
   return REG_REQ_IGNORE;

  if (!regdom_changes(pending_request->alpha2))
   return REG_REQ_ALREADY_SET;

  return REG_REQ_OK;
 }

 return REG_REQ_IGNORE;
}
