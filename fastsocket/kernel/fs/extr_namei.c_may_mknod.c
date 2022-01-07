
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mode_t ;


 int EINVAL ;
 int EPERM ;




 int S_IFMT ;



__attribute__((used)) static int may_mknod(mode_t mode)
{
 switch (mode & S_IFMT) {
 case 129:
 case 132:
 case 133:
 case 130:
 case 128:
 case 0:
  return 0;
 case 131:
  return -EPERM;
 default:
  return -EINVAL;
 }
}
