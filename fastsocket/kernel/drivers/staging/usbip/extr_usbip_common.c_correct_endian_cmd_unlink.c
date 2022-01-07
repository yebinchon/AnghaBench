
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbip_header_cmd_unlink {int seqnum; } ;


 int be32_to_cpu (int ) ;
 int cpu_to_be32 (int ) ;

__attribute__((used)) static void correct_endian_cmd_unlink(struct usbip_header_cmd_unlink *pdu,
        int send)
{
 if (send)
  pdu->seqnum = cpu_to_be32(pdu->seqnum);
 else
  pdu->seqnum = be32_to_cpu(pdu->seqnum);
}
