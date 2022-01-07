
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CVMX_PKO_ILLEGAL_QUEUE ;
 int CVMX_PKO_MAX_PORTS_INTERFACE0 ;
 int CVMX_PKO_MAX_PORTS_INTERFACE1 ;
 int CVMX_PKO_QUEUES_PER_PORT_INTERFACE0 ;
 int CVMX_PKO_QUEUES_PER_PORT_INTERFACE1 ;
 int CVMX_PKO_QUEUES_PER_PORT_LOOP ;
 int CVMX_PKO_QUEUES_PER_PORT_PCI ;

__attribute__((used)) static inline int cvmx_pko_get_base_queue_per_core(int port, int core)
{







 if (port < CVMX_PKO_MAX_PORTS_INTERFACE0)
  return port * CVMX_PKO_QUEUES_PER_PORT_INTERFACE0 + core;
 else if (port >= 16 && port < 16 + CVMX_PKO_MAX_PORTS_INTERFACE1)
  return CVMX_PKO_MAX_PORTS_INTERFACE0 *
      CVMX_PKO_QUEUES_PER_PORT_INTERFACE0 + (port -
          16) *
      CVMX_PKO_QUEUES_PER_PORT_INTERFACE1 + core;
 else if ((port >= 32) && (port < 36))
  return CVMX_PKO_MAX_PORTS_INTERFACE0 *
      CVMX_PKO_QUEUES_PER_PORT_INTERFACE0 +
      CVMX_PKO_MAX_PORTS_INTERFACE1 *
      CVMX_PKO_QUEUES_PER_PORT_INTERFACE1 + (port -
          32) *
      CVMX_PKO_QUEUES_PER_PORT_PCI;
 else if ((port >= 36) && (port < 40))
  return CVMX_PKO_MAX_PORTS_INTERFACE0 *
      CVMX_PKO_QUEUES_PER_PORT_INTERFACE0 +
      CVMX_PKO_MAX_PORTS_INTERFACE1 *
      CVMX_PKO_QUEUES_PER_PORT_INTERFACE1 +
      4 * CVMX_PKO_QUEUES_PER_PORT_PCI + (port -
       36) *
      CVMX_PKO_QUEUES_PER_PORT_LOOP;
 else




  return CVMX_PKO_ILLEGAL_QUEUE;
}
