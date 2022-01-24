#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  br_sslio_context ;
struct TYPE_12__ {int /*<<< orphan*/  eng; } ;
typedef  TYPE_1__ br_ssl_server_context ;

/* Variables and functions */
 int /*<<< orphan*/  BR_KEYTYPE_EC ; 
 int /*<<< orphan*/  BR_KEYTYPE_RSA ; 
 int BR_SSL_BUFSIZE_BIDI ; 
 int /*<<< orphan*/  CHAIN ; 
 int /*<<< orphan*/  CHAIN_LEN ; 
 int EXIT_FAILURE ; 
 int /*<<< orphan*/  HTTP_RES ; 
 int /*<<< orphan*/  SIGPIPE ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int /*<<< orphan*/  SKEY ; 
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC19 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sock_read ; 
 int /*<<< orphan*/  sock_write ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 

int
FUNC22(int argc, char *argv[])
{
	const char *port;
	int fd;

	if (argc != 2) {
		return EXIT_FAILURE;
	}
	port = argv[1];

	/*
	 * Ignore SIGPIPE to avoid crashing in case of abrupt socket close.
	 */
	FUNC20(SIGPIPE, SIG_IGN);

	/*
	 * Open the server socket.
	 */
	fd = FUNC19(NULL, port);
	if (fd < 0) {
		return EXIT_FAILURE;
	}

	/*
	 * Process each client, one at a time.
	 */
	for (;;) {
		int cfd;
		br_ssl_server_context sc;
		unsigned char iobuf[BR_SSL_BUFSIZE_BIDI];
		br_sslio_context ioc;
		int lcwn, err;

		cfd = FUNC0(fd);
		if (cfd < 0) {
			return EXIT_FAILURE;
		}

		/*
		 * Initialise the context with the cipher suites and
		 * algorithms. This depends on the server key type
		 * (and, for EC keys, the signature algorithm used by
		 * the CA to sign the server's certificate).
		 *
		 * Depending on the defined macros, we may select one of
		 * the "minimal" profiles. Key exchange algorithm depends
		 * on the key type:
		 *   RSA key: RSA or ECDHE_RSA
		 *   EC key, cert signed with ECDSA: ECDH_ECDSA or ECDHE_ECDSA
		 *   EC key, cert signed with RSA: ECDH_RSA or ECDHE_ECDSA
		 */
#if SERVER_RSA
#if SERVER_PROFILE_MIN_FS
#if SERVER_CHACHA20
		br_ssl_server_init_mine2c(&sc, CHAIN, CHAIN_LEN, &SKEY);
#else
		br_ssl_server_init_mine2g(&sc, CHAIN, CHAIN_LEN, &SKEY);
#endif
#elif SERVER_PROFILE_MIN_NOFS
		br_ssl_server_init_minr2g(&sc, CHAIN, CHAIN_LEN, &SKEY);
#else
		br_ssl_server_init_full_rsa(&sc, CHAIN, CHAIN_LEN, &SKEY);
#endif
#elif SERVER_EC
#if SERVER_PROFILE_MIN_FS
#if SERVER_CHACHA20
		br_ssl_server_init_minf2c(&sc, CHAIN, CHAIN_LEN, &SKEY);
#else
		br_ssl_server_init_minf2g(&sc, CHAIN, CHAIN_LEN, &SKEY);
#endif
#elif SERVER_PROFILE_MIN_NOFS
		br_ssl_server_init_minv2g(&sc, CHAIN, CHAIN_LEN, &SKEY);
#else
		br_ssl_server_init_full_ec(&sc, CHAIN, CHAIN_LEN,
			BR_KEYTYPE_EC, &SKEY);
#endif
#else /* SERVER_MIXED */
#if SERVER_PROFILE_MIN_FS
#if SERVER_CHACHA20
		br_ssl_server_init_minf2c(&sc, CHAIN, CHAIN_LEN, &SKEY);
#else
		br_ssl_server_init_minf2g(&sc, CHAIN, CHAIN_LEN, &SKEY);
#endif
#elif SERVER_PROFILE_MIN_NOFS
		br_ssl_server_init_minu2g(&sc, CHAIN, CHAIN_LEN, &SKEY);
#else
		FUNC3(&sc, CHAIN, CHAIN_LEN,
			BR_KEYTYPE_RSA, &SKEY);
#endif
#endif
		/*
		 * Set the I/O buffer to the provided array. We
		 * allocated a buffer large enough for full-duplex
		 * behaviour with all allowed sizes of SSL records,
		 * hence we set the last argument to 1 (which means
		 * "split the buffer into separate input and output
		 * areas").
		 */
		FUNC2(&sc.eng, iobuf, sizeof iobuf, 1);

		/*
		 * Reset the server context, for a new handshake.
		 */
		FUNC12(&sc);

		/*
		 * Initialise the simplified I/O wrapper context.
		 */
		FUNC14(&ioc, &sc.eng, sock_read, &cfd, sock_write, &cfd);

		/*
		 * Read bytes until two successive LF (or CR+LF) are received.
		 */
		lcwn = 0;
		for (;;) {
			unsigned char x;

			if (FUNC15(&ioc, &x, 1) < 0) {
				goto client_drop;
			}
			if (x == 0x0D) {
				continue;
			}
			if (x == 0x0A) {
				if (lcwn) {
					break;
				}
				lcwn = 1;
			} else {
				lcwn = 0;
			}
		}

		/*
		 * Write a response and close the connection.
		 */
		FUNC16(&ioc, HTTP_RES, FUNC21(HTTP_RES));
		FUNC13(&ioc);

	client_drop:
		err = FUNC1(&sc.eng);
		if (err == 0) {
			FUNC18(stderr, "SSL closed (correctly).\n");
		} else {
			FUNC18(stderr, "SSL error: %d\n", err);
		}
		FUNC17(cfd);
	}
}