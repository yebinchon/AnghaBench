
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
struct readelf {int elf; } ;


 scalar_t__ SHN_UNDEF ;
 int elf_errno () ;
 char* elf_strptr (int ,scalar_t__,int ) ;

__attribute__((used)) static const char *
dyn_str(struct readelf *re, uint32_t stab, uint64_t d_val)
{
 const char *name;

 if (stab == SHN_UNDEF)
  name = "ERROR";
 else if ((name = elf_strptr(re->elf, stab, d_val)) == ((void*)0)) {
  (void) elf_errno();
  name = "ERROR";
 }

 return (name);
}
