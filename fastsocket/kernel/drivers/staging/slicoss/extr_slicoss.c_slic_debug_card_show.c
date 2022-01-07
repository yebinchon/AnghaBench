
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint ;
struct slic_config {int FruFormat; int OEMFruFormat; int NwClkCtrls; int PMECapab; int NetIntPin1; int DramRomFn; int DbgDevId; int Pcistatus; int MaxLat; int MinGrant; TYPE_1__* macinfo; int RevisionId; int DeviceId; int VendorId; int OemFru; int atk_fru; } ;
struct sliccard {int card_size; int adapters_allocated; int pingstatus; int gennumber; struct adapter** adapter; int adapters_activated; int slotnumber; int busnumber; struct slic_config config; } ;
struct seq_file {struct sliccard* private; } ;
struct adapter {scalar_t__ irq; int linkspeed; int linkduplex; int linkstate; int state; int physport; } ;
struct TYPE_2__ {int * macaddrA; } ;


 int ASSERT (int) ;

 int GB_RCVUCODE_VERS_DATE ;
 int GB_RCVUCODE_VERS_STRING ;
 int MOJAVE_UCODE_VERS_DATE ;
 int MOJAVE_UCODE_VERS_STRING ;
 int SLIC_DUPLEX (int ) ;
 int SLIC_LINKSTATE (int ) ;
 int SLIC_NBR_MACS ;
 int SLIC_RCVQ_ENTRIES ;
 int SLIC_SPEED (int ) ;




 int seq_printf (struct seq_file*,char*,...) ;
 int seq_sprintf (struct seq_file*,char*,unsigned char,unsigned char,unsigned char,...) ;
 int slic_proc_version ;
 int slic_product_name ;
 int slic_vendor ;

__attribute__((used)) static int slic_debug_card_show(struct seq_file *seq, void *v)
{
 seq_printf(seq, "driver_version           : %s\n", slic_proc_version);
 seq_printf(seq, "Microcode versions:           \n");
 seq_printf(seq, "    Gigabit (gb)         : %s %s\n",
      MOJAVE_UCODE_VERS_STRING, MOJAVE_UCODE_VERS_DATE);
 seq_printf(seq, "    Gigabit Receiver     : %s %s\n",
      GB_RCVUCODE_VERS_STRING, GB_RCVUCODE_VERS_DATE);
 seq_printf(seq, "Vendor                   : %s\n", slic_vendor);
 seq_printf(seq, "Product Name             : %s\n", slic_product_name);
 return 0;
}
