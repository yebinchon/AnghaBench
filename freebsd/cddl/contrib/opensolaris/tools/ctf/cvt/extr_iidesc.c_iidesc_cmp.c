
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ ii_type; int ii_name; } ;
typedef TYPE_1__ iidesc_t ;
struct TYPE_4__ {TYPE_1__* iif_ret; TYPE_1__* iif_tgt; } ;
typedef TYPE_2__ iidesc_find_t ;


 int streq (int ,int ) ;

__attribute__((used)) static int
iidesc_cmp(void *arg1, void *arg2)
{
 iidesc_t *src = arg1;
 iidesc_find_t *find = arg2;
 iidesc_t *tgt = find->iif_tgt;

 if (src->ii_type != tgt->ii_type ||
     !streq(src->ii_name, tgt->ii_name))
  return (0);

 find->iif_ret = src;

 return (-1);
}
