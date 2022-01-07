
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cond_bool_datum {int state; } ;



__attribute__((used)) static int bool_isvalid(struct cond_bool_datum *b)
{
 if (!(b->state == 0 || b->state == 1))
  return 0;
 return 1;
}
