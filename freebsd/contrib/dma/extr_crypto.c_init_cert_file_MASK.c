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
typedef  int /*<<< orphan*/  SSL_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERR ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  SSL_FILETYPE_PEM ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char const*,...) ; 

__attribute__((used)) static int
FUNC5(SSL_CTX *ctx, const char *path)
{
	int error;

	/* Load certificate into ctx */
	error = FUNC2(ctx, path);
	if (error < 1) {
		FUNC4(LOG_ERR, "SSL: Cannot load certificate `%s': %s", path, FUNC3());
		return (-1);
	}

	/* Add private key to ctx */
	error = FUNC1(ctx, path, SSL_FILETYPE_PEM);
	if (error < 1) {
		FUNC4(LOG_ERR, "SSL: Cannot load private key `%s': %s", path, FUNC3());
		return (-1);
	}

	/*
	 * Check the consistency of a private key with the corresponding
         * certificate
	 */
	error = FUNC0(ctx);
	if (error < 1) {
		FUNC4(LOG_ERR, "SSL: Cannot check private key: %s", FUNC3());
		return (-1);
	}

	return (0);
}