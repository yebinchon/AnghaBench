
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
typedef int LONGEST ;


 char* TYPE_FIELD_NAME (struct type*,int) ;
 int ada_scan_number (char const*,int,int *,int*) ;

int
ada_in_variant (LONGEST val, struct type *type, int field_num)
{
  const char *name = TYPE_FIELD_NAME (type, field_num);
  int p;

  p = 0;
  while (1)
    {
      switch (name[p])
 {
 case '\0':
   return 0;
 case 'S':
   {
     LONGEST W;
     if (!ada_scan_number (name, p + 1, &W, &p))
       return 0;
     if (val == W)
       return 1;
     break;
   }
 case 'R':
   {
     LONGEST L, U;
     if (!ada_scan_number (name, p + 1, &L, &p)
  || name[p] != 'T' || !ada_scan_number (name, p + 1, &U, &p))
       return 0;
     if (val >= L && val <= U)
       return 1;
     break;
   }
 case 'O':
   return 1;
 default:
   return 0;
 }
    }
}
