
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_query_join_packet {int dummy; } ;
union dlm_query_join_response {struct dlm_query_join_packet packet; int intval; } ;
typedef int u32 ;


 int cpu_to_be32 (int ) ;

__attribute__((used)) static void dlm_query_join_wire_to_packet(u32 wire,
       struct dlm_query_join_packet *packet)
{
 union dlm_query_join_response response;

 response.intval = cpu_to_be32(wire);
 *packet = response.packet;
}
