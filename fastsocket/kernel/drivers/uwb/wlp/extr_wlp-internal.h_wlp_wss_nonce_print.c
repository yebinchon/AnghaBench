
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlp_nonce {int * data; } ;


 size_t scnprintf (char*,size_t,char*,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static inline
size_t wlp_wss_nonce_print(char *buf, size_t bufsize, struct wlp_nonce *nonce)
{
 size_t result;

 result = scnprintf(buf, bufsize,
     "%02x %02x %02x %02x %02x %02x "
     "%02x %02x %02x %02x %02x %02x "
     "%02x %02x %02x %02x",
     nonce->data[0], nonce->data[1],
     nonce->data[2], nonce->data[3],
     nonce->data[4], nonce->data[5],
     nonce->data[6], nonce->data[7],
     nonce->data[8], nonce->data[9],
     nonce->data[10], nonce->data[11],
     nonce->data[12], nonce->data[13],
     nonce->data[14], nonce->data[15]);
 return result;
}
