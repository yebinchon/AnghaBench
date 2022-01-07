
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int equiv; int max; int min; int type; } ;
typedef TYPE_1__ value_range_t ;


 int set_value_range (TYPE_1__*,int ,int ,int ,int ) ;

__attribute__((used)) static inline void
copy_value_range (value_range_t *to, value_range_t *from)
{
  set_value_range (to, from->type, from->min, from->max, from->equiv);
}
