
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int * transfer_buffer; } ;
struct mon_reader_bin {int dummy; } ;


 int mon_copy_to_buff (struct mon_reader_bin const*,unsigned int,int *,unsigned int) ;

__attribute__((used)) static char mon_bin_get_data(const struct mon_reader_bin *rp,
    unsigned int offset, struct urb *urb, unsigned int length)
{

 if (urb->transfer_buffer == ((void*)0))
  return 'Z';
 mon_copy_to_buff(rp, offset, urb->transfer_buffer, length);
 return 0;
}
