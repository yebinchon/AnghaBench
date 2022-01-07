
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sw_flow {scalar_t__ byte_count; scalar_t__ packet_count; scalar_t__ tcp_flags; scalar_t__ used; } ;



__attribute__((used)) static void clear_stats(struct sw_flow *flow)
{
 flow->used = 0;
 flow->tcp_flags = 0;
 flow->packet_count = 0;
 flow->byte_count = 0;
}
