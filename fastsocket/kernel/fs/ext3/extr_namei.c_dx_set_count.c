
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dx_entry {int dummy; } ;
struct dx_countlimit {int count; } ;


 int cpu_to_le16 (unsigned int) ;

__attribute__((used)) static inline void dx_set_count (struct dx_entry *entries, unsigned value)
{
 ((struct dx_countlimit *) entries)->count = cpu_to_le16(value);
}
