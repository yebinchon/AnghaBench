
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int ENAMETOOLONG ;

int
affs_check_name(const unsigned char *name, int len)
{
 int i;

 if (len > 30)



  len = 30;


 for (i = 0; i < len; i++) {
  if (name[i] < ' ' || name[i] == ':'
      || (name[i] > 0x7e && name[i] < 0xa0))
   return -EINVAL;
 }

 return 0;
}
