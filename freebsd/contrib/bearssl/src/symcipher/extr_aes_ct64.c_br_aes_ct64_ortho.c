
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int SWAP2 (int ,int ) ;
 int SWAP4 (int ,int ) ;
 int SWAP8 (int ,int ) ;

void
br_aes_ct64_ortho(uint64_t *q)
{
 do { uint64_t a, b; a = (q[0]); b = (q[1]); (q[0]) = (a & (uint64_t)0x5555555555555555) | ((b & (uint64_t)0x5555555555555555) << (1)); (q[1]) = ((a & (uint64_t)0xAAAAAAAAAAAAAAAA) >> (1)) | (b & (uint64_t)0xAAAAAAAAAAAAAAAA); } while (0);
 do { uint64_t a, b; a = (q[2]); b = (q[3]); (q[2]) = (a & (uint64_t)0x5555555555555555) | ((b & (uint64_t)0x5555555555555555) << (1)); (q[3]) = ((a & (uint64_t)0xAAAAAAAAAAAAAAAA) >> (1)) | (b & (uint64_t)0xAAAAAAAAAAAAAAAA); } while (0);
 do { uint64_t a, b; a = (q[4]); b = (q[5]); (q[4]) = (a & (uint64_t)0x5555555555555555) | ((b & (uint64_t)0x5555555555555555) << (1)); (q[5]) = ((a & (uint64_t)0xAAAAAAAAAAAAAAAA) >> (1)) | (b & (uint64_t)0xAAAAAAAAAAAAAAAA); } while (0);
 do { uint64_t a, b; a = (q[6]); b = (q[7]); (q[6]) = (a & (uint64_t)0x5555555555555555) | ((b & (uint64_t)0x5555555555555555) << (1)); (q[7]) = ((a & (uint64_t)0xAAAAAAAAAAAAAAAA) >> (1)) | (b & (uint64_t)0xAAAAAAAAAAAAAAAA); } while (0);

 do { uint64_t a, b; a = (q[0]); b = (q[2]); (q[0]) = (a & (uint64_t)0x3333333333333333) | ((b & (uint64_t)0x3333333333333333) << (2)); (q[2]) = ((a & (uint64_t)0xCCCCCCCCCCCCCCCC) >> (2)) | (b & (uint64_t)0xCCCCCCCCCCCCCCCC); } while (0);
 do { uint64_t a, b; a = (q[1]); b = (q[3]); (q[1]) = (a & (uint64_t)0x3333333333333333) | ((b & (uint64_t)0x3333333333333333) << (2)); (q[3]) = ((a & (uint64_t)0xCCCCCCCCCCCCCCCC) >> (2)) | (b & (uint64_t)0xCCCCCCCCCCCCCCCC); } while (0);
 do { uint64_t a, b; a = (q[4]); b = (q[6]); (q[4]) = (a & (uint64_t)0x3333333333333333) | ((b & (uint64_t)0x3333333333333333) << (2)); (q[6]) = ((a & (uint64_t)0xCCCCCCCCCCCCCCCC) >> (2)) | (b & (uint64_t)0xCCCCCCCCCCCCCCCC); } while (0);
 do { uint64_t a, b; a = (q[5]); b = (q[7]); (q[5]) = (a & (uint64_t)0x3333333333333333) | ((b & (uint64_t)0x3333333333333333) << (2)); (q[7]) = ((a & (uint64_t)0xCCCCCCCCCCCCCCCC) >> (2)) | (b & (uint64_t)0xCCCCCCCCCCCCCCCC); } while (0);

 do { uint64_t a, b; a = (q[0]); b = (q[4]); (q[0]) = (a & (uint64_t)0x0F0F0F0F0F0F0F0F) | ((b & (uint64_t)0x0F0F0F0F0F0F0F0F) << (4)); (q[4]) = ((a & (uint64_t)0xF0F0F0F0F0F0F0F0) >> (4)) | (b & (uint64_t)0xF0F0F0F0F0F0F0F0); } while (0);
 do { uint64_t a, b; a = (q[1]); b = (q[5]); (q[1]) = (a & (uint64_t)0x0F0F0F0F0F0F0F0F) | ((b & (uint64_t)0x0F0F0F0F0F0F0F0F) << (4)); (q[5]) = ((a & (uint64_t)0xF0F0F0F0F0F0F0F0) >> (4)) | (b & (uint64_t)0xF0F0F0F0F0F0F0F0); } while (0);
 do { uint64_t a, b; a = (q[2]); b = (q[6]); (q[2]) = (a & (uint64_t)0x0F0F0F0F0F0F0F0F) | ((b & (uint64_t)0x0F0F0F0F0F0F0F0F) << (4)); (q[6]) = ((a & (uint64_t)0xF0F0F0F0F0F0F0F0) >> (4)) | (b & (uint64_t)0xF0F0F0F0F0F0F0F0); } while (0);
 do { uint64_t a, b; a = (q[3]); b = (q[7]); (q[3]) = (a & (uint64_t)0x0F0F0F0F0F0F0F0F) | ((b & (uint64_t)0x0F0F0F0F0F0F0F0F) << (4)); (q[7]) = ((a & (uint64_t)0xF0F0F0F0F0F0F0F0) >> (4)) | (b & (uint64_t)0xF0F0F0F0F0F0F0F0); } while (0);
}
