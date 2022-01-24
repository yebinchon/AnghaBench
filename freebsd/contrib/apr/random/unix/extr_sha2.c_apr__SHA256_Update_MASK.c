#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sha2_word32 ;
typedef  int /*<<< orphan*/  const sha2_byte ;
struct TYPE_4__ {int bitcount; int /*<<< orphan*/ * buffer; } ;
typedef  TYPE_1__ SHA256_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t) ; 
 int SHA256_BLOCK_LENGTH ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

void FUNC3(SHA256_CTX* context, const sha2_byte *data, size_t len) {
        unsigned int    freespace, usedspace;

        if (len == 0) {
                /* Calling with no data is valid - we do nothing */
                return;
        }

        /* Sanity check: */
        FUNC2(context != (SHA256_CTX*)0 && data != (sha2_byte*)0);

        usedspace = (unsigned int)((context->bitcount >> 3) 
                                 % SHA256_BLOCK_LENGTH);
        if (usedspace > 0) {
                /* Calculate how much free space is available in the buffer */
                freespace = SHA256_BLOCK_LENGTH - usedspace;

                if (len >= freespace) {
                        /* Fill the buffer completely and process it */
                        FUNC0(&context->buffer[usedspace], data, freespace);
                        context->bitcount += freespace << 3;
                        len -= freespace;
                        data += freespace;
                        FUNC1(context, (sha2_word32*)context->buffer);
                } else {
                        /* The buffer is not yet full */
                        FUNC0(&context->buffer[usedspace], data, len);
                        context->bitcount += len << 3;
                        /* Clean up: */
                        usedspace = freespace = 0;
                        return;
                }
        }
        while (len >= SHA256_BLOCK_LENGTH) {
                /* Process as many complete blocks as we can */
                FUNC1(context, (sha2_word32*)data);
                context->bitcount += SHA256_BLOCK_LENGTH << 3;
                len -= SHA256_BLOCK_LENGTH;
                data += SHA256_BLOCK_LENGTH;
        }
        if (len > 0) {
                /* There's left-overs, so save 'em */
                FUNC0(context->buffer, data, len);
                context->bitcount += len << 3;
        }
        /* Clean up: */
        usedspace = freespace = 0;
}