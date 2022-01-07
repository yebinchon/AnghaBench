
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dtrace_class_t ;
const char *
dtrace_class_name(dtrace_class_t c)
{
 switch (c) {
 case 128: return ("Unknown");
 case 132: return ("CPU");
 case 129: return ("Platform");
 case 131: return ("Group");
 case 130: return ("ISA");
 case 133: return ("Common");
 default: return (((void*)0));
 }
}
