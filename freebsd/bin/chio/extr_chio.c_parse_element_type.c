
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int16_t ;
struct TYPE_2__ {scalar_t__ et_type; int * et_name; } ;


 TYPE_1__* elements ;
 int errx (int,char*,char*) ;
 scalar_t__ strcmp (int *,char*) ;

__attribute__((used)) static u_int16_t
parse_element_type(char *cp)
{
 int i;

 for (i = 0; elements[i].et_name != ((void*)0); ++i)
  if (strcmp(elements[i].et_name, cp) == 0)
   return ((u_int16_t)elements[i].et_type);

 errx(1, "invalid element type `%s'", cp);

}
