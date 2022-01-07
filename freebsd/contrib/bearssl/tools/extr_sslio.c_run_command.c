
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t session_id_len; int* session_id; } ;
typedef TYPE_1__ br_ssl_session_parameters ;
typedef int br_ssl_engine_context ;
typedef int br_ssl_client_context ;


 int br_ssl_client_forget_session (int *) ;
 int br_ssl_engine_close (int *) ;
 int br_ssl_engine_get_session_parameters (int *,TYPE_1__*) ;
 int br_ssl_engine_renegotiate (int *) ;
 int br_ssl_engine_set_session_parameters (int *,TYPE_1__*) ;
 int fprintf (int ,char*,...) ;
 int stderr ;

__attribute__((used)) static int
run_command(br_ssl_engine_context *cc, unsigned char *buf, size_t len)
{



 static br_ssl_session_parameters slot;
 static int slot_used = 0;

 size_t u;

 if (len < 2 || len > 3) {
  return 0;
 }
 if (len == 3 && (buf[1] != '\r' || buf[2] != '\n')) {
  return 0;
 }
 if (len == 2 && buf[1] != '\n') {
  return 0;
 }
 switch (buf[0]) {
 case 'Q':
  fprintf(stderr, "closing...\n");
  br_ssl_engine_close(cc);
  return 1;
 case 'R':
  if (br_ssl_engine_renegotiate(cc)) {
   fprintf(stderr, "renegotiating...\n");
  } else {
   fprintf(stderr, "not renegotiating.\n");
  }
  return 1;
 case 'F':







  fprintf(stderr, "forgetting session...\n");
  br_ssl_client_forget_session((br_ssl_client_context *)cc);
  return 1;
 case 'S':
  fprintf(stderr, "saving session parameters...\n");
  br_ssl_engine_get_session_parameters(cc, &slot);
  fprintf(stderr, "  id = ");
  for (u = 0; u < slot.session_id_len; u ++) {
   fprintf(stderr, "%02X", slot.session_id[u]);
  }
  fprintf(stderr, "\n");
  slot_used = 1;
  return 1;
 case 'P':
  if (slot_used) {
   fprintf(stderr, "restoring session parameters...\n");
   fprintf(stderr, "  id = ");
   for (u = 0; u < slot.session_id_len; u ++) {
    fprintf(stderr, "%02X", slot.session_id[u]);
   }
   fprintf(stderr, "\n");
   br_ssl_engine_set_session_parameters(cc, &slot);
   return 1;
  }
  return 0;
 default:
  return 0;
 }
}
