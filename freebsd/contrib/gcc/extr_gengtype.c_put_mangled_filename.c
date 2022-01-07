
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int outf_p ;


 scalar_t__ ISALNUM (char const) ;
 char* get_output_file_name (char const*) ;
 int oprintf (int ,char*,char const) ;

__attribute__((used)) static void
put_mangled_filename (outf_p f, const char *fn)
{
  const char *name = get_output_file_name (fn);
  for (; *name != 0; name++)
    if (ISALNUM (*name))
      oprintf (f, "%c", *name);
    else
      oprintf (f, "%c", '_');
}
