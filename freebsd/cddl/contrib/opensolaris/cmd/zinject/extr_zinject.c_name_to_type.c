
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int err_type_t ;


 int TYPE_INVAL ;
 int * errtable ;
 scalar_t__ strcmp (int ,char const*) ;

__attribute__((used)) static err_type_t
name_to_type(const char *arg)
{
 int i;
 for (i = 0; i < TYPE_INVAL; i++)
  if (strcmp(errtable[i], arg) == 0)
   return (i);

 return (TYPE_INVAL);
}
