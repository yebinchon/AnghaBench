
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 size_t scnprintf (char*,size_t,char*,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;

size_t wlp_wss_key_print(char *buf, size_t bufsize, u8 *key)
{
 size_t result;

 result = scnprintf(buf, bufsize,
     "%02x %02x %02x %02x %02x %02x "
     "%02x %02x %02x %02x %02x %02x "
     "%02x %02x %02x %02x",
     key[0], key[1], key[2], key[3],
     key[4], key[5], key[6], key[7],
     key[8], key[9], key[10], key[11],
     key[12], key[13], key[14], key[15]);
 return result;
}
