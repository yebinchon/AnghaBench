
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snmp_cnv {int syntax; unsigned int tag; unsigned int class; } ;


 struct snmp_cnv* snmp_conv ;

__attribute__((used)) static unsigned char snmp_tag_cls2syntax(unsigned int tag,
      unsigned int cls,
      unsigned short *syntax)
{
 const struct snmp_cnv *cnv;

 cnv = snmp_conv;

 while (cnv->syntax != -1) {
  if (cnv->tag == tag && cnv->class == cls) {
   *syntax = cnv->syntax;
   return 1;
  }
  cnv++;
 }
 return 0;
}
