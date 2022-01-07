
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int BYTE ;


 int L ;
 int M ;
 int R ;
 int ROL32 (int,int) ;
 int ROR32 (int,int) ;
 int nBytesInM ;

__attribute__((used)) static VOID s_vAppendByte (BYTE b)
{

    M |= b << (8*nBytesInM);
    nBytesInM++;

    if( nBytesInM >= 4 )
    {
        L ^= M;
        R ^= ROL32( L, 17 );
        L += R;
        R ^= ((L & 0xff00ff00) >> 8) | ((L & 0x00ff00ff) << 8);
        L += R;
        R ^= ROL32( L, 3 );
        L += R;
        R ^= ROR32( L, 2 );
        L += R;

        M = 0;
        nBytesInM = 0;
    }
}
