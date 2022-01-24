#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  type_p ;
typedef  TYPE_1__* pair_p ;
struct TYPE_7__ {void* opt; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,char const*) ; 
 void* FUNC1 (void*,char*,char const*) ; 
 int /*<<< orphan*/  lexer_line ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static pair_p
FUNC4 (pair_p next, type_p type, const char *name,
		       const char *cond)
{
  static int id = 1;
  pair_p union_fields, field;
  type_p union_type;

  /* Create a fake union type with a single nameless field of type TYPE.
     The field has a tag of "1".  This allows us to make the presence
     of a field of type TYPE depend on some boolean "desc" being true.  */
  union_fields = FUNC0 (NULL, type, "");
  union_fields->opt = FUNC1 (union_fields->opt, "dot", "");
  union_fields->opt = FUNC1 (union_fields->opt, "tag", "1");
  union_type = FUNC2 (FUNC3 ("%s_%d", "fake_union", id++), 1,
			      &lexer_line, union_fields, NULL);

  /* Create the field and give it the new fake union type.  Add a "desc"
     tag that specifies the condition under which the field is valid.  */
  field = FUNC0 (next, union_type, name);
  field->opt = FUNC1 (field->opt, "desc", cond);
  return field;
}