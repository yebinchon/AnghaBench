
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iovec {char* iov_base; int iov_len; } ;
typedef int buf ;
typedef scalar_t__ apr_status_t ;
typedef int apr_socket_t ;
typedef int apr_sockaddr_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;


 scalar_t__ APR_EGENERAL ;
 int APR_INET ;
 scalar_t__ APR_SUCCESS ;
 int APR_USEC_PER_SEC ;
 int HOST ;
 int PORT ;
 int SOCK_STREAM ;
 scalar_t__ apr_sockaddr_info_get (int **,int ,int ,int ,int ,int *) ;
 int apr_socket_close (int *) ;
 scalar_t__ apr_socket_connect (int *,int *) ;
 scalar_t__ apr_socket_create (int **,int ,int ,int ,int *) ;
 scalar_t__ apr_socket_recv (int *,char*,int*) ;
 scalar_t__ apr_socket_sendv (int *,struct iovec*,int,int*) ;
 scalar_t__ apr_socket_timeout_set (int *,int) ;
 int * p ;
 scalar_t__ strncmp (char*,char*,int) ;

__attribute__((used)) static apr_status_t check_mc(void)
{
  apr_pool_t *pool = p;
  apr_status_t rv;
  apr_socket_t *sock = ((void*)0);
  apr_sockaddr_t *sa;
  struct iovec vec[2];
  apr_size_t written;
  char buf[128];
  apr_size_t len;

  rv = apr_socket_create(&sock, APR_INET, SOCK_STREAM, 0, pool);
  if(rv != APR_SUCCESS) {
    return rv;
  }

  rv = apr_sockaddr_info_get(&sa, HOST, APR_INET, PORT, 0, pool);
  if(rv != APR_SUCCESS) {
    return rv;
  }

  rv = apr_socket_timeout_set(sock, 1 * APR_USEC_PER_SEC);
  if (rv != APR_SUCCESS) {
    return rv;
  }

  rv = apr_socket_connect(sock, sa);
  if (rv != APR_SUCCESS) {
    return rv;
  }

  rv = apr_socket_timeout_set(sock, -1);
  if (rv != APR_SUCCESS) {
    return rv;
  }

  vec[0].iov_base = "version";
  vec[0].iov_len = sizeof("version") - 1;

  vec[1].iov_base = "\r\n";
  vec[1].iov_len = sizeof("\r\n") -1;

  rv = apr_socket_sendv(sock, vec, 2, &written);
  if (rv != APR_SUCCESS) {
    return rv;
  }

  len = sizeof(buf);
  rv = apr_socket_recv(sock, buf, &len);
  if(rv != APR_SUCCESS) {
    return rv;
  }

  if(strncmp(buf, "VERSION", sizeof("VERSION")-1) != 0) {
    rv = APR_EGENERAL;
  }

  apr_socket_close(sock);
  return rv;
}
