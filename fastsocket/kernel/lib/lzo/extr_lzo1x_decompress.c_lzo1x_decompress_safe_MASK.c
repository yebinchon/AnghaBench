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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*,unsigned char const*) ; 
 scalar_t__ FUNC1 (size_t,unsigned char const* const,unsigned char const*) ; 
 scalar_t__ FUNC2 (unsigned char const*,unsigned char*,unsigned char*) ; 
 scalar_t__ FUNC3 (size_t,unsigned char* const,unsigned char*) ; 
 int LZO_E_EOF_NOT_FOUND ; 
 int LZO_E_INPUT_NOT_CONSUMED ; 
 int LZO_E_INPUT_OVERRUN ; 
 int LZO_E_LOOKBEHIND_OVERRUN ; 
 int LZO_E_OK ; 
 int LZO_E_OUTPUT_OVERRUN ; 
 unsigned char* M2_MAX_OFFSET ; 
 int FUNC4 (unsigned char const*) ; 

int FUNC5(const unsigned char *in, size_t in_len,
			unsigned char *out, size_t *out_len)
{
	const unsigned char * const ip_end = in + in_len;
	unsigned char * const op_end = out + *out_len;
	const unsigned char *ip = in, *m_pos;
	unsigned char *op = out;
	size_t t;

	*out_len = 0;

	if (*ip > 17) {
		t = *ip++ - 17;
		if (t < 4)
			goto match_next;
		if (FUNC3(t, op_end, op))
			goto output_overrun;
		if (FUNC1(t + 1, ip_end, ip))
			goto input_overrun;
		do {
			*op++ = *ip++;
		} while (--t > 0);
		goto first_literal_run;
	}

	while ((ip < ip_end)) {
		t = *ip++;
		if (t >= 16)
			goto match;
		if (t == 0) {
			if (FUNC1(1, ip_end, ip))
				goto input_overrun;
			while (*ip == 0) {
				t += 255;
				ip++;
				if (FUNC1(1, ip_end, ip))
					goto input_overrun;
			}
			t += 15 + *ip++;
		}
		if (FUNC3(t + 3, op_end, op))
			goto output_overrun;
		if (FUNC1(t + 4, ip_end, ip))
			goto input_overrun;

		FUNC0(op, ip);
		op += 4;
		ip += 4;
		if (--t > 0) {
			if (t >= 4) {
				do {
					FUNC0(op, ip);
					op += 4;
					ip += 4;
					t -= 4;
				} while (t >= 4);
				if (t > 0) {
					do {
						*op++ = *ip++;
					} while (--t > 0);
				}
			} else {
				do {
					*op++ = *ip++;
				} while (--t > 0);
			}
		}

first_literal_run:
		t = *ip++;
		if (t >= 16)
			goto match;
		m_pos = op - (1 + M2_MAX_OFFSET);
		m_pos -= t >> 2;
		m_pos -= *ip++ << 2;

		if (FUNC2(m_pos, out, op))
			goto lookbehind_overrun;

		if (FUNC3(3, op_end, op))
			goto output_overrun;
		*op++ = *m_pos++;
		*op++ = *m_pos++;
		*op++ = *m_pos;

		goto match_done;

		do {
match:
			if (t >= 64) {
				m_pos = op - 1;
				m_pos -= (t >> 2) & 7;
				m_pos -= *ip++ << 3;
				t = (t >> 5) - 1;
				if (FUNC2(m_pos, out, op))
					goto lookbehind_overrun;
				if (FUNC3(t + 3 - 1, op_end, op))
					goto output_overrun;
				goto copy_match;
			} else if (t >= 32) {
				t &= 31;
				if (t == 0) {
					if (FUNC1(1, ip_end, ip))
						goto input_overrun;
					while (*ip == 0) {
						t += 255;
						ip++;
						if (FUNC1(1, ip_end, ip))
							goto input_overrun;
					}
					t += 31 + *ip++;
				}
				m_pos = op - 1;
				m_pos -= FUNC4(ip) >> 2;
				ip += 2;
			} else if (t >= 16) {
				m_pos = op;
				m_pos -= (t & 8) << 11;

				t &= 7;
				if (t == 0) {
					if (FUNC1(1, ip_end, ip))
						goto input_overrun;
					while (*ip == 0) {
						t += 255;
						ip++;
						if (FUNC1(1, ip_end, ip))
							goto input_overrun;
					}
					t += 7 + *ip++;
				}
				m_pos -= FUNC4(ip) >> 2;
				ip += 2;
				if (m_pos == op)
					goto eof_found;
				m_pos -= 0x4000;
			} else {
				m_pos = op - 1;
				m_pos -= t >> 2;
				m_pos -= *ip++ << 2;

				if (FUNC2(m_pos, out, op))
					goto lookbehind_overrun;
				if (FUNC3(2, op_end, op))
					goto output_overrun;

				*op++ = *m_pos++;
				*op++ = *m_pos;
				goto match_done;
			}

			if (FUNC2(m_pos, out, op))
				goto lookbehind_overrun;
			if (FUNC3(t + 3 - 1, op_end, op))
				goto output_overrun;

			if (t >= 2 * 4 - (3 - 1) && (op - m_pos) >= 4) {
				FUNC0(op, m_pos);
				op += 4;
				m_pos += 4;
				t -= 4 - (3 - 1);
				do {
					FUNC0(op, m_pos);
					op += 4;
					m_pos += 4;
					t -= 4;
				} while (t >= 4);
				if (t > 0)
					do {
						*op++ = *m_pos++;
					} while (--t > 0);
			} else {
copy_match:
				*op++ = *m_pos++;
				*op++ = *m_pos++;
				do {
					*op++ = *m_pos++;
				} while (--t > 0);
			}
match_done:
			t = ip[-2] & 3;
			if (t == 0)
				break;
match_next:
			if (FUNC3(t, op_end, op))
				goto output_overrun;
			if (FUNC1(t + 1, ip_end, ip))
				goto input_overrun;

			*op++ = *ip++;
			if (t > 1) {
				*op++ = *ip++;
				if (t > 2)
					*op++ = *ip++;
			}

			t = *ip++;
		} while (ip < ip_end);
	}

	*out_len = op - out;
	return LZO_E_EOF_NOT_FOUND;

eof_found:
	*out_len = op - out;
	return (ip == ip_end ? LZO_E_OK :
		(ip < ip_end ? LZO_E_INPUT_NOT_CONSUMED : LZO_E_INPUT_OVERRUN));
input_overrun:
	*out_len = op - out;
	return LZO_E_INPUT_OVERRUN;

output_overrun:
	*out_len = op - out;
	return LZO_E_OUTPUT_OVERRUN;

lookbehind_overrun:
	*out_len = op - out;
	return LZO_E_LOOKBEHIND_OVERRUN;
}