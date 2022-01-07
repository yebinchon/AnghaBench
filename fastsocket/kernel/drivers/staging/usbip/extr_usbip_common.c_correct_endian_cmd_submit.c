
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbip_header_cmd_submit {int interval; int number_of_packets; int start_frame; int transfer_buffer_length; int transfer_flags; } ;


 int be32_to_cpu (int ) ;
 int be32_to_cpus (int *) ;
 int cpu_to_be32 (int ) ;
 int cpu_to_be32s (int *) ;

__attribute__((used)) static void correct_endian_cmd_submit(struct usbip_header_cmd_submit *pdu,
        int send)
{
 if (send) {
  pdu->transfer_flags = cpu_to_be32(pdu->transfer_flags);

  cpu_to_be32s(&pdu->transfer_buffer_length);
  cpu_to_be32s(&pdu->start_frame);
  cpu_to_be32s(&pdu->number_of_packets);
  cpu_to_be32s(&pdu->interval);
 } else {
  pdu->transfer_flags = be32_to_cpu(pdu->transfer_flags);

  be32_to_cpus(&pdu->transfer_buffer_length);
  be32_to_cpus(&pdu->start_frame);
  be32_to_cpus(&pdu->number_of_packets);
  be32_to_cpus(&pdu->interval);
 }
}
