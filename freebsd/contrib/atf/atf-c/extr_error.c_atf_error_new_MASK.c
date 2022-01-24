#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* atf_error_t ;
struct TYPE_9__ {int m_free; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 TYPE_1__* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char const*,void*,size_t,void (*) (TYPE_1__* const,char*,size_t)) ; 
 int error_on_flight ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 TYPE_1__* FUNC6 (int) ; 

atf_error_t
FUNC7(const char *type, void *data, size_t datalen,
              void (*format)(const atf_error_t, char *, size_t))
{
    atf_error_t err;

    FUNC2(!error_on_flight);
    FUNC2(data != NULL || datalen == 0);
    FUNC2(datalen != 0 || data == NULL);

    err = FUNC6(sizeof(*err));
    if (err == NULL)
        err = FUNC3();
    else {
        if (!FUNC4(err, type, data, datalen, format)) {
            FUNC5(err);
            err = FUNC3();
        } else {
            err->m_free = true;
            error_on_flight = true;
        }
    }

    FUNC0(err != NULL);
    FUNC1(error_on_flight);
    return err;
}