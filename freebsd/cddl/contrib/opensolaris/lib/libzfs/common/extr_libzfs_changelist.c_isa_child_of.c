
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int boolean_t ;


 int B_FALSE ;
 int B_TRUE ;
 int strlen (char const*) ;
 scalar_t__ strncmp (char const*,char const*,int) ;

boolean_t
isa_child_of(const char *dataset, const char *parent)
{
 int len;

 len = strlen(parent);

 if (strncmp(dataset, parent, len) == 0 &&
     (dataset[len] == '@' || dataset[len] == '/' ||
     dataset[len] == '\0'))
  return (B_TRUE);
 else
  return (B_FALSE);

}
