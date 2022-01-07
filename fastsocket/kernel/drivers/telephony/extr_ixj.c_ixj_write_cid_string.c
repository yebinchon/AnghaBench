
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IXJ ;


 int ixj_write_cid_byte (int *,char) ;
 int strlen (char*) ;

__attribute__((used)) static int ixj_write_cid_string(IXJ *j, char *s, int checksum)
{
 int cnt;

 for (cnt = 0; cnt < strlen(s); cnt++) {
  ixj_write_cid_byte(j, s[cnt]);
  checksum = (checksum + s[cnt]);
 }
 return checksum;
}
