
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int br_x509_decoder_context ;
struct TYPE_3__ {int data_len; int data; } ;
typedef TYPE_1__ br_x509_certificate ;


 int br_x509_decoder_get_signer_key_type (int *) ;
 int br_x509_decoder_init (int *,int ,int ) ;
 int br_x509_decoder_last_error (int *) ;
 int br_x509_decoder_push (int *,int ,int ) ;
 int fprintf (int ,char*,int) ;
 int stderr ;

int
get_cert_signer_algo(br_x509_certificate *xc)
{
 br_x509_decoder_context dc;
 int err;

 br_x509_decoder_init(&dc, 0, 0);
 br_x509_decoder_push(&dc, xc->data, xc->data_len);
 err = br_x509_decoder_last_error(&dc);
 if (err != 0) {
  fprintf(stderr,
   "ERROR: certificate decoding failed with error %d\n",
   -err);
  return 0;
 }
 return br_x509_decoder_get_signer_key_type(&dc);
}
