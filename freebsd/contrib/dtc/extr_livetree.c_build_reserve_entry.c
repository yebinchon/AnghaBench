
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* uint64_t ;
struct TYPE_2__ {void* size; void* address; } ;
struct reserve_info {TYPE_1__ re; } ;


 int memset (struct reserve_info*,int ,int) ;
 struct reserve_info* xmalloc (int) ;

struct reserve_info *build_reserve_entry(uint64_t address, uint64_t size)
{
 struct reserve_info *new = xmalloc(sizeof(*new));

 memset(new, 0, sizeof(*new));

 new->re.address = address;
 new->re.size = size;

 return new;
}
