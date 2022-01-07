
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bug_entry {unsigned long bug_addr; unsigned long bug_addr_disp; } ;



__attribute__((used)) static inline unsigned long bug_addr(const struct bug_entry *bug)
{

 return bug->bug_addr;



}
