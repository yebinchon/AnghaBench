
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lock_class {int usage_mask; } ;
typedef enum lock_usage_bit { ____Placeholder_lock_usage_bit } lock_usage_bit ;


 int lock_flag (int) ;

__attribute__((used)) static char get_usage_char(struct lock_class *class, enum lock_usage_bit bit)
{
 char c = '.';

 if (class->usage_mask & lock_flag(bit + 2))
  c = '+';
 if (class->usage_mask & lock_flag(bit)) {
  c = '-';
  if (class->usage_mask & lock_flag(bit + 2))
   c = '?';
 }

 return c;
}
