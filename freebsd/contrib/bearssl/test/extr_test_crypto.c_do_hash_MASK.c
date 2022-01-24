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
typedef  int /*<<< orphan*/  br_sha512_context ;
typedef  int /*<<< orphan*/  br_sha384_context ;
typedef  int /*<<< orphan*/  br_sha256_context ;
typedef  int /*<<< orphan*/  br_sha224_context ;
typedef  int /*<<< orphan*/  br_sha1_context ;
typedef  int /*<<< orphan*/  br_md5_context ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
#define  br_md5_ID 133 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void const*,size_t) ; 
#define  br_sha1_ID 132 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,void const*,size_t) ; 
#define  br_sha224_ID 131 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,void const*,size_t) ; 
#define  br_sha256_ID 130 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,void const*,size_t) ; 
#define  br_sha384_ID 129 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,void const*,size_t) ; 
#define  br_sha512_ID 128 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static size_t
FUNC20(int id, const void *data, size_t len, void *out)
{
	br_md5_context cmd5;
	br_sha1_context csha1;
	br_sha224_context csha224;
	br_sha256_context csha256;
	br_sha384_context csha384;
	br_sha512_context csha512;

	switch (id) {
	case br_md5_ID:
		FUNC0(&cmd5);
		FUNC2(&cmd5, data, len);
		FUNC1(&cmd5, out);
		return 16;
	case br_sha1_ID:
		FUNC3(&csha1);
		FUNC5(&csha1, data, len);
		FUNC4(&csha1, out);
		return 20;
	case br_sha224_ID:
		FUNC6(&csha224);
		FUNC8(&csha224, data, len);
		FUNC7(&csha224, out);
		return 28;
	case br_sha256_ID:
		FUNC9(&csha256);
		FUNC11(&csha256, data, len);
		FUNC10(&csha256, out);
		return 32;
	case br_sha384_ID:
		FUNC12(&csha384);
		FUNC14(&csha384, data, len);
		FUNC13(&csha384, out);
		return 48;
	case br_sha512_ID:
		FUNC15(&csha512);
		FUNC17(&csha512, data, len);
		FUNC16(&csha512, out);
		return 64;
	default:
		FUNC19(stderr, "Uknown hash function: %d\n", id);
		FUNC18(EXIT_FAILURE);
		return 0;
	}
}