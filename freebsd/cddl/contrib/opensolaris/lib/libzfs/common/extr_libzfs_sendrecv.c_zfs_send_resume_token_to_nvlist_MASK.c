#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {unsigned long long* zc_word; } ;
typedef  TYPE_1__ zio_cksum_t ;
typedef  unsigned long long uLongf ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  libzfs_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  TEXT_DOMAIN ; 
 unsigned int ZFS_SEND_RESUME_TOKEN_VERSION ; 
 scalar_t__ Z_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*) ; 
 int FUNC3 (void*,unsigned long long,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int FUNC4 (char const*,char*,...) ; 
 int FUNC5 (char const*) ; 
 char* FUNC6 (char const*,char) ; 
 scalar_t__ FUNC7 (void*,unsigned long long*,unsigned char*,int) ; 
 void* FUNC8 (int /*<<< orphan*/ *,unsigned long long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 

nvlist_t *
FUNC10(libzfs_handle_t *hdl, const char *token)
{
	unsigned int version;
	int nread;
	unsigned long long checksum, packed_len;

	/*
	 * Decode token header, which is:
	 *   <token version>-<checksum of payload>-<uncompressed payload length>
	 * Note that the only supported token version is 1.
	 */
	nread = FUNC4(token, "%u-%llx-%llx-",
	    &version, &checksum, &packed_len);
	if (nread != 3) {
		FUNC9(hdl, FUNC0(TEXT_DOMAIN,
		    "resume token is corrupt (invalid format)"));
		return (NULL);
	}

	if (version != ZFS_SEND_RESUME_TOKEN_VERSION) {
		FUNC9(hdl, FUNC0(TEXT_DOMAIN,
		    "resume token is corrupt (invalid version %u)"),
		    version);
		return (NULL);
	}

	/* convert hexadecimal representation to binary */
	token = FUNC6(token, '-') + 1;
	int len = FUNC5(token) / 2;
	unsigned char *compressed = FUNC8(hdl, len);
	for (int i = 0; i < len; i++) {
		nread = FUNC4(token + i * 2, "%2hhx", compressed + i);
		if (nread != 1) {
			FUNC2(compressed);
			FUNC9(hdl, FUNC0(TEXT_DOMAIN,
			    "resume token is corrupt "
			    "(payload is not hex-encoded)"));
			return (NULL);
		}
	}

	/* verify checksum */
	zio_cksum_t cksum;
	FUNC1(compressed, len, NULL, &cksum);
	if (cksum.zc_word[0] != checksum) {
		FUNC2(compressed);
		FUNC9(hdl, FUNC0(TEXT_DOMAIN,
		    "resume token is corrupt (incorrect checksum)"));
		return (NULL);
	}

	/* uncompress */
	void *packed = FUNC8(hdl, packed_len);
	uLongf packed_len_long = packed_len;
	if (FUNC7(packed, &packed_len_long, compressed, len) != Z_OK ||
	    packed_len_long != packed_len) {
		FUNC2(packed);
		FUNC2(compressed);
		FUNC9(hdl, FUNC0(TEXT_DOMAIN,
		    "resume token is corrupt (decompression failed)"));
		return (NULL);
	}

	/* unpack nvlist */
	nvlist_t *nv;
	int error = FUNC3(packed, packed_len, &nv, KM_SLEEP);
	FUNC2(packed);
	FUNC2(compressed);
	if (error != 0) {
		FUNC9(hdl, FUNC0(TEXT_DOMAIN,
		    "resume token is corrupt (nvlist_unpack failed)"));
		return (NULL);
	}
	return (nv);
}