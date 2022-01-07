
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct carl9170fw_fix_entry {int value; int mask; } ;


 int EINVAL ;
 int fprintf (int ,char*,char) ;
 int stderr ;

__attribute__((used)) static int
update_entry(char option, struct carl9170fw_fix_entry *entry,
      struct carl9170fw_fix_entry *fix)
{
 switch (option) {
 case '=':
  entry->mask = fix->mask;
  entry->value = fix->value;
  break;

 case 'O':
  entry->mask |= fix->mask;
  entry->value |= fix->value;
  break;

 case 'A':
  entry->mask &= fix->mask;
  entry->value &= fix->value;
  break;

 default:
  fprintf(stderr, "Unknown option: '%c'\n", option);
  return -EINVAL;
 }

 return 0;
}
