
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;



 unsigned char copy_mode ;
 int copy_range ;

__attribute__((used)) static inline int
__ipq_set_mode(unsigned char mode, unsigned int range)
{
 int status = 0;

 switch(mode) {
 case 129:
 case 130:
  copy_mode = mode;
  copy_range = 0;
  break;

 case 128:
  copy_mode = mode;
  copy_range = range;
  if (copy_range > 0xFFFF)
   copy_range = 0xFFFF;
  break;

 default:
  status = -EINVAL;

 }
 return status;
}
