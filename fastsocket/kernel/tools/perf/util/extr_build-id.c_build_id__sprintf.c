
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int sprintf (char*,char*,int const) ;

int build_id__sprintf(const u8 *build_id, int len, char *bf)
{
 char *bid = bf;
 const u8 *raw = build_id;
 int i;

 for (i = 0; i < len; ++i) {
  sprintf(bid, "%02x", *raw);
  ++raw;
  bid += 2;
 }

 return raw - build_id;
}
