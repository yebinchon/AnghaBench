
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char *chstate(unsigned n)
{
 switch (n) {
 case 134:
  return "CLOSED";
 case 130:
  return "OPENING";
 case 131:
  return "OPENED";
 case 132:
  return "FLUSHING";
 case 133:
  return "CLOSING";
 case 129:
  return "RESET";
 case 128:
  return "ROPENING";
 default:
  return "UNKNOWN";
 }
}
