
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int desc; } ;
typedef TYPE_1__ br_hash_class ;


 unsigned int BR_HASHDESC_OUT_MASK ;
 int BR_HASHDESC_OUT_OFF ;

__attribute__((used)) static inline size_t
hash_size(const br_hash_class *dig)
{
 return (unsigned)(dig->desc >> BR_HASHDESC_OUT_OFF)
  & BR_HASHDESC_OUT_MASK;
}
