
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct comedi_device {int dummy; } ;


 int DEBI_CMD_RDWORD ;
 int DEBItransfer (struct comedi_device*) ;
 int P_DEBIAD ;
 int P_DEBICMD ;
 scalar_t__ RR7146 (int ) ;
 int WR7146 (int ,int) ;

__attribute__((used)) static uint16_t DEBIread(struct comedi_device *dev, uint16_t addr)
{
 uint16_t retval;


 WR7146(P_DEBICMD, DEBI_CMD_RDWORD | addr);


 DEBItransfer(dev);


 retval = (uint16_t) RR7146(P_DEBIAD);


 return retval;
}
