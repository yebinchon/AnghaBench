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
typedef  int __u32 ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int K1 ; 
 int K2 ; 
 int K3 ; 
 int K4 ; 
 int FUNC0 (int /*<<< orphan*/  const) ; 
 int FUNC1 (int,int,int) ; 
 int FUNC2 (int,int,int) ; 
 int FUNC3 (int,int,int) ; 
 int FUNC4 (int,int) ; 

void FUNC5(__u32 *digest, const char *in, __u32 *W)
{
	__u32 a, b, c, d, e, t, i;

	for (i = 0; i < 16; i++)
		W[i] = FUNC0(((const __be32 *)in)[i]);

	for (i = 0; i < 64; i++)
		W[i+16] = FUNC4(W[i+13] ^ W[i+8] ^ W[i+2] ^ W[i], 1);

	a = digest[0];
	b = digest[1];
	c = digest[2];
	d = digest[3];
	e = digest[4];

	for (i = 0; i < 20; i++) {
		t = FUNC1(b, c, d) + K1 + FUNC4(a, 5) + e + W[i];
		e = d; d = c; c = FUNC4(b, 30); b = a; a = t;
	}

	for (; i < 40; i ++) {
		t = FUNC2(b, c, d) + K2 + FUNC4(a, 5) + e + W[i];
		e = d; d = c; c = FUNC4(b, 30); b = a; a = t;
	}

	for (; i < 60; i ++) {
		t = FUNC3(b, c, d) + K3 + FUNC4(a, 5) + e + W[i];
		e = d; d = c; c = FUNC4(b, 30); b = a; a = t;
	}

	for (; i < 80; i ++) {
		t = FUNC2(b, c, d) + K4 + FUNC4(a, 5) + e + W[i];
		e = d; d = c; c = FUNC4(b, 30); b = a; a = t;
	}

	digest[0] += a;
	digest[1] += b;
	digest[2] += c;
	digest[3] += d;
	digest[4] += e;
}