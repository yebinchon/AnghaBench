
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ edge ;


 scalar_t__ mfb_kj_edge ;

__attribute__((used)) static bool
mfb_keep_just (edge e)
{
  return e != mfb_kj_edge;
}
