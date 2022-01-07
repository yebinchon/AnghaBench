
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char *data_mode_string(unsigned long mode)
{
 switch (mode) {
 case 130:
  return "journal";
 case 129:
  return "ordered";
 case 128:
  return "writeback";
 }
 return "unknown";
}
