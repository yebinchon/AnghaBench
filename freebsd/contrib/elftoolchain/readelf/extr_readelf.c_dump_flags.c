
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef int uint64_t ;
struct flag_desc {int flag; char* desc; } ;


 int printf (char*,...) ;

__attribute__((used)) static void
dump_flags(struct flag_desc *desc, uint64_t val)
{
 struct flag_desc *fd;

 for (fd = desc; fd->flag != 0; fd++) {
  if (val & fd->flag) {
   val &= ~fd->flag;
   printf(" %s", fd->desc);
  }
 }
 if (val != 0)
  printf(" unknown (0x%jx)", (uintmax_t)val);
 printf("\n");
}
