
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * PUCHAR ;
typedef int PSTRING ;
typedef int INT ;


 int F (int ,int *,int,int,int,int *) ;
 size_t SHA1_DIGEST_SIZE ;
 int strlen (int ) ;

int PasswordHash(PSTRING password, PUCHAR ssid, INT ssidlength, PUCHAR output)
{
    if ((strlen(password) > 63) || (ssidlength > 32))
        return 0;

    F(password, ssid, ssidlength, 4096, 1, output);
    F(password, ssid, ssidlength, 4096, 2, &output[SHA1_DIGEST_SIZE]);
    return 1;
}
