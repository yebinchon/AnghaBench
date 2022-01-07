
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbip_header_ret_submit {int error_count; int start_frame; int actual_length; int status; } ;


 int be32_to_cpus (int *) ;
 int cpu_to_be32s (int *) ;

__attribute__((used)) static void correct_endian_ret_submit(struct usbip_header_ret_submit *pdu,
        int send)
{
 if (send) {
  cpu_to_be32s(&pdu->status);
  cpu_to_be32s(&pdu->actual_length);
  cpu_to_be32s(&pdu->start_frame);
  cpu_to_be32s(&pdu->error_count);
 } else {
  be32_to_cpus(&pdu->status);
  be32_to_cpus(&pdu->actual_length);
  be32_to_cpus(&pdu->start_frame);
  be32_to_cpus(&pdu->error_count);
 }
}
