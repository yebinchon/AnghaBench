
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* uint64_t ;
struct TYPE_2__ {void* size; void* address; } ;
struct reserve_info {char* label; int * next; TYPE_1__ re; } ;


 struct reserve_info* xmalloc (int) ;

struct reserve_info *build_reserve_entry(uint64_t address, uint64_t size,
      char *label)
{
 struct reserve_info *new = xmalloc(sizeof(*new));

 new->re.address = address;
 new->re.size = size;

 new->next = ((void*)0);

 new->label = label;

 return new;
}
