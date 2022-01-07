
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpuid (int,unsigned int*,unsigned int*,unsigned int*,unsigned int*) ;
 int scnprintf (char*,size_t,char*,char*,int,int,int) ;
 scalar_t__ strchr (char*,char) ;
 int strncpy (char*,char*,int) ;

int
get_cpuid(char *buffer, size_t sz)
{
 unsigned int a, b, c, d, lvl;
 int family = -1, model = -1, step = -1;
 int nb;
 char vendor[16];

 cpuid(0, &lvl, &b, &c, &d);
 strncpy(&vendor[0], (char *)(&b), 4);
 strncpy(&vendor[4], (char *)(&d), 4);
 strncpy(&vendor[8], (char *)(&c), 4);
 vendor[12] = '\0';

 if (lvl >= 1) {
  cpuid(1, &a, &b, &c, &d);

  family = (a >> 8) & 0xf;
  model = (a >> 4) & 0xf;
  step = a & 0xf;


  if (family == 0xf)
   family += (a >> 20) & 0xff;


  if (family >= 0x6)
   model += ((a >> 16) & 0xf) << 4;
 }
 nb = scnprintf(buffer, sz, "%s,%u,%u,%u$", vendor, family, model, step);


 if (strchr(buffer, '$')) {
  buffer[nb-1] = '\0';
  return 0;
 }
 return -1;
}
