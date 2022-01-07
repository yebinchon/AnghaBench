
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;


 int TYPE_LENGTH (struct type*) ;
 int i386_fp_regnum_p (int) ;
 int i386_next_regnum (int) ;

__attribute__((used)) static int
i386_convert_register_p (int regnum, struct type *type)
{
  int len = TYPE_LENGTH (type);






  if (len > 4 && len % 4 == 0)
    {
      int last_regnum = regnum;

      while (len > 4)
 {
   last_regnum = i386_next_regnum (last_regnum);
   len -= 4;
 }

      if (last_regnum != -1)
 return 1;
    }

  return i386_fp_regnum_p (regnum);
}
