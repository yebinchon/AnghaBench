
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int srec_write (int,char,int,int *,int ) ;
 int warnx (char*) ;

__attribute__((used)) static void
srec_write_Se(int ofd, uint64_t e_entry, int forceS3)
{
 char er;

 if (e_entry > 0xFFFFFFFF) {
  warnx("address space too big for S-Record file");
  return;
 }

 if (forceS3)
  er = '7';
 else {
  if (e_entry <= 0xFFFF)
   er = '9';
  else if (e_entry <= 0xFFFFFF)
   er = '8';
  else
   er = '7';
 }

 srec_write(ofd, er, e_entry, ((void*)0), 0);
}
