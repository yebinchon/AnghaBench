
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sbit; int ebit; } ;
struct itbl_field {unsigned long flags; TYPE_1__ range; int type; } ;
typedef int e_type ;


 scalar_t__ malloc (int) ;
 int memset (struct itbl_field*,int ,int) ;

__attribute__((used)) static struct itbl_field *
alloc_field (e_type type, int sbit, int ebit,
      unsigned long flags)
{
  struct itbl_field *f;
  f = (struct itbl_field *) malloc (sizeof (struct itbl_field));
  if (f)
    {
      memset (f, 0, sizeof (struct itbl_field));
      f->type = type;
      f->range.sbit = sbit;
      f->range.ebit = ebit;
      f->flags = flags;
    }
  return f;
}
