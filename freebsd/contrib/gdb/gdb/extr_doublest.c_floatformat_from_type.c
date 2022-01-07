
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
struct floatformat {int dummy; } ;


 scalar_t__ TYPE_CODE (struct type const*) ;
 scalar_t__ TYPE_CODE_FLT ;
 struct floatformat const* TYPE_FLOATFORMAT (struct type const*) ;
 int TYPE_LENGTH (struct type const*) ;
 struct floatformat const* floatformat_from_length (int ) ;
 int gdb_assert (int) ;

const struct floatformat *
floatformat_from_type (const struct type *type)
{
  gdb_assert (TYPE_CODE (type) == TYPE_CODE_FLT);
  if (TYPE_FLOATFORMAT (type) != ((void*)0))
    return TYPE_FLOATFORMAT (type);
  else
    return floatformat_from_length (TYPE_LENGTH (type));
}
