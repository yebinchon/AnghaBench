
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tdesc_t ;


 int * lookup_name (int ,char const*) ;
 int name_table ;

tdesc_t *
lookupname(const char *name1)
{
 return (lookup_name(name_table, name1));
}
