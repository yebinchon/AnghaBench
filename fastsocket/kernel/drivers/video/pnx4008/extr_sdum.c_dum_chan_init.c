
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 int BYTES_PER_CMDSTRING ;
 scalar_t__ CMDSTRING_BASEADDR ;
 scalar_t__ DUM_COM_BASE ;
 int MAX_DUM_CHANNELS ;
 int NR_OF_CMDSTRINGS ;
 int clear_channel (int) ;
 scalar_t__ ioremap_nocache (scalar_t__,int) ;
 int iounmap (scalar_t__*) ;
 int iowrite32 (scalar_t__,scalar_t__*) ;

__attribute__((used)) static void dum_chan_init(void)
{
 int i = 0, ch = 0;
 u32 *cmdptrs;
 u32 *cmdstrings;

 DUM_COM_BASE =
  CMDSTRING_BASEADDR + BYTES_PER_CMDSTRING * NR_OF_CMDSTRINGS;

 if ((cmdptrs =
      (u32 *) ioremap_nocache(DUM_COM_BASE,
         sizeof(u32) * NR_OF_CMDSTRINGS)) == ((void*)0))
  return;

 for (ch = 0; ch < NR_OF_CMDSTRINGS; ch++)
  iowrite32(CMDSTRING_BASEADDR + BYTES_PER_CMDSTRING * ch,
     cmdptrs + ch);

 for (ch = 0; ch < MAX_DUM_CHANNELS; ch++)
  clear_channel(ch);


 cmdstrings =
     (u32 *)ioremap_nocache(*cmdptrs,
       BYTES_PER_CMDSTRING * NR_OF_CMDSTRINGS);

 if (!cmdstrings)
  goto out;

 for (i = 0; i < NR_OF_CMDSTRINGS * BYTES_PER_CMDSTRING / sizeof(u32);
      i++)
  iowrite32(0, cmdstrings + i);

 iounmap((u32 *)cmdstrings);

out:
 iounmap((u32 *)cmdptrs);
}
