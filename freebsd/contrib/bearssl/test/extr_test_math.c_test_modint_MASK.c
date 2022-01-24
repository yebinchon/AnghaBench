#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  mpz_t ;
struct TYPE_2__ {int (* decode_mod ) (int*,unsigned char*,size_t,int*) ;int (* ninv ) (int) ;int (* add ) (int*,int*,int) ;int (* sub ) (int*,int*,int) ;int word_size; int /*<<< orphan*/  (* modpow ) (int*,unsigned char*,size_t,int*,int,int*,int*) ;int /*<<< orphan*/  (* montymul ) (int*,int*,int*,int*,int) ;int /*<<< orphan*/  (* to_monty ) (int*,int*) ;int /*<<< orphan*/  (* from_monty ) (int*,int*,int) ;int /*<<< orphan*/  (* reduce ) (int*,int*,int*) ;int /*<<< orphan*/  (* decode ) (int*,unsigned char*,size_t) ;int /*<<< orphan*/  (* decode_reduce ) (int*,unsigned char*,size_t,int*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  RNG ; 
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* impl ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*,size_t*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (char*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC22 (int*,unsigned char*,size_t) ; 
 int FUNC23 (int*,int*,int) ; 
 int FUNC24 (int*,unsigned char*,size_t,int*) ; 
 int FUNC25 (int*,unsigned char*,size_t,int*) ; 
 int FUNC26 (int*,int*,int) ; 
 int FUNC27 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC28 (int*,unsigned char*,size_t,int*) ; 
 int /*<<< orphan*/  FUNC29 (int*,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC30 (int*,int*,int*) ; 
 int FUNC31 (int*,unsigned char*,size_t,int*) ; 
 int /*<<< orphan*/  FUNC32 (int*,int*) ; 
 int FUNC33 (int*,unsigned char*,size_t,int*) ; 
 int /*<<< orphan*/  FUNC34 (int*,int*,int) ; 
 int FUNC35 (int*,unsigned char*,size_t,int*) ; 
 int FUNC36 (int*,unsigned char*,size_t,int*) ; 
 int /*<<< orphan*/  FUNC37 (int*,int*) ; 
 int /*<<< orphan*/  FUNC38 (int*,int*,int*,int*,int) ; 
 int FUNC39 (int*,unsigned char*,size_t,int*) ; 
 int /*<<< orphan*/  FUNC40 (int*,unsigned char*,size_t,int*,int,int*,int*) ; 
 int FUNC41 (int) ; 
 int FUNC42 (int*,unsigned char*,size_t,int*) ; 
 int /*<<< orphan*/  FUNC43 (int*,unsigned char*,size_t) ; 
 int FUNC44 (int*,unsigned char*,size_t,int*) ; 
 int FUNC45 (int*,unsigned char*,size_t,int*) ; 
 int FUNC46 (int*,int*,int) ; 
 int FUNC47 (int*,int*,int) ; 
 scalar_t__ FUNC48 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC49(void)
{
	int i, j, k;
	mpz_t p, a, b, v, t1;

	FUNC20("Test modular integers: ");
	FUNC2(stdout);

	FUNC3(RNG);
	FUNC8(p);
	FUNC8(a);
	FUNC8(b);
	FUNC8(v);
	FUNC8(t1);
	FUNC13(t1, (unsigned long)FUNC48(NULL));
	FUNC4(RNG, t1);
	for (k = 2; k <= 128; k ++) {
		for (i = 0; i < 10; i ++) {
			unsigned char ep[100], ea[100], eb[100], ev[100];
			size_t plen, alen, blen, vlen;
			uint32_t mp[40], ma[40], mb[40], mv[60], mx[100];
			uint32_t mt1[40], mt2[40], mt3[40];
			uint32_t ctl;
			uint32_t mp0i;

			FUNC21(p, k);
			FUNC17(a, RNG, p);
			FUNC17(b, RNG, p);
			FUNC16(v, RNG, k + 60);
			if (FUNC14(b) == 0) {
				FUNC13(b, 1);
			}
			FUNC7(ep, &plen, 1, 1, 0, 0, p);
			FUNC7(ea, &alen, 1, 1, 0, 0, a);
			FUNC7(eb, &blen, 1, 1, 0, 0, b);
			FUNC7(ev, &vlen, 1, 1, 0, 0, v);

			impl->decode(mp, ep, plen);
			if (impl->decode_mod(ma, ea, alen, mp) != 1) {
				FUNC20("Decode error\n");
				FUNC20("  ea = ");
				FUNC19(a);
				FUNC20("\n");
				FUNC20("  p = ");
				FUNC18(mp);
				FUNC20("\n");
				FUNC1(EXIT_FAILURE);
			}
			mp0i = impl->ninv(mp[1]);
			if (impl->decode_mod(mb, eb, blen, mp) != 1) {
				FUNC20("Decode error\n");
				FUNC20("  eb = ");
				FUNC19(b);
				FUNC20("\n");
				FUNC20("  p = ");
				FUNC18(mp);
				FUNC20("\n");
				FUNC1(EXIT_FAILURE);
			}
			impl->decode(mv, ev, vlen);
			FUNC0(mp, p);
			FUNC0(ma, a);
			FUNC0(mb, b);
			FUNC0(mv, v);

			impl->decode_mod(ma, ea, alen, mp);
			impl->decode_mod(mb, eb, blen, mp);
			ctl = impl->add(ma, mb, 1);
			ctl |= impl->sub(ma, mp, 0) ^ (uint32_t)1;
			impl->sub(ma, mp, ctl);
			FUNC5(t1, a, b);
			FUNC9(t1, t1, p);
			FUNC0(ma, t1);

			impl->decode_mod(ma, ea, alen, mp);
			impl->decode_mod(mb, eb, blen, mp);
			impl->add(ma, mp, impl->sub(ma, mb, 1));
			FUNC15(t1, a, b);
			FUNC9(t1, t1, p);
			FUNC0(ma, t1);

			impl->decode_reduce(ma, ev, vlen, mp);
			FUNC9(t1, v, p);
			FUNC0(ma, t1);

			impl->decode(mv, ev, vlen);
			impl->reduce(ma, mv, mp);
			FUNC9(t1, v, p);
			FUNC0(ma, t1);

			impl->decode_mod(ma, ea, alen, mp);
			impl->to_monty(ma, mp);
			FUNC11(t1, a, ((k + impl->word_size - 1)
				/ impl->word_size) * impl->word_size);
			FUNC9(t1, t1, p);
			FUNC0(ma, t1);
			impl->from_monty(ma, mp, mp0i);
			FUNC0(ma, a);

			impl->decode_mod(ma, ea, alen, mp);
			impl->decode_mod(mb, eb, blen, mp);
			impl->to_monty(ma, mp);
			impl->montymul(mt1, ma, mb, mp, mp0i);
			FUNC10(t1, a, b);
			FUNC9(t1, t1, p);
			FUNC0(mt1, t1);

			impl->decode_mod(ma, ea, alen, mp);
			impl->modpow(ma, ev, vlen, mp, mp0i, mt1, mt2);
			FUNC12(t1, a, v, p);
			FUNC0(ma, t1);

			/*
			br_modint_decode(ma, mp, ea, alen);
			br_modint_decode(mb, mp, eb, blen);
			if (!br_modint_div(ma, mb, mp, mt1, mt2, mt3)) {
				fprintf(stderr, "division failed\n");
				exit(EXIT_FAILURE);
			}
			mpz_sub_ui(t1, p, 2);
			mpz_powm(t1, b, t1, p);
			mpz_mul(t1, a, t1);
			mpz_mod(t1, t1, p);
			check_eqz(ma, t1);

			br_modint_decode(ma, mp, ea, alen);
			br_modint_decode(mb, mp, eb, blen);
			for (j = 0; j <= (2 * k + 5); j ++) {
				br_int_add(mx, j, ma, mb);
				mpz_add(t1, a, b);
				mpz_tdiv_r_2exp(t1, t1, j);
				check_eqz(mx, t1);

				br_int_mul(mx, j, ma, mb);
				mpz_mul(t1, a, b);
				mpz_tdiv_r_2exp(t1, t1, j);
				check_eqz(mx, t1);
			}
			*/
		}
		FUNC20(".");
		FUNC2(stdout);
	}
	FUNC6(p);
	FUNC6(a);
	FUNC6(b);
	FUNC6(v);
	FUNC6(t1);

	FUNC20(" done.\n");
	FUNC2(stdout);
}