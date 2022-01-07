
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int (* w1_slave_found_callback ) (struct w1_master*,int) ;
typedef int u8 ;
typedef int u64 ;
struct w1_master {int dev; int max_slave_count; } ;


 int dev_dbg (int *,char*) ;
 scalar_t__ kthread_should_stop () ;
 scalar_t__ w1_reset_bus (struct w1_master*) ;
 int w1_triplet (struct w1_master*,int) ;
 int w1_write_8 (struct w1_master*,int) ;

void w1_search(struct w1_master *dev, u8 search_type, w1_slave_found_callback cb)
{
 u64 last_rn, rn, tmp64;
 int i, slave_count = 0;
 int last_zero, last_device;
 int search_bit, desc_bit;
 u8 triplet_ret = 0;

 search_bit = 0;
 rn = last_rn = 0;
 last_device = 0;
 last_zero = -1;

 desc_bit = 64;

 while ( !last_device && (slave_count++ < dev->max_slave_count) ) {
  last_rn = rn;
  rn = 0;







  if (w1_reset_bus(dev)) {
   dev_dbg(&dev->dev, "No devices present on the wire.\n");
   break;
  }


  w1_write_8(dev, search_type);
  for (i = 0; i < 64; ++i) {

   if (i == desc_bit)
    search_bit = 1;
   else if (i > desc_bit)
    search_bit = 0;
   else
    search_bit = ((last_rn >> i) & 0x1);


   triplet_ret = w1_triplet(dev, search_bit);


   if ( (triplet_ret & 0x03) == 0x03 )
    break;


   if (triplet_ret == 0)
    last_zero = i;


   tmp64 = (triplet_ret >> 2);
   rn |= (tmp64 << i);

   if (kthread_should_stop()) {
    dev_dbg(&dev->dev, "Abort w1_search\n");
    return;
   }
  }

  if ( (triplet_ret & 0x03) != 0x03 ) {
   if ( (desc_bit == last_zero) || (last_zero < 0))
    last_device = 1;
   desc_bit = last_zero;
   cb(dev, rn);
  }
 }
}
