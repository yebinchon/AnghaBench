
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;




 int GEU ;



 int LEU ;



 int NE ;
 int ORDERED ;

 int UNGE ;

 int UNKNOWN ;
 int UNLE ;



int
comparison_dominates_p (enum rtx_code code1, enum rtx_code code2)
{



  if (code1 == UNKNOWN || code2 == UNKNOWN)
    return 0;

  if (code1 == code2)
    return 1;

  switch (code1)
    {
    case 131:
      if (code2 == UNLE || code2 == UNGE)
 return 1;
      break;

    case 139:
      if (code2 == 135 || code2 == LEU || code2 == 138 || code2 == GEU
   || code2 == ORDERED)
 return 1;
      break;

    case 129:
      if (code2 == UNLE || code2 == NE)
 return 1;
      break;

    case 134:
      if (code2 == 135 || code2 == NE || code2 == ORDERED || code2 == 133)
 return 1;
      break;

    case 130:
      if (code2 == UNGE || code2 == NE)
 return 1;
      break;

    case 137:
      if (code2 == 138 || code2 == NE || code2 == ORDERED || code2 == 133)
 return 1;
      break;

    case 138:
    case 135:
      if (code2 == ORDERED)
 return 1;
      break;

    case 133:
      if (code2 == NE || code2 == ORDERED)
 return 1;
      break;

    case 132:
      if (code2 == LEU || code2 == NE)
 return 1;
      break;

    case 136:
      if (code2 == GEU || code2 == NE)
 return 1;
      break;

    case 128:
      if (code2 == NE || code2 == 131 || code2 == UNLE || code2 == 129
   || code2 == UNGE || code2 == 130)
 return 1;
      break;

    default:
      break;
    }

  return 0;
}
