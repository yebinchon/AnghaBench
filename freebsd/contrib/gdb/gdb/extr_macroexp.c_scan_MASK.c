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
struct macro_name_list {int dummy; } ;
struct macro_buffer {int shared; char* text; int last_token; int len; } ;
typedef  int /*<<< orphan*/  macro_lookup_ftype ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct macro_buffer*,struct macro_buffer*) ; 
 int /*<<< orphan*/  FUNC1 (struct macro_buffer*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct macro_buffer*,struct macro_buffer*) ; 
 int /*<<< orphan*/  FUNC4 (struct macro_buffer*,struct macro_buffer*,struct macro_buffer*,struct macro_name_list*,int /*<<< orphan*/ *,void*) ; 

__attribute__((used)) static void
FUNC5 (struct macro_buffer *dest,
      struct macro_buffer *src,
      struct macro_name_list *no_loop,
      macro_lookup_ftype *lookup_func,
      void *lookup_baton)
{
  FUNC2 (src->shared);
  FUNC2 (! dest->shared);

  for (;;)
    {
      struct macro_buffer tok;
      char *original_src_start = src->text;

      /* Find the next token in SRC.  */
      if (! FUNC3 (&tok, src))
        break;

      /* Just for aesthetics.  If we skipped some whitespace, copy
         that to DEST.  */
      if (tok.text > original_src_start)
        {
          FUNC1 (dest, original_src_start, tok.text - original_src_start);
          dest->last_token = dest->len;
        }

      if (! FUNC4 (dest, &tok, src, no_loop, lookup_func, lookup_baton))
        /* We didn't end up expanding tok as a macro reference, so
           simply append it to dest.  */
        FUNC0 (dest, &tok);
    }

  /* Just for aesthetics.  If there was any trailing whitespace in
     src, copy it to dest.  */
  if (src->len)
    {
      FUNC1 (dest, src->text, src->len);
      dest->last_token = dest->len;
    }
}