
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mode_data {int name; } ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int
eq_mode (const void *p, const void *q)
{
  const struct mode_data *a = (const struct mode_data *)p;
  const struct mode_data *b = (const struct mode_data *)q;

  return !strcmp (a->name, b->name);
}
