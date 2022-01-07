
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int ihex_write (int,int,int ,int,int *,int) ;
 int warnx (char*) ;

__attribute__((used)) static void
ihex_write_05(int ofd, uint64_t e_entry)
{

 if (e_entry > 0xFFFFFFFF) {
  warnx("address space too big for Intel Hex file");
  return;
 }

 ihex_write(ofd, 5, 0, e_entry, ((void*)0), 4);
}
