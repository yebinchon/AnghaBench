
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int X509 ;
struct TYPE_2__ {int * ssl; int features; int * certfile; } ;
typedef int SSL_METHOD ;
typedef int SSL_CTX ;


 int LOG_ERR ;
 int LOG_INFO ;
 int LOG_NOTICE ;
 int LOG_WARNING ;
 int NOSSL ;
 int SECURETRANS ;
 int * SSL_CTX_new (int *) ;
 int SSL_connect (int *) ;
 int * SSL_get_peer_certificate (int *) ;
 int SSL_library_init () ;
 int SSL_load_error_strings () ;
 int * SSL_new (int *) ;
 int SSL_set_connect_state (int *) ;
 int SSL_set_fd (int *,int) ;
 int * SSLv23_client_method () ;
 int STARTTLS ;
 int TLS_OPP ;
 int * TLS_client_method () ;
 int X509_free (int *) ;
 TYPE_1__ config ;
 int hostname () ;
 int init_cert_file (int *,int *) ;
 int neterr ;
 int read_remote (int,int ,int *) ;
 int send_remote_command (int,char*,...) ;
 int ssl_errstr () ;
 int syslog (int ,char*,...) ;

int
smtp_init_crypto(int fd, int feature)
{
 SSL_CTX *ctx = ((void*)0);



 SSL_METHOD *meth = ((void*)0);

 X509 *cert;
 int error;



 SSL_library_init();
 SSL_load_error_strings();





 meth = SSLv23_client_method();


 ctx = SSL_CTX_new(meth);
 if (ctx == ((void*)0)) {
  syslog(LOG_WARNING, "remote delivery deferred: SSL init failed: %s", ssl_errstr());
  return (1);
 }


 if (config.certfile != ((void*)0)) {
  error = init_cert_file(ctx, config.certfile);
  if (error) {
   syslog(LOG_WARNING, "remote delivery deferred");
   return (1);
  }
 }




 if (((feature & SECURETRANS) != 0) &&
      (feature & STARTTLS) != 0) {

  config.features |= NOSSL;

  send_remote_command(fd, "EHLO %s", hostname());
  if (read_remote(fd, 0, ((void*)0)) == 2) {
   send_remote_command(fd, "STARTTLS");
   if (read_remote(fd, 0, ((void*)0)) != 2) {
    if ((feature & TLS_OPP) == 0) {
     syslog(LOG_ERR, "remote delivery deferred: STARTTLS not available: %s", neterr);
     return (1);
    } else {
     syslog(LOG_INFO, "in opportunistic TLS mode, STARTTLS not available: %s", neterr);
     return (0);
    }
   }
  }

  config.features &= ~NOSSL;
 }

 config.ssl = SSL_new(ctx);
 if (config.ssl == ((void*)0)) {
  syslog(LOG_NOTICE, "remote delivery deferred: SSL struct creation failed: %s",
         ssl_errstr());
  return (1);
 }


 SSL_set_connect_state(config.ssl);


 error = SSL_set_fd(config.ssl, fd);
 if (error == 0) {
  syslog(LOG_NOTICE, "remote delivery deferred: SSL set fd failed: %s",
         ssl_errstr());
  return (1);
 }


 error = SSL_connect(config.ssl);
 if (error < 0) {
  syslog(LOG_ERR, "remote delivery deferred: SSL handshake failed fatally: %s",
         ssl_errstr());
  return (1);
 }


 cert = SSL_get_peer_certificate(config.ssl);
 if (cert == ((void*)0)) {
  syslog(LOG_WARNING, "remote delivery deferred: Peer did not provide certificate: %s",
         ssl_errstr());
 }
 X509_free(cert);

 return (0);
}
