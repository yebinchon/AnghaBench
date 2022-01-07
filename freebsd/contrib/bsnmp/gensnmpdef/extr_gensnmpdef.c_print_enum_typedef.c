
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int integer32; } ;
struct TYPE_8__ {TYPE_1__ value; } ;
struct TYPE_9__ {int name; TYPE_2__ value; } ;
typedef int SmiType ;
typedef TYPE_3__ SmiNamedNumber ;


 int printf (char*,int ,int ) ;
 TYPE_3__* smiGetFirstNamedNumber (int *) ;
 TYPE_3__* smiGetNextNamedNumber (TYPE_3__*) ;

__attribute__((used)) static void
print_enum_typedef(SmiType *t)
{
 SmiNamedNumber *nnum;

 for (nnum = smiGetFirstNamedNumber(t); nnum != ((void*)0);
     nnum = smiGetNextNamedNumber(nnum)) {
  printf("\t%ld %s\n" , nnum->value.value.integer32, nnum->name);
 }
}
