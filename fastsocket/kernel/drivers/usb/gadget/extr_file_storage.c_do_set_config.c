
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct fsg_dev {scalar_t__ config; TYPE_1__* gadget; } ;
struct TYPE_2__ {int speed; } ;


 int DBG (struct fsg_dev*,char*) ;
 int INFO (struct fsg_dev*,char*,char*,scalar_t__) ;



 int do_set_interface (struct fsg_dev*,int) ;

__attribute__((used)) static int do_set_config(struct fsg_dev *fsg, u8 new_config)
{
 int rc = 0;


 if (fsg->config != 0) {
  DBG(fsg, "reset config\n");
  fsg->config = 0;
  rc = do_set_interface(fsg, -1);
 }


 if (new_config != 0) {
  fsg->config = new_config;
  if ((rc = do_set_interface(fsg, 0)) != 0)
   fsg->config = 0;
  else {
   char *speed;

   switch (fsg->gadget->speed) {
   case 128: speed = "low"; break;
   case 130: speed = "full"; break;
   case 129: speed = "high"; break;
   default: speed = "?"; break;
   }
   INFO(fsg, "%s speed config #%d\n", speed, fsg->config);
  }
 }
 return rc;
}
