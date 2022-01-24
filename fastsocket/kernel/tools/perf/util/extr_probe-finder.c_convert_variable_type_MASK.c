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
struct probe_trace_arg_ref {struct probe_trace_arg_ref* next; } ;
struct probe_trace_arg {int /*<<< orphan*/ * type; struct probe_trace_arg_ref* ref; } ;
typedef  int /*<<< orphan*/  Dwarf_Die ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int DW_TAG_array_type ; 
 int DW_TAG_pointer_type ; 
 int E2BIG ; 
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 int MAX_BASIC_TYPE_BITS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 int FUNC12 (char*,int,char*,char,int,...) ; 
 scalar_t__ FUNC13 (char const*,char*) ; 
 void* FUNC14 (char const*) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 struct probe_trace_arg_ref* FUNC16 (int) ; 

__attribute__((used)) static int FUNC17(Dwarf_Die *vr_die,
				 struct probe_trace_arg *tvar,
				 const char *cast)
{
	struct probe_trace_arg_ref **ref_ptr = &tvar->ref;
	Dwarf_Die type;
	char buf[16];
	int bsize, boffs, total;
	int ret;

	/* TODO: check all types */
	if (cast && FUNC13(cast, "string") != 0) {
		/* Non string type is OK */
		tvar->type = FUNC14(cast);
		return (tvar->type == NULL) ? -ENOMEM : 0;
	}

	bsize = FUNC5(vr_die);
	if (bsize > 0) {
		/* This is a bitfield */
		boffs = FUNC4(vr_die);
		total = FUNC6(vr_die);
		if (boffs < 0 || total < 0)
			return -ENOENT;
		ret = FUNC12(buf, 16, "b%d@%d/%zd", bsize, boffs,
				FUNC0(total));
		goto formatted;
	}

	if (FUNC2(vr_die, &type) == NULL) {
		FUNC11("Failed to get a type information of %s.\n",
			   FUNC7(vr_die));
		return -ENOENT;
	}

	FUNC9("%s type is %s.\n",
		 FUNC7(vr_die), FUNC7(&type));

	if (cast && FUNC13(cast, "string") == 0) {	/* String type */
		ret = FUNC8(&type);
		if (ret != DW_TAG_pointer_type &&
		    ret != DW_TAG_array_type) {
			FUNC11("Failed to cast into string: "
				   "%s(%s) is not a pointer nor array.\n",
				   FUNC7(vr_die), FUNC7(&type));
			return -EINVAL;
		}
		if (ret == DW_TAG_pointer_type) {
			if (FUNC2(&type, &type) == NULL) {
				FUNC11("Failed to get a type"
					   " information.\n");
				return -ENOENT;
			}
			while (*ref_ptr)
				ref_ptr = &(*ref_ptr)->next;
			/* Add new reference with offset +0 */
			*ref_ptr = FUNC16(sizeof(struct probe_trace_arg_ref));
			if (*ref_ptr == NULL) {
				FUNC11("Out of memory error\n");
				return -ENOMEM;
			}
		}
		if (!FUNC1(&type, "char") &&
		    !FUNC1(&type, "unsigned char")) {
			FUNC11("Failed to cast into string: "
				   "%s is not (unsigned) char *.\n",
				   FUNC7(vr_die));
			return -EINVAL;
		}
		tvar->type = FUNC14(cast);
		return (tvar->type == NULL) ? -ENOMEM : 0;
	}

	ret = FUNC6(&type);
	if (ret <= 0)
		/* No size ... try to use default type */
		return 0;
	ret = FUNC0(ret);

	/* Check the bitwidth */
	if (ret > MAX_BASIC_TYPE_BITS) {
		FUNC10("%s exceeds max-bitwidth. Cut down to %d bits.\n",
			FUNC7(&type), MAX_BASIC_TYPE_BITS);
		ret = MAX_BASIC_TYPE_BITS;
	}
	ret = FUNC12(buf, 16, "%c%d",
		       FUNC3(&type) ? 's' : 'u', ret);

formatted:
	if (ret < 0 || ret >= 16) {
		if (ret >= 16)
			ret = -E2BIG;
		FUNC11("Failed to convert variable type: %s\n",
			   FUNC15(-ret));
		return ret;
	}
	tvar->type = FUNC14(buf);
	if (tvar->type == NULL)
		return -ENOMEM;
	return 0;
}