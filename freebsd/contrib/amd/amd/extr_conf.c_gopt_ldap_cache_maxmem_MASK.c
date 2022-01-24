#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  ldap_cache_maxmem; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 TYPE_1__ gopt ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC1 (char*,char**,int) ; 

__attribute__((used)) static int
FUNC2(const char *val)
{
#ifdef HAVE_MAP_LDAP
  char *end;

  gopt.ldap_cache_maxmem = strtol((char *)val, &end, 10);
  if (end == val) {
    fprintf(stderr, "conf: bad LDAP cache (maxmem) option: %s\n",val);
    return 1;
  }
  return 0;
#else /* not HAVE_MAP_LDAP */
  FUNC0(stderr, "conf: ldap_cache_maxmem option ignored.  No LDAP support available.\n");
  return 1;
#endif /* not HAVE_MAP_LDAP */
}