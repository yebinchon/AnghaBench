
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* ar_name; } ;
typedef TYPE_1__ Elf_Arhdr ;


 int printf (char*,char const*,...) ;
 int tbl_append () ;
 int tbl_new (int) ;
 int tbl_print (char*,int) ;
 scalar_t__ text_size_total ;

__attribute__((used)) static void
sysv_header(const char *name, Elf_Arhdr *arhdr)
{

 text_size_total = 0;
 if (arhdr != ((void*)0))
  (void) printf("%s   (ex %s):\n", arhdr->ar_name, name);
 else
  (void) printf("%s  :\n", name);
 tbl_new(3);
 tbl_append();
 tbl_print("section", 0);
 tbl_print("size", 1);
 tbl_print("addr", 2);
}
