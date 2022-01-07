
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ voidp ;
struct nis_callback_data {int ncd_m; int (* ncd_fn ) (int ,char*,char*) ;} ;
typedef int nis_object ;
typedef int nis_name ;


 int ENTRY_LEN (int const*,int) ;
 int ENTRY_VAL (int const*,int) ;
 int FALSE ;
 int dlog (char*,char*,char*) ;
 char* strnsave (int ,int ) ;
 int stub1 (int ,char*,char*) ;

__attribute__((used)) static int
nisplus_callback(const nis_name key, const nis_object *value, voidp opaquedata)
{
  char *kp = strnsave(ENTRY_VAL(value, 0), ENTRY_LEN(value, 0));
  char *vp = strnsave(ENTRY_VAL(value, 1), ENTRY_LEN(value, 1));
  struct nis_callback_data *data = (struct nis_callback_data *) opaquedata;

  dlog("NISplus callback for <%s,%s>", kp, vp);

  (*data->ncd_fn) (data->ncd_m, kp, vp);




  return FALSE;
}
