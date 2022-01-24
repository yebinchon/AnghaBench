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
typedef  int /*<<< orphan*/  X509 ;
struct TYPE_2__ {int /*<<< orphan*/ * ssl; int /*<<< orphan*/  features; int /*<<< orphan*/ * certfile; } ;
typedef  int /*<<< orphan*/  SSL_METHOD ;
typedef  int /*<<< orphan*/  SSL_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  LOG_INFO ; 
 int /*<<< orphan*/  LOG_NOTICE ; 
 int /*<<< orphan*/  LOG_WARNING ; 
 int /*<<< orphan*/  NOSSL ; 
 int SECURETRANS ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 int STARTTLS ; 
 int TLS_OPP ; 
 int /*<<< orphan*/ * FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 TYPE_1__ config ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  neterr ; 
 int FUNC13 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*,...) ; 

int
FUNC17(int fd, int feature)
{
	SSL_CTX *ctx = NULL;
#if (OPENSSL_VERSION_NUMBER >= 0x00909000L)
	const SSL_METHOD *meth = NULL;
#else
	SSL_METHOD *meth = NULL;
#endif
	X509 *cert;
	int error;

	/* XXX clean up on error/close */
	/* Init SSL library */
	FUNC3();
	FUNC4();

	// Allow any possible version
#if (OPENSSL_VERSION_NUMBER >= 0x10100000L)
	meth = TLS_client_method();
#else
	meth = FUNC8();
#endif

	ctx = FUNC0(meth);
	if (ctx == NULL) {
		FUNC16(LOG_WARNING, "remote delivery deferred: SSL init failed: %s", FUNC15());
		return (1);
	}

	/* User supplied a certificate */
	if (config.certfile != NULL) {
		error = FUNC12(ctx, config.certfile);
		if (error) {
			FUNC16(LOG_WARNING, "remote delivery deferred");
			return (1);
		}
	}

	/*
	 * If the user wants STARTTLS, we have to send EHLO here
	 */
	if (((feature & SECURETRANS) != 0) &&
	     (feature & STARTTLS) != 0) {
		/* TLS init phase, disable SSL_write */
		config.features |= NOSSL;

		FUNC14(fd, "EHLO %s", FUNC11());
		if (FUNC13(fd, 0, NULL) == 2) {
			FUNC14(fd, "STARTTLS");
			if (FUNC13(fd, 0, NULL) != 2) {
				if ((feature & TLS_OPP) == 0) {
					FUNC16(LOG_ERR, "remote delivery deferred: STARTTLS not available: %s", neterr);
					return (1);
				} else {
					FUNC16(LOG_INFO, "in opportunistic TLS mode, STARTTLS not available: %s", neterr);
					return (0);
				}
			}
		}
		/* End of TLS init phase, enable SSL_write/read */
		config.features &= ~NOSSL;
	}

	config.ssl = FUNC5(ctx);
	if (config.ssl == NULL) {
		FUNC16(LOG_NOTICE, "remote delivery deferred: SSL struct creation failed: %s",
		       FUNC15());
		return (1);
	}

	/* Set ssl to work in client mode */
	FUNC6(config.ssl);

	/* Set fd for SSL in/output */
	error = FUNC7(config.ssl, fd);
	if (error == 0) {
		FUNC16(LOG_NOTICE, "remote delivery deferred: SSL set fd failed: %s",
		       FUNC15());
		return (1);
	}

	/* Open SSL connection */
	error = FUNC1(config.ssl);
	if (error < 0) {
		FUNC16(LOG_ERR, "remote delivery deferred: SSL handshake failed fatally: %s",
		       FUNC15());
		return (1);
	}

	/* Get peer certificate */
	cert = FUNC2(config.ssl);
	if (cert == NULL) {
		FUNC16(LOG_WARNING, "remote delivery deferred: Peer did not provide certificate: %s",
		       FUNC15());
	}
	FUNC10(cert);

	return (0);
}