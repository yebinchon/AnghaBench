
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct itbl_entry {int dummy; } ;
typedef size_t e_type ;
typedef size_t e_processor ;


 struct itbl_entry*** entries ;

__attribute__((used)) static struct itbl_entry **
get_entries (e_processor processor, e_type type)
{
  return &entries[processor][type];
}
