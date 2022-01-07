
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u_int ;
struct TYPE_4__ {char* name; size_t basetype; } ;
typedef TYPE_1__ SmiType ;
typedef int SmiNode ;


 scalar_t__ SMI_BASETYPE_BITS ;
 scalar_t__ SMI_BASETYPE_ENUM ;
 scalar_t__ SMI_BASETYPE_OCTETSTRING ;
 int assert (int ) ;
 int print_enum (TYPE_1__*) ;
 int printf (char*,char*) ;
 TYPE_1__* smiGetNodeType (int *) ;
 scalar_t__ strcmp (char*,char*) ;
 char** type_map ;
 char** type_names ;

__attribute__((used)) static void
print_type(SmiNode *n)
{
 SmiType *type;
 u_int m;

 type = smiGetNodeType(n);
 assert(type != ((void*)0));

 if (type->name != ((void*)0)) {
  for (m = 0; type_map[m] != ((void*)0); m += 2)
   if (strcmp(type_map[m], type->name) == 0) {
    printf("%s", type_map[m + 1]);
    return;
   }
 }
 printf("%s", type_names[type->basetype]);

 if (type->basetype == SMI_BASETYPE_ENUM ||
     type->basetype == SMI_BASETYPE_BITS)
  print_enum(type);

 else if (type->basetype == SMI_BASETYPE_OCTETSTRING &&
     type->name != ((void*)0))
  printf(" | %s", type->name);
}
