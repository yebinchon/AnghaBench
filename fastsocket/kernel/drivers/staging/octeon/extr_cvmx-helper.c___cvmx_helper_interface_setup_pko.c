
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int cvmx_helper_get_ipd_port (int,int ) ;
 int cvmx_override_pko_queue_priority (int,int*) ;
 int cvmx_pko_config_port (int,int ,int ,int*) ;
 int cvmx_pko_get_base_queue_per_core (int,int ) ;
 int cvmx_pko_get_num_queues (int) ;
 int* interface_port_count ;

__attribute__((used)) static int __cvmx_helper_interface_setup_pko(int interface)
{
 uint64_t priorities[16] =
     { 8, 7, 6, 5, 4, 3, 2, 1, 8, 7, 6, 5, 4, 3, 2, 1 };






 int ipd_port = cvmx_helper_get_ipd_port(interface, 0);
 int num_ports = interface_port_count[interface];
 while (num_ports--) {




  if (cvmx_override_pko_queue_priority)
   cvmx_override_pko_queue_priority(ipd_port, priorities);

  cvmx_pko_config_port(ipd_port,
         cvmx_pko_get_base_queue_per_core(ipd_port,
              0),
         cvmx_pko_get_num_queues(ipd_port),
         priorities);
  ipd_port++;
 }
 return 0;
}
