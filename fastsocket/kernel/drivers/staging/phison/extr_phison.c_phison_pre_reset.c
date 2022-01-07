
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_port {int dev; int cbl; } ;
struct ata_link {struct ata_port* ap; } ;


 int ATA_CBL_NONE ;
 int ata_std_prereset (struct ata_link*,unsigned long) ;
 int dev_dbg (int ,char*,int) ;

__attribute__((used)) static int phison_pre_reset(struct ata_link *link, unsigned long deadline)
{
 int ret;
 struct ata_port *ap = link->ap;

 ap->cbl = ATA_CBL_NONE;
 ret = ata_std_prereset(link, deadline);
 dev_dbg(ap->dev, "phison_pre_reset(), ret = %x\n", ret);
 return ret;
}
