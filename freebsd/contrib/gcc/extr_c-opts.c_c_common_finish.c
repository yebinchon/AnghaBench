
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ style; } ;
struct TYPE_4__ {TYPE_1__ deps; } ;
typedef int FILE ;


 scalar_t__ DEPS_NONE ;
 scalar_t__ cpp_finish (int ,int *) ;
 TYPE_2__* cpp_opts ;
 scalar_t__ deps_append ;
 int deps_file ;
 int errorcount ;
 int fatal_error (char*,int ) ;
 scalar_t__ fclose (int *) ;
 scalar_t__ ferror (int *) ;
 int * fopen (int ,char*) ;
 int out_fname ;
 int * out_stream ;
 int parse_in ;

void
c_common_finish (void)
{
  FILE *deps_stream = ((void*)0);

  if (cpp_opts->deps.style != DEPS_NONE)
    {


      if (!deps_file)
 deps_stream = out_stream;
      else
 {
   deps_stream = fopen (deps_file, deps_append ? "a": "w");
   if (!deps_stream)
     fatal_error ("opening dependency file %s: %m", deps_file);
 }
    }



  errorcount += cpp_finish (parse_in, deps_stream);

  if (deps_stream && deps_stream != out_stream
      && (ferror (deps_stream) || fclose (deps_stream)))
    fatal_error ("closing dependency file %s: %m", deps_file);

  if (out_stream && (ferror (out_stream) || fclose (out_stream)))
    fatal_error ("when writing output to %s: %m", out_fname);
}
