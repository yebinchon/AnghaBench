#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  atf_error_t ;
struct TYPE_3__ {char* m_data; size_t m_datasize; size_t m_length; } ;
typedef  TYPE_1__ atf_dynstr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int SIZE_MAX ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*,void const*,size_t) ; 
 size_t FUNC5 (char*) ; 

atf_error_t
FUNC6(atf_dynstr_t *ad, const void *mem, size_t memlen)
{
    atf_error_t err;

    if (memlen >= SIZE_MAX - 1) {
        err = FUNC2();
        goto out;
    }

    ad->m_data = (char *)FUNC3(memlen + 1);
    if (ad->m_data == NULL) {
        err = FUNC2();
        goto out;
    }

    ad->m_datasize = memlen + 1;
    FUNC4(ad->m_data, mem, memlen);
    ad->m_data[memlen] = '\0';
    ad->m_length = FUNC5(ad->m_data);
    FUNC0(ad->m_length <= memlen);
    err = FUNC1();

out:
    return err;
}