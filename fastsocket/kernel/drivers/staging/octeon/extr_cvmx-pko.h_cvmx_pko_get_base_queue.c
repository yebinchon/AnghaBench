
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cvmx_pko_get_base_queue_per_core (int,int ) ;

__attribute__((used)) static inline int cvmx_pko_get_base_queue(int port)
{
 return cvmx_pko_get_base_queue_per_core(port, 0);
}
