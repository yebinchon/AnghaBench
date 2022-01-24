#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int* m_pipefds; TYPE_3__* m_sb; } ;
typedef  TYPE_1__ stream_prepare_t ;
typedef  int /*<<< orphan*/  atf_error_t ;
struct TYPE_5__ {int m_fd; int /*<<< orphan*/  m_path; int /*<<< orphan*/  m_src_fd; int /*<<< orphan*/  m_tgt_fd; } ;

/* Variables and functions */
 int O_CREAT ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  UNREACHABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (TYPE_3__*) ; 
 int const atf_process_stream_type_capture ; 
 int const atf_process_stream_type_connect ; 
 int const atf_process_stream_type_inherit ; 
 int const atf_process_stream_type_redirect_fd ; 
 int const atf_process_stream_type_redirect_path ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC7 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 

__attribute__((used)) static
atf_error_t
FUNC9(const stream_prepare_t *sp, int procfd)
{
    atf_error_t err;
    const int type = FUNC4(sp->m_sb);

    if (type == atf_process_stream_type_capture) {
        FUNC5(sp->m_pipefds[0]);
        err = FUNC8(sp->m_pipefds[1], procfd);
    } else if (type == atf_process_stream_type_connect) {
        if (FUNC6(sp->m_sb->m_tgt_fd, sp->m_sb->m_src_fd) == -1)
            err = FUNC2(errno, "Cannot connect descriptor %d to %d",
                                 sp->m_sb->m_tgt_fd, sp->m_sb->m_src_fd);
        else
            err = FUNC3();
    } else if (type == atf_process_stream_type_inherit) {
        err = FUNC3();
    } else if (type == atf_process_stream_type_redirect_fd) {
        err = FUNC8(sp->m_sb->m_fd, procfd);
    } else if (type == atf_process_stream_type_redirect_path) {
        int aux = FUNC7(FUNC0(sp->m_sb->m_path),
                       O_WRONLY | O_CREAT | O_TRUNC, 0644);
        if (aux == -1)
            err = FUNC2(errno, "Could not create %s",
                                 FUNC0(sp->m_sb->m_path));
        else {
            err = FUNC8(aux, procfd);
            if (FUNC1(err))
                FUNC5(aux);
        }
    } else {
        UNREACHABLE;
        err = FUNC3();
    }

    return err;
}