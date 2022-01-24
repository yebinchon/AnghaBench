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
struct ecryptfs_session_key {int encrypted_key_size; char* encrypted_key; } ;

/* Variables and functions */
 int ECRYPTFS_SIG_SIZE_HEX ; 
 char ECRYPTFS_TAG_64_PACKET_TYPE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (char*,int,size_t*) ; 
 char* FUNC2 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 

__attribute__((used)) static int
FUNC4(char *signature, struct ecryptfs_session_key *session_key,
		    char **packet, size_t *packet_len)
{
	size_t i = 0;
	size_t data_len;
	size_t packet_size_len;
	char *message;
	int rc;

	/*
	 *              ***** TAG 64 Packet Format *****
	 *    | Content Type                       | 1 byte       |
	 *    | Key Identifier Size                | 1 or 2 bytes |
	 *    | Key Identifier                     | arbitrary    |
	 *    | Encrypted File Encryption Key Size | 1 or 2 bytes |
	 *    | Encrypted File Encryption Key      | arbitrary    |
	 */
	data_len = (5 + ECRYPTFS_SIG_SIZE_HEX
		    + session_key->encrypted_key_size);
	*packet = FUNC2(data_len, GFP_KERNEL);
	message = *packet;
	if (!message) {
		FUNC0(KERN_ERR, "Unable to allocate memory\n");
		rc = -ENOMEM;
		goto out;
	}
	message[i++] = ECRYPTFS_TAG_64_PACKET_TYPE;
	rc = FUNC1(&message[i], ECRYPTFS_SIG_SIZE_HEX,
					  &packet_size_len);
	if (rc) {
		FUNC0(KERN_ERR, "Error generating tag 64 packet "
				"header; cannot generate packet length\n");
		goto out;
	}
	i += packet_size_len;
	FUNC3(&message[i], signature, ECRYPTFS_SIG_SIZE_HEX);
	i += ECRYPTFS_SIG_SIZE_HEX;
	rc = FUNC1(&message[i],
					  session_key->encrypted_key_size,
					  &packet_size_len);
	if (rc) {
		FUNC0(KERN_ERR, "Error generating tag 64 packet "
				"header; cannot generate packet length\n");
		goto out;
	}
	i += packet_size_len;
	FUNC3(&message[i], session_key->encrypted_key,
	       session_key->encrypted_key_size);
	i += session_key->encrypted_key_size;
	*packet_len = i;
out:
	return rc;
}