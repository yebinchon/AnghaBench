#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct macro_source_file {char const* filename; struct macro_source_file* next_included; struct macro_source_file* includes; } ;

/* Variables and functions */
 int FUNC0 (struct macro_source_file*) ; 
 scalar_t__ FUNC1 (char const*,char const*) ; 
 int FUNC2 (char const*) ; 

struct macro_source_file *
FUNC3 (struct macro_source_file *source, const char *name)
{
  /* Is SOURCE itself named NAME?  */
  if (FUNC1 (name, source->filename) == 0)
    return source;

  /* The filename in the source structure is probably a full path, but
     NAME could be just the final component of the name.  */
  {
    int name_len = FUNC2 (name);
    int src_name_len = FUNC2 (source->filename);

    /* We do mean < here, and not <=; if the lengths are the same,
       then the strcmp above should have triggered, and we need to
       check for a slash here.  */
    if (name_len < src_name_len
        && source->filename[src_name_len - name_len - 1] == '/'
        && FUNC1 (name, source->filename + src_name_len - name_len) == 0)
      return source;
  }

  /* It's not us.  Try all our children, and return the lowest.  */
  {
    struct macro_source_file *child;
    struct macro_source_file *best = NULL;
    int best_depth = 0;

    for (child = source->includes; child; child = child->next_included)
      {
        struct macro_source_file *result
          = FUNC3 (child, name);

        if (result)
          {
            int result_depth = FUNC0 (result);

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