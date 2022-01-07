
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fsg_dev {unsigned int bulk_out_maxpacket; } ;
struct fsg_buffhd {unsigned int bulk_out_intended_length; TYPE_1__* outreq; } ;
struct TYPE_2__ {unsigned int length; } ;



__attribute__((used)) static void set_bulk_out_req_length(struct fsg_dev *fsg,
  struct fsg_buffhd *bh, unsigned int length)
{
 unsigned int rem;

 bh->bulk_out_intended_length = length;
 rem = length % fsg->bulk_out_maxpacket;
 if (rem > 0)
  length += fsg->bulk_out_maxpacket - rem;
 bh->outreq->length = length;
}
