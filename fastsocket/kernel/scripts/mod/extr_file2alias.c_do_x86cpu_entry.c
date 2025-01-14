
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct x86_cpu_id {scalar_t__ feature; scalar_t__ family; scalar_t__ model; scalar_t__ vendor; } ;


 int ADD (char*,char*,int,scalar_t__) ;
 void* TO_NATIVE (scalar_t__) ;
 scalar_t__ X86_FAMILY_ANY ;
 scalar_t__ X86_FEATURE_ANY ;
 scalar_t__ X86_MODEL_ANY ;
 scalar_t__ X86_VENDOR_ANY ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;

__attribute__((used)) static int do_x86cpu_entry(const char *filename, struct x86_cpu_id *id,
      char *alias)
{
 id->feature = TO_NATIVE(id->feature);
 id->family = TO_NATIVE(id->family);
 id->model = TO_NATIVE(id->model);
 id->vendor = TO_NATIVE(id->vendor);

 strcpy(alias, "x86cpu:");
 ADD(alias, "vendor:", id->vendor != X86_VENDOR_ANY, id->vendor);
 ADD(alias, ":family:", id->family != X86_FAMILY_ANY, id->family);
 ADD(alias, ":model:", id->model != X86_MODEL_ANY, id->model);
 ADD(alias, ":feature:*,", id->feature != X86_FEATURE_ANY, id->feature);
 strcat(alias, ",*");
 return 1;
}
