
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int br_x509_minimal_context ;
typedef int br_sslio_context ;
struct TYPE_4__ {int eng; } ;
typedef TYPE_1__ br_ssl_client_context ;


 int BR_SSL_BUFSIZE_BIDI ;
 scalar_t__ BR_SSL_CLOSED ;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int SIGPIPE ;
 int SIG_IGN ;
 int TAs ;
 int TAs_NUM ;
 int br_ssl_client_init_full (TYPE_1__*,int *,int ,int ) ;
 int br_ssl_client_reset (TYPE_1__*,char const*,int ) ;
 scalar_t__ br_ssl_engine_current_state (int *) ;
 int br_ssl_engine_last_error (int *) ;
 int br_ssl_engine_set_buffer (int *,unsigned char*,int,int) ;
 int br_sslio_flush (int *) ;
 int br_sslio_init (int *,int *,int ,int*,int ,int*) ;
 int br_sslio_read (int *,unsigned char*,int) ;
 int br_sslio_write_all (int *,char const*,int) ;
 int close (int) ;
 int fprintf (int ,char*,...) ;
 int fwrite (unsigned char*,int,int,int ) ;
 int host_connect (char const*,char const*) ;
 int signal (int ,int ) ;
 int sock_read ;
 int sock_write ;
 int stderr ;
 int stdout ;
 int strlen (char const*) ;

int
main(int argc, char *argv[])
{
 const char *host, *port, *path;
 int fd;
 br_ssl_client_context sc;
 br_x509_minimal_context xc;
 unsigned char iobuf[BR_SSL_BUFSIZE_BIDI];
 br_sslio_context ioc;





 if (argc < 3 || argc > 4) {
  return EXIT_FAILURE;
 }
 host = argv[1];
 port = argv[2];
 if (argc == 4) {
  path = argv[3];
 } else {
  path = "/";
 }




 signal(SIGPIPE, SIG_IGN);




 fd = host_connect(host, port);
 if (fd < 0) {
  return EXIT_FAILURE;
 }







 br_ssl_client_init_full(&sc, &xc, TAs, TAs_NUM);
 br_ssl_engine_set_buffer(&sc.eng, iobuf, sizeof iobuf, 1);






 br_ssl_client_reset(&sc, host, 0);





 br_sslio_init(&ioc, &sc.eng, sock_read, &fd, sock_write, &fd);
 br_sslio_write_all(&ioc, "GET ", 4);
 br_sslio_write_all(&ioc, path, strlen(path));
 br_sslio_write_all(&ioc, " HTTP/1.0\r\nHost: ", 17);
 br_sslio_write_all(&ioc, host, strlen(host));
 br_sslio_write_all(&ioc, "\r\n\r\n", 4);





 br_sslio_flush(&ioc);







 for (;;) {
  int rlen;
  unsigned char tmp[512];

  rlen = br_sslio_read(&ioc, tmp, sizeof tmp);
  if (rlen < 0) {
   break;
  }
  fwrite(tmp, 1, rlen, stdout);
 }




 close(fd);
 if (br_ssl_engine_current_state(&sc.eng) == BR_SSL_CLOSED) {
  int err;

  err = br_ssl_engine_last_error(&sc.eng);
  if (err == 0) {
   fprintf(stderr, "closed.\n");
   return EXIT_SUCCESS;
  } else {
   fprintf(stderr, "SSL error %d\n", err);
   return EXIT_FAILURE;
  }
 } else {
  fprintf(stderr,
   "socket closed without proper SSL termination\n");
  return EXIT_FAILURE;
 }
}
