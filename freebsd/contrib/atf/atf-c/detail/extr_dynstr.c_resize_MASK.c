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
struct TYPE_3__ {size_t m_datasize; char* m_data; } ;
typedef  TYPE_1__ atf_dynstr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (size_t) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 

__attribute__((used)) static
atf_error_t
FUNC6(atf_dynstr_t *ad, size_t newsize)
{
    char *newdata;
    atf_error_t err;

    FUNC0(newsize > ad->m_datasize);

    newdata = (char *)FUNC4(newsize);
    if (newdata == NULL) {
        err = FUNC2();
    } else {
        FUNC5(newdata, ad->m_data);
        FUNC3(ad->m_data);
        ad->m_data = newdata;
        ad->m_datasize = newsize;
        err = FUNC1();
    }

    return err;
}