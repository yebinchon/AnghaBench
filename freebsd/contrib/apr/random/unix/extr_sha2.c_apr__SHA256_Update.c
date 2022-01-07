
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int sha2_word32 ;
typedef int const sha2_byte ;
struct TYPE_4__ {int bitcount; int * buffer; } ;
typedef TYPE_1__ SHA256_CTX ;


 int MEMCPY_BCOPY (int *,int const*,size_t) ;
 int SHA256_BLOCK_LENGTH ;
 int apr__SHA256_Transform (TYPE_1__*,int *) ;
 int assert (int) ;

void apr__SHA256_Update(SHA256_CTX* context, const sha2_byte *data, size_t len) {
        unsigned int freespace, usedspace;

        if (len == 0) {

                return;
        }


        assert(context != (SHA256_CTX*)0 && data != (sha2_byte*)0);

        usedspace = (unsigned int)((context->bitcount >> 3)
                                 % SHA256_BLOCK_LENGTH);
        if (usedspace > 0) {

                freespace = SHA256_BLOCK_LENGTH - usedspace;

                if (len >= freespace) {

                        MEMCPY_BCOPY(&context->buffer[usedspace], data, freespace);
                        context->bitcount += freespace << 3;
                        len -= freespace;
                        data += freespace;
                        apr__SHA256_Transform(context, (sha2_word32*)context->buffer);
                } else {

                        MEMCPY_BCOPY(&context->buffer[usedspace], data, len);
                        context->bitcount += len << 3;

                        usedspace = freespace = 0;
                        return;
                }
        }
        while (len >= SHA256_BLOCK_LENGTH) {

                apr__SHA256_Transform(context, (sha2_word32*)data);
                context->bitcount += SHA256_BLOCK_LENGTH << 3;
                len -= SHA256_BLOCK_LENGTH;
                data += SHA256_BLOCK_LENGTH;
        }
        if (len > 0) {

                MEMCPY_BCOPY(context->buffer, data, len);
                context->bitcount += len << 3;
        }

        usedspace = freespace = 0;
}
