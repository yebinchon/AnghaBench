#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  VOID ;
typedef  int BYTE ;

/* Variables and functions */
 int L ; 
 int M ; 
 int R ; 
 int FUNC0 (int,int) ; 
 int FUNC1 (int,int) ; 
 int nBytesInM ; 

__attribute__((used)) static VOID FUNC2 (BYTE b)
{
    // Append the byte to our word-sized buffer
    M |= b << (8*nBytesInM);
    nBytesInM++;
    // Process the word if it is full.
    if( nBytesInM >= 4 )
    {
        L ^= M;
        R ^= FUNC0( L, 17 );
        L += R;
        R ^= ((L & 0xff00ff00) >> 8) | ((L & 0x00ff00ff) << 8);
        L += R;
        R ^= FUNC0( L, 3 );
        L += R;
        R ^= FUNC1( L, 2 );
        L += R;
        // Clear the buffer
        M = 0;
        nBytesInM = 0;
    }
}