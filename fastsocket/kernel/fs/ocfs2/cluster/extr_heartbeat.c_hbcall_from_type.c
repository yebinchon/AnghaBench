
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct o2hb_callback {int dummy; } ;
typedef enum o2hb_callback_type { ____Placeholder_o2hb_callback_type } o2hb_callback_type ;


 int EINVAL ;
 struct o2hb_callback* ERR_PTR (int ) ;
 int O2HB_NUM_CB ;
 struct o2hb_callback* o2hb_callbacks ;

__attribute__((used)) static struct o2hb_callback *hbcall_from_type(enum o2hb_callback_type type)
{
 if (type == O2HB_NUM_CB)
  return ERR_PTR(-EINVAL);

 return &o2hb_callbacks[type];
}
