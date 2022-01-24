#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct trace_probe {int /*<<< orphan*/  size; } ;
struct TYPE_10__ {int /*<<< orphan*/  data; int /*<<< orphan*/  fn; } ;
struct TYPE_8__ {int /*<<< orphan*/  data; int /*<<< orphan*/  fn; } ;
struct probe_arg {char const* comm; TYPE_5__ fetch; TYPE_1__ fetch_size; TYPE_2__* type; int /*<<< orphan*/  offset; } ;
struct TYPE_9__ {scalar_t__ size; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int ENOSPC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ MAX_ARGSTR_LEN ; 
 int FUNC0 (char const*,TYPE_2__*,TYPE_5__*) ; 
 int FUNC1 (char*,TYPE_2__*,TYPE_5__*,int) ; 
 TYPE_2__* FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 char const* FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 
 char* FUNC6 (char const*,char) ; 
 scalar_t__ FUNC7 (char*) ; 

__attribute__((used)) static int FUNC8(char *arg, struct trace_probe *tp,
			   struct probe_arg *parg, bool is_return)
{
	const char *t;
	int ret;

	if (FUNC7(arg) > MAX_ARGSTR_LEN) {
		FUNC5("Argument is too long.: %s\n",  arg);
		return -ENOSPC;
	}
	parg->comm = FUNC4(arg, GFP_KERNEL);
	if (!parg->comm) {
		FUNC5("Failed to allocate memory for command '%s'.\n", arg);
		return -ENOMEM;
	}
	t = FUNC6(parg->comm, ':');
	if (t) {
		arg[t - parg->comm] = '\0';
		t++;
	}
	parg->type = FUNC2(t);
	if (!parg->type) {
		FUNC5("Unsupported type: %s\n", t);
		return -EINVAL;
	}
	parg->offset = tp->size;
	tp->size += parg->type->size;
	ret = FUNC1(arg, parg->type, &parg->fetch, is_return);
	if (ret >= 0 && t != NULL)
		ret = FUNC0(t, parg->type, &parg->fetch);
	if (ret >= 0) {
		parg->fetch_size.fn = FUNC3(parg->type,
							      parg->fetch.fn);
		parg->fetch_size.data = parg->fetch.data;
	}
	return ret;
}