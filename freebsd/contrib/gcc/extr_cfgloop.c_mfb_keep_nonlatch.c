
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int edge ;


 int LATCH_EDGE (int ) ;

__attribute__((used)) static bool
mfb_keep_nonlatch (edge e)
{
  return LATCH_EDGE (e);
}
