
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int counter; scalar_t__ deps; } ;
typedef TYPE_1__ cpp_reader ;
typedef int FILE ;


 int CPP_DL_ERROR ;
 int _cpp_save_file_entries (TYPE_1__*,int *) ;
 int cpp_errno (TYPE_1__*,int ,char*) ;
 scalar_t__ deps_init () ;
 scalar_t__ deps_save (scalar_t__,int *) ;
 int fwrite (int *,int,int,int *) ;

int
cpp_write_pch_state (cpp_reader *r, FILE *f)
{
  if (!r->deps)
    r->deps = deps_init ();

  if (deps_save (r->deps, f) != 0)
    {
      cpp_errno (r, CPP_DL_ERROR, "while writing precompiled header");
      return -1;
    }

  if (! _cpp_save_file_entries (r, f))
    {
      cpp_errno (r, CPP_DL_ERROR, "while writing precompiled header");
      return -1;
    }




  if (fwrite (&r->counter, sizeof (r->counter), 1, f) != 1)
    {
      cpp_errno (r, CPP_DL_ERROR, "while writing precompiled header");
      return -1;
    }

  return 0;
}
