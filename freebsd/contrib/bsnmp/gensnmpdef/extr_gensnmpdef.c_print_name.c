
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* name; } ;
typedef TYPE_1__ SmiNode ;


 int printf (char*,...) ;

__attribute__((used)) static void
print_name(SmiNode *n)
{
 char *p;

 for (p = n->name; *p != '\0'; p++) {
  if (*p == '-')
   printf("_");
  else
   printf("%c", *p);
 }
}
