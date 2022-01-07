
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int MAXKEYLEN ;

u_int
st_hash(char *name, int len, int tabsz)
{
 char *pt;
 char *dest;
 char *end;
 int i;
 u_int key = 0;
 int steps;
 int res;
 u_int val;






 if (len > MAXKEYLEN) {
  pt = &(name[len - MAXKEYLEN]);
  len = MAXKEYLEN;
 } else
  pt = name;





 steps = len/sizeof(u_int);
 res = len % sizeof(u_int);






 for (i = 0; i < steps; ++i) {
  end = pt + sizeof(u_int);
  dest = (char *)&val;
  while (pt < end)
   *dest++ = *pt++;
  key += val;
 }




 if (res) {
  val = 0;
  end = pt + res;
  dest = (char *)&val;
  while (pt < end)
   *dest++ = *pt++;
  key += val;
 }




 return(key % tabsz);
}
