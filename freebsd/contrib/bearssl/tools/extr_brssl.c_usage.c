
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static void
usage(void)
{
 fprintf(stderr, "usage: brssl command [ options ]\n");
 fprintf(stderr, "available commands:\n");
 fprintf(stderr, "   client       run SSL client\n");
 fprintf(stderr, "   server       run SSL server\n");
 fprintf(stderr, "   verify       verify certificate chain\n");
 fprintf(stderr, "   skey         decode private key\n");
 fprintf(stderr, "   ta           decode trust anchors\n");
 fprintf(stderr, "   chain        make C code for certificate chains\n");
 fprintf(stderr, "   twrch        run the Twrch protocol\n");
 fprintf(stderr, "   impl         report on implementations\n");
}
