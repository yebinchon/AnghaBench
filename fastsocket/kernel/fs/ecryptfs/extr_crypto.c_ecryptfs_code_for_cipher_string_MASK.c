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
typedef  int /*<<< orphan*/  u8 ;
struct ecryptfs_cipher_code_str_map_elem {char* cipher_str; int /*<<< orphan*/  cipher_code; } ;

/* Variables and functions */
 int FUNC0 (struct ecryptfs_cipher_code_str_map_elem*) ; 
 int /*<<< orphan*/  RFC2440_CIPHER_AES_128 ; 
 int /*<<< orphan*/  RFC2440_CIPHER_AES_192 ; 
 int /*<<< orphan*/  RFC2440_CIPHER_AES_256 ; 
 struct ecryptfs_cipher_code_str_map_elem* ecryptfs_cipher_code_str_map ; 
 scalar_t__ FUNC1 (char*,char*) ; 

u8 FUNC2(char *cipher_name, size_t key_bytes)
{
	int i;
	u8 code = 0;
	struct ecryptfs_cipher_code_str_map_elem *map =
		ecryptfs_cipher_code_str_map;

	if (FUNC1(cipher_name, "aes") == 0) {
		switch (key_bytes) {
		case 16:
			code = RFC2440_CIPHER_AES_128;
			break;
		case 24:
			code = RFC2440_CIPHER_AES_192;
			break;
		case 32:
			code = RFC2440_CIPHER_AES_256;
		}
	} else {
		for (i = 0; i < FUNC0(ecryptfs_cipher_code_str_map); i++)
			if (FUNC1(cipher_name, map[i].cipher_str) == 0) {
				code = map[i].cipher_code;
				break;
			}
	}
	return code;
}