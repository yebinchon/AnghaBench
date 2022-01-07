
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ui ;
typedef int u_int ;
struct TYPE_6__ {int fh_data; } ;
struct TYPE_5__ {int fh_data; } ;
struct TYPE_4__ {int fh_data; } ;


 int INVALIDID ;
 int ROOTID ;
 int SLINKID ;
 int memcpy (int ,int *,int) ;
 TYPE_3__ root ;
 TYPE_2__ slink ;
 TYPE_1__ un_fhandle ;

void
hlfsd_init_filehandles(void)
{
  u_int ui;

  ui = ROOTID;
  memcpy(root.fh_data, &ui, sizeof(ui));

  ui = SLINKID;
  memcpy(slink.fh_data, &ui, sizeof(ui));

  ui = INVALIDID;
  memcpy(un_fhandle.fh_data, &ui, sizeof(ui));
}
