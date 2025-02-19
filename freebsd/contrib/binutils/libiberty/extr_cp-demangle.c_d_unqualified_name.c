
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* op; } ;
struct TYPE_6__ {TYPE_2__ s_operator; } ;
struct demangle_component {scalar_t__ type; TYPE_3__ u; } ;
struct d_info {int expansion; } ;
struct TYPE_4__ {int len; } ;


 scalar_t__ DEMANGLE_COMPONENT_OPERATOR ;
 scalar_t__ IS_DIGIT (char) ;
 scalar_t__ IS_LOWER (char) ;
 int d_advance (struct d_info*,int) ;
 struct demangle_component* d_ctor_dtor_name (struct d_info*) ;
 int d_discriminator (struct d_info*) ;
 struct demangle_component* d_operator_name (struct d_info*) ;
 char d_peek_char (struct d_info*) ;
 struct demangle_component* d_source_name (struct d_info*) ;

__attribute__((used)) static struct demangle_component *
d_unqualified_name (struct d_info *di)
{
  char peek;

  peek = d_peek_char (di);
  if (IS_DIGIT (peek))
    return d_source_name (di);
  else if (IS_LOWER (peek))
    {
      struct demangle_component *ret;

      ret = d_operator_name (di);
      if (ret != ((void*)0) && ret->type == DEMANGLE_COMPONENT_OPERATOR)
 di->expansion += sizeof "operator" + ret->u.s_operator.op->len - 2;
      return ret;
    }
  else if (peek == 'C' || peek == 'D')
    return d_ctor_dtor_name (di);
  else if (peek == 'L')
    {
      struct demangle_component * ret;

      d_advance (di, 1);

      ret = d_source_name (di);
      if (ret == ((void*)0))
 return ((void*)0);
      if (! d_discriminator (di))
 return ((void*)0);
      return ret;
    }
  else
    return ((void*)0);
}
