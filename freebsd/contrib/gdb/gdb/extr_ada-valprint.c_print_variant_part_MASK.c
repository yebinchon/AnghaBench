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
struct ui_file {int dummy; } ;
struct type {int dummy; } ;
typedef  enum val_prettyprint { ____Placeholder_val_prettyprint } val_prettyprint ;

/* Variables and functions */
 int HOST_CHAR_BIT ; 
 int FUNC0 (struct type*,int) ; 
 struct type* FUNC1 (struct type*,int) ; 
 int FUNC2 (struct type*,struct type*,char*) ; 
 int FUNC3 (struct type*,char*,struct ui_file*,int,int,int,int,struct type*,char*) ; 

__attribute__((used)) static int
FUNC4 (struct type *type, int field_num, char *valaddr,
		    struct ui_file *stream, int format, int recurse,
		    enum val_prettyprint pretty, int comma_needed,
		    struct type *outer_type, char *outer_valaddr)
{
  struct type *var_type = FUNC1 (type, field_num);
  int which = FUNC2 (var_type, outer_type, outer_valaddr);

  if (which < 0)
    return 0;
  else
    return FUNC3
      (FUNC1 (var_type, which),
       valaddr + FUNC0 (type, field_num) / HOST_CHAR_BIT
       + FUNC0 (var_type, which) / HOST_CHAR_BIT,
       stream, format, recurse, pretty,
       comma_needed, outer_type, outer_valaddr);
}