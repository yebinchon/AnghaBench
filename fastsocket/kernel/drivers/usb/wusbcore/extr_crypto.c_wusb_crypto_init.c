
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ debug_crypto_verify ;
 int wusb_key_derive_verify () ;
 int wusb_oob_mic_verify () ;

int wusb_crypto_init(void)
{
 int result;

 if (debug_crypto_verify) {
  result = wusb_key_derive_verify();
  if (result < 0)
   return result;
  return wusb_oob_mic_verify();
 }
 return 0;
}
