
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* basic_block ;
struct TYPE_3__ {int frequency; } ;



__attribute__((used)) static int
basic_block_freq (basic_block bb)
{
  return bb->frequency;
}
