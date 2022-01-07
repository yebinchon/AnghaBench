
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pmask_t ;


 char PNL_PINPUT (int ) ;
 int phys_curr ;
 int phys_prev ;
 int phys_read ;
 int phys_read_prev ;
 int pprt ;
 char r_dtr (int ) ;
 int r_str (int ) ;
 char scan_mask_i ;
 char scan_mask_o ;
 int w_dtr (int ,char) ;

__attribute__((used)) static void phys_scan_contacts(void)
{
 int bit, bitval;
 char oldval;
 char bitmask;
 char gndmask;

 phys_prev = phys_curr;
 phys_read_prev = phys_read;
 phys_read = 0;

 oldval = r_dtr(pprt) | scan_mask_o;
 w_dtr(pprt, oldval & ~scan_mask_o);
 bitmask = PNL_PINPUT(r_str(pprt)) & scan_mask_i;
 w_dtr(pprt, oldval);




 gndmask = PNL_PINPUT(r_str(pprt)) & scan_mask_i;

 phys_read |= (pmask_t) gndmask << 40;

 if (bitmask != gndmask) {



  for (bit = 0; bit < 8; bit++) {
   bitval = 1 << bit;

   if (!(scan_mask_o & bitval))
    continue;

   w_dtr(pprt, oldval & ~bitval);
   bitmask = PNL_PINPUT(r_str(pprt)) & ~gndmask;
   phys_read |= (pmask_t) bitmask << (5 * bit);
  }
  w_dtr(pprt, oldval);
 }

 phys_curr =
     (phys_prev & (phys_read ^ phys_read_prev)) | (phys_read &
         ~(phys_read ^
           phys_read_prev));
}
