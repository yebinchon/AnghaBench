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
struct child_print_data {char* member_0; } ;
struct base_stream {int /*<<< orphan*/  (* fini ) (void*) ;int /*<<< orphan*/  (* process ) (void*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  m_sb_ptr; int /*<<< orphan*/  (* init ) (void*) ;} ;
typedef  int /*<<< orphan*/  atf_process_status_t ;
typedef  int /*<<< orphan*/  atf_process_child_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct child_print_data*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  child_print ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 int /*<<< orphan*/  FUNC9 (void*) ; 

__attribute__((used)) static
void
FUNC10(const struct base_stream *outfs, void *out,
        const struct base_stream *errfs, void *err)
{
    atf_process_child_t child;
    atf_process_status_t status;
    struct child_print_data cpd = { "msg" };

    outfs->init(out);
    errfs->init(err);

    FUNC0(FUNC2(&child, child_print, outfs->m_sb_ptr,
                        errfs->m_sb_ptr, &cpd));
    if (outfs->process != NULL)
        outfs->process(out, &child);
    if (errfs->process != NULL)
        errfs->process(err, &child);
    FUNC0(FUNC1(&child, &status));

    outfs->fini(out);
    errfs->fini(err);

    FUNC3(&status);
}