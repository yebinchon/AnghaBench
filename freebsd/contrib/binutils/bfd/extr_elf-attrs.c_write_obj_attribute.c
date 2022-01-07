
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int type; int i; int s; } ;
typedef TYPE_1__ obj_attribute ;
typedef int bfd_byte ;


 scalar_t__ is_default_attr (TYPE_1__*) ;
 int memcpy (int *,int ,int) ;
 int strlen (int ) ;
 int * write_uleb128 (int *,int) ;

__attribute__((used)) static bfd_byte *
write_obj_attribute (bfd_byte *p, int tag, obj_attribute *attr)
{

  if (is_default_attr (attr))
    return p;

  p = write_uleb128 (p, tag);
  if (attr->type & 1)
    p = write_uleb128 (p, attr->i);
  if (attr->type & 2)
    {
      int len;

      len = strlen (attr->s) + 1;
      memcpy (p, attr->s, len);
      p += len;
    }

  return p;
}
