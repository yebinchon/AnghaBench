
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zdev_t ;


 int ZM_MAC_REG_ACK_EXTENSION ;
 int ZM_MAC_REG_BACKOFF_PROTECT ;
 int ZM_MAC_REG_BASIC_RATE ;
 int ZM_MAC_REG_BCN_HT1 ;
 int ZM_MAC_REG_EIFS_AND_SIFS ;
 int ZM_MAC_REG_MANDATORY_RATE ;
 int ZM_MAC_REG_RETRY_MAX ;
 int ZM_MAC_REG_RTS_CTS_RATE ;
 int ZM_MAC_REG_RX_PE_DELAY ;
 int ZM_MAC_REG_RX_THRESHOLD ;
 int ZM_MAC_REG_SLOT_TIME ;
 int ZM_MAC_REG_SNIFFER ;
 int ZM_MAC_REG_TXOP_NOT_ENOUGH_INDICATION ;
 int zfDelayWriteInternalReg (int *,int,int) ;
 int zfFlushDelayWrite (int *) ;
 int zfUpdateDefaultQosParameter (int *,int ) ;

void zfInitMac(zdev_t* dev)
{



    zfDelayWriteInternalReg(dev, ZM_MAC_REG_ACK_EXTENSION, 0x40);





    zfDelayWriteInternalReg(dev, ZM_MAC_REG_RETRY_MAX, 0);


    zfDelayWriteInternalReg(dev, ZM_MAC_REG_SNIFFER, 0x2000000);







    zfDelayWriteInternalReg(dev, ZM_MAC_REG_RX_THRESHOLD, 0xc1f80);






    zfDelayWriteInternalReg(dev, ZM_MAC_REG_RX_PE_DELAY, 0x70);
    zfDelayWriteInternalReg(dev, ZM_MAC_REG_EIFS_AND_SIFS, 0xa144000);
    zfDelayWriteInternalReg(dev, ZM_MAC_REG_SLOT_TIME, 9<<10);


    zfDelayWriteInternalReg(dev, 0x1c3b2c, 0x19000000);


    zfDelayWriteInternalReg(dev, 0x1c3b38, 0x201);




    zfDelayWriteInternalReg(dev, ZM_MAC_REG_BCN_HT1, 0x8000170);


    zfDelayWriteInternalReg(dev, ZM_MAC_REG_BACKOFF_PROTECT, 0x105);



    zfDelayWriteInternalReg(dev, 0x1c3b9c, 0x10000a);

    zfDelayWriteInternalReg(dev, 0x1c368c, 0x0500ffff);

    zfDelayWriteInternalReg(dev, 0x1c3c40, 0x1);


    zfDelayWriteInternalReg(dev, ZM_MAC_REG_BASIC_RATE, 0x150f);
    zfDelayWriteInternalReg(dev, ZM_MAC_REG_MANDATORY_RATE, 0x150f);
    zfDelayWriteInternalReg(dev, ZM_MAC_REG_RTS_CTS_RATE, 0x10b01bb);


    zfDelayWriteInternalReg(dev, 0x1c3694, 0x4003C1E);


    zfDelayWriteInternalReg(dev, 0x1d0100, 0x3);
    zfDelayWriteInternalReg(dev, 0x1d0104, 0x3);


    zfDelayWriteInternalReg(dev, 0x1c3600, 0x3);


    zfDelayWriteInternalReg(dev, 0x1c3c50, 0xffff);


 zfDelayWriteInternalReg(dev, 0x1c3680, 0xf00008);
 zfDelayWriteInternalReg(dev, 0x1c362c, 0x0);



    zfDelayWriteInternalReg(dev, 0x1e1110, 0x4);

    zfDelayWriteInternalReg(dev, 0x1e1114, 0x80);


    zfDelayWriteInternalReg(dev, 0x1D4008, 0x73);


    zfDelayWriteInternalReg(dev, 0x1c3d7c, 0x110011);





    zfDelayWriteInternalReg(dev, 0x1c3bb0, 0x4);


    zfDelayWriteInternalReg(dev, ZM_MAC_REG_TXOP_NOT_ENOUGH_INDICATION, 0x141E0F48);


 zfDelayWriteInternalReg(dev, 0x1c3678, 0x70);
    zfFlushDelayWrite(dev);



    zfUpdateDefaultQosParameter(dev, 0);



    return;
}
