
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edgeport_serial {int serial; } ;
typedef int __u8 ;


 int EDGE_FW_BULK_MAX_PACKET_SIZE ;
 int bulk_xfer (int ,int *,int,int*) ;

__attribute__((used)) static int download_code(struct edgeport_serial *serial, __u8 *image,
       int image_length)
{
 int status = 0;
 int pos;
 int transfer;
 int done;


 for (pos = 0; pos < image_length; ) {

  transfer = image_length - pos;
  if (transfer > EDGE_FW_BULK_MAX_PACKET_SIZE)
   transfer = EDGE_FW_BULK_MAX_PACKET_SIZE;


  status = bulk_xfer(serial->serial, &image[pos],
       transfer, &done);
  if (status)
   break;

  pos += done;
 }

 return status;
}
