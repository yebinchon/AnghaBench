
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int e_machine; } ;
struct readelf {TYPE_1__ ehdr; } ;




 int dump_attributes (struct readelf*) ;
 int dump_liblist (struct readelf*) ;
 int dump_mips_specific_info (struct readelf*) ;

__attribute__((used)) static void
dump_arch_specific_info(struct readelf *re)
{

 dump_liblist(re);
 dump_attributes(re);

 switch (re->ehdr.e_machine) {
 case 129:
 case 128:
  dump_mips_specific_info(re);
 default:
  break;
 }
}
