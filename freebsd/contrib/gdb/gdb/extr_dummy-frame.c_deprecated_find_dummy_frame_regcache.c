
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regcache {int dummy; } ;
struct dummy_frame {struct regcache* regcache; } ;
typedef int CORE_ADDR ;


 struct dummy_frame* find_dummy_frame (int ,int ) ;

struct regcache *
deprecated_find_dummy_frame_regcache (CORE_ADDR pc, CORE_ADDR fp)
{
  struct dummy_frame *dummy = find_dummy_frame (pc, fp);
  if (dummy != ((void*)0))
    return dummy->regcache;
  else
    return ((void*)0);
}
