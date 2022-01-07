
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct mips_option {char* desc; int flag; } ;


 int printf (char*,char const*,char*) ;

__attribute__((used)) static void
dump_mips_option_flags(const char *name, struct mips_option *opt, uint64_t info)
{
 int first;

 first = 1;
 for (; opt->desc != ((void*)0); opt++) {
  if (info & opt->flag) {
   printf(" %-10.10s %s\n", first ? name : "",
       opt->desc);
   first = 0;
  }
 }
}
