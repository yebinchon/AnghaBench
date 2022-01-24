#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* atf_error_t ;
struct TYPE_6__ {int m_free; char const* m_type; void (* m_format ) (TYPE_1__* const,char*,size_t) ;int /*<<< orphan*/ * m_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 void FUNC1 (TYPE_1__* const,char*,size_t) ; 
 int /*<<< orphan*/ * FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,void*,size_t) ; 

__attribute__((used)) static
bool
FUNC4(atf_error_t err, const char *type, void *data, size_t datalen,
           void (*format)(const atf_error_t, char *, size_t))
{
    bool ok;

    FUNC0(data != NULL || datalen == 0);
    FUNC0(datalen != 0 || data == NULL);

    err->m_free = false;
    err->m_type = type;
    err->m_format = (format == NULL) ? error_format : format;

    ok = true;
    if (data == NULL) {
        err->m_data = NULL;
    } else {
        err->m_data = FUNC2(datalen);
        if (err->m_data == NULL) {
            ok = false;
        } else
            FUNC3(err->m_data, data, datalen);
    }

    return ok;
}