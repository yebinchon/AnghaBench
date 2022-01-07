
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ voidp ;
struct nisplus_search_callback_data {int value; } ;
typedef int nis_object ;
typedef int nis_name ;


 int ENTRY_LEN (int const*,int) ;
 int ENTRY_VAL (int const*,int) ;
 int TRUE ;
 int dlog (char*,int ) ;
 int strnsave (int ,int ) ;

__attribute__((used)) static int
nisplus_search_callback(const nis_name key, const nis_object *value, voidp opaquedata)
{
  struct nisplus_search_callback_data *data = (struct nisplus_search_callback_data *) opaquedata;

  dlog("NISplus search callback for <%s>", ENTRY_VAL(value, 0));
  dlog("NISplus search callback value <%s>", ENTRY_VAL(value, 1));

  data->value = strnsave(ENTRY_VAL(value, 1), ENTRY_LEN(value, 1));
  return TRUE;
}
