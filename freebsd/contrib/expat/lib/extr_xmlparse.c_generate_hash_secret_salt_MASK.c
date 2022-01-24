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
typedef  int /*<<< orphan*/  entropy ;
typedef  int /*<<< orphan*/  XML_Parser ;

/* Variables and functions */
 unsigned long FUNC0 (char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long*,int) ; 
 unsigned long FUNC2 () ; 
 unsigned long FUNC3 () ; 
 scalar_t__ FUNC4 (void*,int) ; 
 int /*<<< orphan*/  FUNC5 (void*,int) ; 
 scalar_t__ FUNC6 (void*,int) ; 
 scalar_t__ FUNC7 (void*,int) ; 

__attribute__((used)) static unsigned long
FUNC8(XML_Parser parser)
{
  unsigned long entropy;
  (void)parser;

  /* "Failproof" high quality providers: */
#if defined(HAVE_ARC4RANDOM_BUF)
  arc4random_buf(&entropy, sizeof(entropy));
  return ENTROPY_DEBUG("arc4random_buf", entropy);
#elif defined(HAVE_ARC4RANDOM)
  writeRandomBytes_arc4random((void *)&entropy, sizeof(entropy));
  return ENTROPY_DEBUG("arc4random", entropy);
#else
  /* Try high quality providers first .. */
#ifdef _WIN32
  if (writeRandomBytes_RtlGenRandom((void *)&entropy, sizeof(entropy))) {
    return ENTROPY_DEBUG("RtlGenRandom", entropy);
  }
#elif defined(HAVE_GETRANDOM) || defined(HAVE_SYSCALL_GETRANDOM)
  if (writeRandomBytes_getrandom_nonblock((void *)&entropy, sizeof(entropy))) {
    return ENTROPY_DEBUG("getrandom", entropy);
  }
#endif
#if ! defined(_WIN32) && defined(XML_DEV_URANDOM)
  if (writeRandomBytes_dev_urandom((void *)&entropy, sizeof(entropy))) {
    return ENTROPY_DEBUG("/dev/urandom", entropy);
  }
#endif  /* ! defined(_WIN32) && defined(XML_DEV_URANDOM) */
  /* .. and self-made low quality for backup: */

  /* Process ID is 0 bits entropy if attacker has local access */
  entropy = FUNC2() ^ FUNC3();

  /* Factors are 2^31-1 and 2^61-1 (Mersenne primes M31 and M61) */
  if (sizeof(unsigned long) == 4) {
    return FUNC0("fallback(4)", entropy * 2147483647);
  } else {
    return FUNC0("fallback(8)",
        entropy * (unsigned long)2305843009213693951ULL);
  }
#endif
}