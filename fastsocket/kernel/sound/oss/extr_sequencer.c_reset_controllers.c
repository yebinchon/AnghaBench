
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char* ctrl_def_values ;

__attribute__((used)) static void reset_controllers(int dev, unsigned char *controller, int update_dev)
{
 int i;
 for (i = 0; i < 128; i++)
  controller[i] = ctrl_def_values[i];
}
