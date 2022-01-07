
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct macro_source_file {char const* filename; struct macro_source_file* next_included; struct macro_source_file* includes; } ;


 int inclusion_depth (struct macro_source_file*) ;
 scalar_t__ strcmp (char const*,char const*) ;
 int strlen (char const*) ;

struct macro_source_file *
macro_lookup_inclusion (struct macro_source_file *source, const char *name)
{

  if (strcmp (name, source->filename) == 0)
    return source;



  {
    int name_len = strlen (name);
    int src_name_len = strlen (source->filename);




    if (name_len < src_name_len
        && source->filename[src_name_len - name_len - 1] == '/'
        && strcmp (name, source->filename + src_name_len - name_len) == 0)
      return source;
  }


  {
    struct macro_source_file *child;
    struct macro_source_file *best = ((void*)0);
    int best_depth = 0;

    for (child = source->includes; child; child = child->next_included)
      {
        struct macro_source_file *result
          = macro_lookup_inclusion (child, name);

        if (result)
          {
            int result_depth = inclusion_depth (result);

            if (! best || result_depth < best_depth)
              {
                best = result;
                best_depth = result_depth;
              }
          }
      }

    return best;
  }
}
