
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int subsegT ;
typedef int segT ;


 int subseg_get (char const*,int) ;
 int subseg_set_rest (int ,int ) ;

segT
subseg_force_new (const char *segname, subsegT subseg)
{
  segT secptr;

  secptr = subseg_get (segname, 1);
  subseg_set_rest (secptr, subseg);
  return secptr;
}
