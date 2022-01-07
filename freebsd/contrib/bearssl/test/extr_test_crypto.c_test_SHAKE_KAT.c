
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int br_shake_context ;


 int EXIT_FAILURE ;
 int br_shake_flip (int *) ;
 int br_shake_init (int *,int) ;
 int br_shake_inject (int *,unsigned char*,size_t) ;
 int br_shake_produce (int *,unsigned char*,int) ;
 int check_equals (char*,unsigned char*,unsigned char*,size_t) ;
 int exit (int ) ;
 int fflush (int ) ;
 int fprintf (int ,char*,unsigned int) ;
 size_t hextobin (unsigned char*,char const* const) ;
 int printf (char*) ;
 int stderr ;
 int stdout ;

__attribute__((used)) static void
test_SHAKE_KAT(int security_level, const char *const *kat)
{
 size_t u;

 for (u = 0; kat[u] != ((void*)0); u += 2) {
  unsigned char msg[250], out[250], ref[250];
  size_t msg_len, out_len, v;
  br_shake_context sc;

  msg_len = hextobin(msg, kat[u]);
  out_len = hextobin(ref, kat[u + 1]);
  br_shake_init(&sc, security_level);
  br_shake_inject(&sc, msg, msg_len);
  br_shake_flip(&sc);
  br_shake_produce(&sc, out, out_len);
  check_equals("KAT 1", out, ref, out_len);

  br_shake_init(&sc, security_level);
  for (v = 0; v < msg_len; v ++) {
   br_shake_inject(&sc, msg + v, 1);
  }
  br_shake_flip(&sc);
  br_shake_produce(&sc, out, out_len);
  check_equals("KAT 2", out, ref, out_len);

  br_shake_init(&sc, security_level);
  br_shake_inject(&sc, msg, msg_len);
  br_shake_flip(&sc);
  for (v = 0; v < out_len; v ++) {
   unsigned char x;

   br_shake_produce(&sc, &x, 1);
   if (x != ref[v]) {
    fprintf(stderr, "KAT 3 (byte %u)\n",
     (unsigned)v);
    exit(EXIT_FAILURE);
   }
  }

  printf(".");
  fflush(stdout);
 }
}
