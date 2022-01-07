
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MD5_CTX ;


 int MD5_Final (unsigned char*,int *) ;
 int MD5_Init (int *) ;
 int MD5_Update (int *,unsigned char*,int) ;
 int bcopy (unsigned char*,unsigned char*,int) ;
 int bzero (unsigned char*,int) ;

void
hmac_md5(unsigned char *text, int text_len, unsigned char *key, int key_len,
    unsigned char* digest)
{
        MD5_CTX context;
        unsigned char k_ipad[65];


        unsigned char k_opad[65];


        unsigned char tk[16];
        int i;

        if (key_len > 64) {

                MD5_CTX tctx;

                MD5_Init(&tctx);
                MD5_Update(&tctx, key, key_len);
                MD5_Final(tk, &tctx);

                key = tk;
                key_len = 16;
        }
        bzero( k_ipad, sizeof k_ipad);
        bzero( k_opad, sizeof k_opad);
        bcopy( key, k_ipad, key_len);
        bcopy( key, k_opad, key_len);


        for (i=0; i<64; i++) {
                k_ipad[i] ^= 0x36;
                k_opad[i] ^= 0x5c;
        }



        MD5_Init(&context);

        MD5_Update(&context, k_ipad, 64);
        MD5_Update(&context, text, text_len);
        MD5_Final(digest, &context);



        MD5_Init(&context);

        MD5_Update(&context, k_opad, 64);
        MD5_Update(&context, digest, 16);

        MD5_Final(digest, &context);
}
