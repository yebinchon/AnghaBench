
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HMAC_SHA1 (unsigned char*,int,unsigned char*,int,unsigned char*) ;
 int SHA_DIGEST_LEN ;
 int memcpy (unsigned char*,unsigned char*,int) ;
 scalar_t__ strlen (char*) ;

void F(char *password, unsigned char *ssid, int ssidlength, int iterations, int count, unsigned char *output)
{
    unsigned char digest[36], digest1[SHA_DIGEST_LEN];
    int i, j;


    memcpy(digest, ssid, ssidlength);
    digest[ssidlength] = (unsigned char)((count>>24) & 0xff);
    digest[ssidlength+1] = (unsigned char)((count>>16) & 0xff);
    digest[ssidlength+2] = (unsigned char)((count>>8) & 0xff);
    digest[ssidlength+3] = (unsigned char)(count & 0xff);
    HMAC_SHA1(digest, ssidlength+4, (unsigned char*) password, (int) strlen(password), digest1);


    memcpy(output, digest1, SHA_DIGEST_LEN);

    for (i = 1; i < iterations; i++)
    {

        HMAC_SHA1(digest1, SHA_DIGEST_LEN, (unsigned char*) password, (int) strlen(password), digest);
        memcpy(digest1, digest, SHA_DIGEST_LEN);


        for (j = 0; j < SHA_DIGEST_LEN; j++)
        {
            output[j] ^= digest[j];
        }
    }
}
