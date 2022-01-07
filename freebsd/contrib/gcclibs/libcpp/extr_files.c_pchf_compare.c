
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pchf_entry {scalar_t__ once_only; int * sum; int size; } ;
struct pchf_compare_data {int sum_computed; scalar_t__ check_included; int * sum; TYPE_2__* f; int size; } ;
typedef int off_t ;
struct TYPE_3__ {int st_size; } ;
struct TYPE_4__ {TYPE_1__ st; scalar_t__ buffer; } ;
typedef TYPE_2__ _cpp_file ;


 int md5_buffer (char const*,int ,int *) ;
 int memcmp (int *,int *,int) ;

__attribute__((used)) static int
pchf_compare (const void *d_p, const void *e_p)
{
  const struct pchf_entry *e = (const struct pchf_entry *)e_p;
  struct pchf_compare_data *d = (struct pchf_compare_data *)d_p;
  int result;

  result = memcmp (&d->size, &e->size, sizeof (off_t));
  if (result != 0)
    return result;

  if (! d->sum_computed)
    {
      _cpp_file *const f = d->f;

      md5_buffer ((const char *)f->buffer, f->st.st_size, d->sum);
      d->sum_computed = 1;
    }

  result = memcmp (d->sum, e->sum, 16);
  if (result != 0)
    return result;

  if (d->check_included || e->once_only)
    return 0;
  else
    return 1;
}
