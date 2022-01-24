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
typedef  int /*<<< orphan*/  br_shake_context ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned char*,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 size_t FUNC8 (unsigned char*,char const* const) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void
FUNC10(int security_level, const char *const *kat)
{
	size_t u;

	for (u = 0; kat[u] != NULL; u += 2) {
		unsigned char msg[250], out[250], ref[250];
		size_t msg_len, out_len, v;
		br_shake_context sc;

		msg_len = FUNC8(msg, kat[u]);
		out_len = FUNC8(ref, kat[u + 1]);
		FUNC1(&sc, security_level);
		FUNC2(&sc, msg, msg_len);
		FUNC0(&sc);
		FUNC3(&sc, out, out_len);
		FUNC4("KAT 1", out, ref, out_len);

		FUNC1(&sc, security_level);
		for (v = 0; v < msg_len; v ++) {
			FUNC2(&sc, msg + v, 1);
		}
		FUNC0(&sc);
		FUNC3(&sc, out, out_len);
		FUNC4("KAT 2", out, ref, out_len);

		FUNC1(&sc, security_level);
		FUNC2(&sc, msg, msg_len);
		FUNC0(&sc);
		for (v = 0; v < out_len; v ++) {
			unsigned char x;

			FUNC3(&sc, &x, 1);
			if (x != ref[v]) {
				FUNC7(stderr, "KAT 3 (byte %u)\n",
					(unsigned)v);
				FUNC5(EXIT_FAILURE);
			}
		}

		FUNC9(".");
		FUNC6(stdout);
	}
}