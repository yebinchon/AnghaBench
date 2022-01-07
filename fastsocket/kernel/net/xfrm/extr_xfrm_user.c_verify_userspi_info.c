
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int proto; } ;
struct TYPE_4__ {TYPE_1__ id; } ;
struct xfrm_userspi_info {int max; scalar_t__ min; TYPE_2__ info; } ;


 int EINVAL ;




__attribute__((used)) static int verify_userspi_info(struct xfrm_userspi_info *p)
{
 switch (p->info.id.proto) {
 case 130:
 case 128:
  break;

 case 129:

  if (p->max >= 0x10000)
   return -EINVAL;
  break;

 default:
  return -EINVAL;
 }

 if (p->min > p->max)
  return -EINVAL;

 return 0;
}
