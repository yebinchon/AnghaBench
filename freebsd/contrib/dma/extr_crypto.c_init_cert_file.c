
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL_CTX ;


 int LOG_ERR ;
 int SSL_CTX_check_private_key (int *) ;
 int SSL_CTX_use_PrivateKey_file (int *,char const*,int ) ;
 int SSL_CTX_use_certificate_chain_file (int *,char const*) ;
 int SSL_FILETYPE_PEM ;
 int ssl_errstr () ;
 int syslog (int ,char*,char const*,...) ;

__attribute__((used)) static int
init_cert_file(SSL_CTX *ctx, const char *path)
{
 int error;


 error = SSL_CTX_use_certificate_chain_file(ctx, path);
 if (error < 1) {
  syslog(LOG_ERR, "SSL: Cannot load certificate `%s': %s", path, ssl_errstr());
  return (-1);
 }


 error = SSL_CTX_use_PrivateKey_file(ctx, path, SSL_FILETYPE_PEM);
 if (error < 1) {
  syslog(LOG_ERR, "SSL: Cannot load private key `%s': %s", path, ssl_errstr());
  return (-1);
 }





 error = SSL_CTX_check_private_key(ctx);
 if (error < 1) {
  syslog(LOG_ERR, "SSL: Cannot check private key: %s", ssl_errstr());
  return (-1);
 }

 return (0);
}
