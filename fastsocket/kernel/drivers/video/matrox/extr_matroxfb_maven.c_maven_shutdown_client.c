
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct maven_data {struct matrox_fb_info* primary_head; } ;
struct TYPE_4__ {int lock; } ;
struct matrox_fb_info {TYPE_2__ altout; TYPE_1__* outputs; } ;
struct i2c_client {int dummy; } ;
struct TYPE_3__ {int mode; int * data; int * output; int src; } ;


 int MATROXFB_OUTPUT_MODE_MONITOR ;
 int MATROXFB_SRC_NONE ;
 int down_write (int *) ;
 struct maven_data* i2c_get_clientdata (struct i2c_client*) ;
 int up_write (int *) ;

__attribute__((used)) static int maven_shutdown_client(struct i2c_client* clnt) {
 struct maven_data* md = i2c_get_clientdata(clnt);

 if (md->primary_head) {
  struct matrox_fb_info *minfo = md->primary_head;

  down_write(&minfo->altout.lock);
  minfo->outputs[1].src = MATROXFB_SRC_NONE;
  minfo->outputs[1].output = ((void*)0);
  minfo->outputs[1].data = ((void*)0);
  minfo->outputs[1].mode = MATROXFB_OUTPUT_MODE_MONITOR;
  up_write(&minfo->altout.lock);
  md->primary_head = ((void*)0);
 }
 return 0;
}
