
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


typedef int br_sslio_context ;
struct TYPE_12__ {int eng; } ;
typedef TYPE_1__ br_ssl_server_context ;


 int BR_KEYTYPE_EC ;
 int BR_KEYTYPE_RSA ;
 int BR_SSL_BUFSIZE_BIDI ;
 int CHAIN ;
 int CHAIN_LEN ;
 int EXIT_FAILURE ;
 int HTTP_RES ;
 int SIGPIPE ;
 int SIG_IGN ;
 int SKEY ;
 int accept_client (int) ;
 int br_ssl_engine_last_error (int *) ;
 int br_ssl_engine_set_buffer (int *,unsigned char*,int,int) ;
 int br_ssl_server_init_full_ec (TYPE_1__*,int ,int ,int ,int *) ;
 int br_ssl_server_init_full_rsa (TYPE_1__*,int ,int ,int *) ;
 int br_ssl_server_init_mine2c (TYPE_1__*,int ,int ,int *) ;
 int br_ssl_server_init_mine2g (TYPE_1__*,int ,int ,int *) ;
 int br_ssl_server_init_minf2c (TYPE_1__*,int ,int ,int *) ;
 int br_ssl_server_init_minf2g (TYPE_1__*,int ,int ,int *) ;
 int br_ssl_server_init_minr2g (TYPE_1__*,int ,int ,int *) ;
 int br_ssl_server_init_minu2g (TYPE_1__*,int ,int ,int *) ;
 int br_ssl_server_init_minv2g (TYPE_1__*,int ,int ,int *) ;
 int br_ssl_server_reset (TYPE_1__*) ;
 int br_sslio_close (int *) ;
 int br_sslio_init (int *,int *,int ,int*,int ,int*) ;
 scalar_t__ br_sslio_read (int *,unsigned char*,int) ;
 int br_sslio_write_all (int *,int ,int ) ;
 int close (int) ;
 int fprintf (int ,char*,...) ;
 int host_bind (int *,char const*) ;
 int signal (int ,int ) ;
 int sock_read ;
 int sock_write ;
 int stderr ;
 int strlen (int ) ;

int
main(int argc, char *argv[])
{
 const char *port;
 int fd;

 if (argc != 2) {
  return EXIT_FAILURE;
 }
 port = argv[1];




 signal(SIGPIPE, SIG_IGN);




 fd = host_bind(((void*)0), port);
 if (fd < 0) {
  return EXIT_FAILURE;
 }




 for (;;) {
  int cfd;
  br_ssl_server_context sc;
  unsigned char iobuf[BR_SSL_BUFSIZE_BIDI];
  br_sslio_context ioc;
  int lcwn, err;

  cfd = accept_client(fd);
  if (cfd < 0) {
   return EXIT_FAILURE;
  }
  br_ssl_server_init_full_ec(&sc, CHAIN, CHAIN_LEN,
   BR_KEYTYPE_RSA, &SKEY);
  br_ssl_engine_set_buffer(&sc.eng, iobuf, sizeof iobuf, 1);




  br_ssl_server_reset(&sc);




  br_sslio_init(&ioc, &sc.eng, sock_read, &cfd, sock_write, &cfd);




  lcwn = 0;
  for (;;) {
   unsigned char x;

   if (br_sslio_read(&ioc, &x, 1) < 0) {
    goto client_drop;
   }
   if (x == 0x0D) {
    continue;
   }
   if (x == 0x0A) {
    if (lcwn) {
     break;
    }
    lcwn = 1;
   } else {
    lcwn = 0;
   }
  }




  br_sslio_write_all(&ioc, HTTP_RES, strlen(HTTP_RES));
  br_sslio_close(&ioc);

 client_drop:
  err = br_ssl_engine_last_error(&sc.eng);
  if (err == 0) {
   fprintf(stderr, "SSL closed (correctly).\n");
  } else {
   fprintf(stderr, "SSL error: %d\n", err);
  }
  close(cfd);
 }
}
