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
struct iovec {char* iov_base; int iov_len; } ;
typedef  int /*<<< orphan*/  buf ;
typedef  scalar_t__ apr_status_t ;
typedef  int /*<<< orphan*/  apr_socket_t ;
typedef  int /*<<< orphan*/  apr_sockaddr_t ;
typedef  int apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 scalar_t__ APR_EGENERAL ; 
 int /*<<< orphan*/  APR_INET ; 
 scalar_t__ APR_SUCCESS ; 
 int APR_USEC_PER_SEC ; 
 int /*<<< orphan*/  HOST ; 
 int /*<<< orphan*/  PORT ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char*,int*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,struct iovec*,int,int*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * p ; 
 scalar_t__ FUNC7 (char*,char*,int) ; 

__attribute__((used)) static apr_status_t FUNC8(void)
{
  apr_pool_t *pool = p;
  apr_status_t rv;
  apr_socket_t *sock = NULL;
  apr_sockaddr_t *sa;
  struct iovec vec[2];
  apr_size_t written;
  char buf[128];
  apr_size_t len;

  rv = FUNC3(&sock, APR_INET, SOCK_STREAM, 0, pool);
  if(rv != APR_SUCCESS) {
    return rv;
  }

  rv = FUNC0(&sa, HOST, APR_INET, PORT, 0, pool);
  if(rv != APR_SUCCESS) {
    return rv;
  }

  rv = FUNC6(sock, 1 * APR_USEC_PER_SEC);
  if (rv != APR_SUCCESS) {
    return rv;
  }

  rv = FUNC2(sock, sa);
  if (rv != APR_SUCCESS) {
    return rv;
  }

  rv = FUNC6(sock, -1);
  if (rv != APR_SUCCESS) {
    return rv;
  }

  vec[0].iov_base = "version";
  vec[0].iov_len  = sizeof("version") - 1;

  vec[1].iov_base = "\r\n";
  vec[1].iov_len  = sizeof("\r\n") -1;

  rv = FUNC5(sock, vec, 2, &written);
  if (rv != APR_SUCCESS) {
    return rv;
  }

  len = sizeof(buf);
  rv = FUNC4(sock, buf, &len);
  if(rv != APR_SUCCESS) {
    return rv;
  }

  if(FUNC7(buf, "VERSION", sizeof("VERSION")-1) != 0) {
    rv = APR_EGENERAL;
  }

  FUNC1(sock);
  return rv;
}