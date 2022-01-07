
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct comedi_device {int dummy; } ;


 int DEBI_CMD_WRWORD ;
 int DEBItransfer (struct comedi_device*) ;
 int P_DEBIAD ;
 int P_DEBICMD ;
 int WR7146 (int ,int) ;

__attribute__((used)) static void DEBIwrite(struct comedi_device *dev, uint16_t addr, uint16_t wdata)
{


 WR7146(P_DEBICMD, DEBI_CMD_WRWORD | addr);
 WR7146(P_DEBIAD, wdata);


 DEBItransfer(dev);
}
