
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int F (char*,unsigned char*,int,int,int,unsigned char*) ;
 size_t SHA_DIGEST_LEN ;
 int strlen (char*) ;

int PasswordHash(char *password, unsigned char *ssid, int ssidlength, unsigned char *output)
{
    if ((strlen(password) > 63) || (ssidlength > 32))
        return 0;

    F(password, ssid, ssidlength, 4096, 1, output);
    F(password, ssid, ssidlength, 4096, 2, &output[SHA_DIGEST_LEN]);
    return 1;
}
