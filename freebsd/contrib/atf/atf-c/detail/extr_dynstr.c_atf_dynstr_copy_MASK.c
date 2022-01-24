#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  atf_error_t ;
struct TYPE_4__ {char* m_data; int /*<<< orphan*/  m_length; int /*<<< orphan*/  m_datasize; } ;
typedef  TYPE_1__ atf_dynstr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int /*<<< orphan*/ ) ; 

atf_error_t
FUNC4(atf_dynstr_t *dest, const atf_dynstr_t *src)
{
    atf_error_t err;

    dest->m_data = (char *)FUNC2(src->m_datasize);
    if (dest->m_data == NULL)
        err = FUNC1();
    else {
        FUNC3(dest->m_data, src->m_data, src->m_datasize);
        dest->m_datasize = src->m_datasize;
        dest->m_length = src->m_length;
        err = FUNC0();
    }

    return err;
}