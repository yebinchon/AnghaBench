
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct match {int m_ret; int m_name; } ;
struct TYPE_2__ {scalar_t__ ii_type; int ii_dtype; int ii_name; } ;
typedef TYPE_1__ iidesc_t ;


 scalar_t__ II_SOU ;
 scalar_t__ II_TYPE ;
 int streq (int ,int ) ;

__attribute__((used)) static int
matching_iidesc(void *arg1, void *arg2)
{
 iidesc_t *iidesc = arg1;
 struct match *match = arg2;
 if (!streq(iidesc->ii_name, match->m_name))
  return (0);

 if (iidesc->ii_type != II_TYPE && iidesc->ii_type != II_SOU)
  return (0);

 match->m_ret = iidesc->ii_dtype;
 return (-1);
}
