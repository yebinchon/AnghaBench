
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ gcov_unsigned_t ;
typedef scalar_t__ gcov_position_t ;
struct TYPE_2__ {scalar_t__ offset; scalar_t__ start; } ;


 TYPE_1__ gcov_var ;
 scalar_t__* gcov_write_words (int) ;

gcov_position_t
gcov_write_tag (gcov_unsigned_t tag)
{
  gcov_position_t result = gcov_var.start + gcov_var.offset;
  gcov_unsigned_t *buffer = gcov_write_words (2);

  buffer[0] = tag;
  buffer[1] = 0;

  return result;
}
