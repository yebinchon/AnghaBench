
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;




 int CHAR_TYPE_SIZE ;



 int FLOAT_TYPE_SIZE ;


 int INT_TYPE_SIZE ;
 int SHORT_TYPE_SIZE ;
 int TREE_CODE (int ) ;
 int TREE_TYPE (int ) ;
 int TYPE_PRECISION (int ) ;
 int TYPE_UNSIGNED (int ) ;



 int gcc_unreachable () ;

unsigned long
sparc_type_code (register tree type)
{
  register unsigned long qualifiers = 0;
  register unsigned shift;






  for (shift = 6; shift < 30; shift += 2, type = TREE_TYPE (type))
    {
      switch (TREE_CODE (type))
 {
 case 141:
   return qualifiers;

 case 145:
   qualifiers |= (3 << shift);
   break;

 case 140:
 case 137:
   qualifiers |= (2 << shift);
   break;

 case 135:
 case 131:
 case 136:
   qualifiers |= (1 << shift);
   break;

 case 132:
   return (qualifiers | 8);

 case 130:
 case 134:
   return (qualifiers | 9);

 case 142:
   return (qualifiers | 10);

 case 128:
   return (qualifiers | 16);

 case 139:


   if (TREE_TYPE (type) != 0)
     break;
   if (TYPE_PRECISION (type) <= CHAR_TYPE_SIZE)
     return (qualifiers | (TYPE_UNSIGNED (type) ? 12 : 2));

   else if (TYPE_PRECISION (type) <= SHORT_TYPE_SIZE)
     return (qualifiers | (TYPE_UNSIGNED (type) ? 13 : 3));

   else if (TYPE_PRECISION (type) <= INT_TYPE_SIZE)
     return (qualifiers | (TYPE_UNSIGNED (type) ? 14 : 4));

   else
     return (qualifiers | (TYPE_UNSIGNED (type) ? 15 : 5));

 case 133:


   if (TREE_TYPE (type) != 0)
     break;




   if (TYPE_PRECISION (type) == FLOAT_TYPE_SIZE)
     return (qualifiers | 6);

   else
     return (qualifiers | 7);

 case 143:



   return (qualifiers | 7);

 case 129:
 case 144:
 case 138:
   return qualifiers;

 default:
   gcc_unreachable ();
        }
    }

  return qualifiers;
}
