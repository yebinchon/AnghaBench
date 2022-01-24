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
struct timezone {int dummy; } ;
struct timeval {int dummy; } ;
typedef  int /*<<< orphan*/  r ;
typedef  int /*<<< orphan*/  pid_t ;
typedef  struct timeval apr_uint64_t ;
typedef  int /*<<< orphan*/  apr_md5_ctx_t ;

/* Variables and functions */
 int APR_MD5_DIGESTSIZE ; 
 int /*<<< orphan*/  NODE_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct timeval*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  NX_SINCE_BOOT ; 
 int /*<<< orphan*/  NX_USECONDS ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct timeval*,struct timezone*) ; 
 int /*<<< orphan*/  FUNC9 (unsigned char*,unsigned char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(unsigned char node[NODE_LENGTH])
{
#if APR_HAS_RANDOM

    (void) apr_generate_random_bytes(node, NODE_LENGTH);

#else

    unsigned char seed[APR_MD5_DIGESTSIZE];
    apr_md5_ctx_t c;

    /* ### probably should revise some of this to be a bit more portable */

    /* Leach & Salz use Linux-specific struct sysinfo;
     * replace with pid/tid for portability (in the spirit of mod_unique_id) */
    struct {
	/* Add thread id here, if applicable, when we get to pthread or apr */
        pid_t pid;
#ifdef NETWARE
        apr_uint64_t t;
#else
        struct timeval t;
#endif
        char hostname[257];

    } r;

    FUNC4(&c);
#ifdef NETWARE
    r.pid = NXThreadGetId();
    NXGetTime(NX_SINCE_BOOT, NX_USECONDS, &(r.t));
#else
    r.pid = FUNC7();
    FUNC8(&r.t, (struct timezone *)0);
#endif
    FUNC6(r.hostname, 256);
    FUNC5(&c, (const unsigned char *)&r, sizeof(r));
    FUNC3(seed, &c);

    FUNC9(node, seed, NODE_LENGTH);    /* use a subset of the seed bytes */
#endif
}