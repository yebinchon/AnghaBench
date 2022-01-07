
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxacru_data {int dummy; } ;


 int CM_REQUEST_CARD_GET_STATUS ;
 int cxacru_cm (struct cxacru_data*,int ,int *,int ,int *,int ) ;
 int dbg (char*,int) ;

__attribute__((used)) static int cxacru_card_status(struct cxacru_data *instance)
{
 int ret = cxacru_cm(instance, CM_REQUEST_CARD_GET_STATUS, ((void*)0), 0, ((void*)0), 0);
 if (ret < 0) {
  dbg("cxacru_adsl_start: CARD_GET_STATUS returned %d", ret);
  return ret;
 }
 return 0;
}
