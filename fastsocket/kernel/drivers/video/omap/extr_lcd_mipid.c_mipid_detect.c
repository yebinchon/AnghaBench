
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct mipid_platform_data {int data_lines; } ;
struct TYPE_6__ {char* name; int data_lines; } ;
struct mipid_device {int revision; TYPE_2__ panel; TYPE_1__* spi; int esd_check; } ;
struct TYPE_7__ {struct mipid_platform_data* platform_data; } ;
struct TYPE_5__ {TYPE_3__ dev; } ;


 int ENODEV ;
 int ENOENT ;
 int MIPID_CMD_READ_DISP_ID ;
 int dev_dbg (TYPE_3__*,char*,int,int,int) ;
 int dev_err (TYPE_3__*,char*) ;
 int ls041y3_esd_check ;
 int mipid_read (struct mipid_device*,int ,int*,int) ;
 int pr_info (char*,char*,int,int ) ;

__attribute__((used)) static int mipid_detect(struct mipid_device *md)
{
 struct mipid_platform_data *pdata;
 u8 display_id[3];

 pdata = md->spi->dev.platform_data;
 if (pdata == ((void*)0)) {
  dev_err(&md->spi->dev, "missing platform data\n");
  return -ENOENT;
 }

 mipid_read(md, MIPID_CMD_READ_DISP_ID, display_id, 3);
 dev_dbg(&md->spi->dev, "MIPI display ID: %02x%02x%02x\n",
  display_id[0], display_id[1], display_id[2]);

 switch (display_id[0]) {
 case 0x45:
  md->panel.name = "lph8923";
  break;
 case 0x83:
  md->panel.name = "ls041y3";
  md->esd_check = ls041y3_esd_check;
  break;
 default:
  md->panel.name = "unknown";
  dev_err(&md->spi->dev, "invalid display ID\n");
  return -ENODEV;
 }

 md->revision = display_id[1];
 md->panel.data_lines = pdata->data_lines;
 pr_info("omapfb: %s rev %02x LCD detected, %d data lines\n",
   md->panel.name, md->revision, md->panel.data_lines);

 return 0;
}
