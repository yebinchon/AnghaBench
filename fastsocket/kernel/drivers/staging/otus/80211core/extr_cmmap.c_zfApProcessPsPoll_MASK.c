#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zdev_t ;
typedef  int /*<<< orphan*/  zbuf_t ;
typedef  int /*<<< orphan*/  u8_t ;
typedef  size_t u16_t ;
struct TYPE_3__ {size_t uniHead; size_t uniTail; int /*<<< orphan*/ ** uniArray; } ;
struct TYPE_4__ {TYPE_1__ ap; } ;

/* Variables and functions */
 int /*<<< orphan*/  ZM_EXTERNAL_ALLOC_BUF ; 
 int ZM_UNI_ARRAY_SIZE ; 
 TYPE_2__* wd ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,size_t,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 size_t FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

void FUNC7(zdev_t* dev, zbuf_t* buf)
{
    u16_t src[3];
    u16_t dst[3];
    zbuf_t* psBuf = NULL;
    u16_t id;
    u8_t moreData = 0;

    FUNC4(dev);

    FUNC2();

    src[0] = FUNC6(dev, buf, 10);
    src[1] = FUNC6(dev, buf, 12);
    src[2] = FUNC6(dev, buf, 14);

    /* Find ps buffer for PsPoll */
    FUNC3(dev);
    id = wd->ap.uniHead;
    while (id != wd->ap.uniTail)
    {
        psBuf = wd->ap.uniArray[id];

        dst[0] = FUNC6(dev, psBuf, 0);
        dst[1] = FUNC6(dev, psBuf, 2);
        dst[2] = FUNC6(dev, psBuf, 4);

        if ((src[0] == dst[0]) && (src[1] == dst[1]) && (src[2] == dst[2]))
        {
            moreData = FUNC0(dev, id, src);
            break;
        }
        else
        {
            psBuf = NULL;
        }
        id = (id + 1) & (ZM_UNI_ARRAY_SIZE - 1);
    }
    FUNC5(dev);

    /* Send ps buffer */
    if (psBuf != NULL)
    {
        /* Send with more data bit */
        FUNC1(dev, psBuf, 0, ZM_EXTERNAL_ALLOC_BUF, moreData);
    }

    return;
}