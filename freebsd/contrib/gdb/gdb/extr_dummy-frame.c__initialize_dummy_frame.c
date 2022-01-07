
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int add_cmd (char*,int ,int ,char*,int *) ;
 int class_maintenance ;
 int maintenance_print_dummy_frames ;
 int maintenanceprintlist ;

void
_initialize_dummy_frame (void)
{
  add_cmd ("dummy-frames", class_maintenance, maintenance_print_dummy_frames,
    "Print the contents of the internal dummy-frame stack.",
    &maintenanceprintlist);

}
