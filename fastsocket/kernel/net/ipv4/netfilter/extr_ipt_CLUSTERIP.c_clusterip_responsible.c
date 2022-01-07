
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int32_t ;
struct clusterip_config {int local_nodes; } ;


 int test_bit (scalar_t__,int *) ;

__attribute__((used)) static inline int
clusterip_responsible(const struct clusterip_config *config, u_int32_t hash)
{
 return test_bit(hash - 1, &config->local_nodes);
}
