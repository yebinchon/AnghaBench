#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  br_x509_minimal_context ;
typedef  int /*<<< orphan*/  br_sslio_context ;
struct TYPE_4__ {int /*<<< orphan*/  eng; } ;
typedef  TYPE_1__ br_ssl_client_context ;

/* Variables and functions */
 int BR_SSL_BUFSIZE_BIDI ; 
 scalar_t__ BR_SSL_CLOSED ; 
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int /*<<< orphan*/  SIGPIPE ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int /*<<< orphan*/  TAs ; 
 int /*<<< orphan*/  TAs_NUM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned char*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,int*) ; 
 int FUNC7 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (unsigned char*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC12 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sock_read ; 
 int /*<<< orphan*/  sock_write ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 int FUNC14 (char const*) ; 

int
FUNC15(int argc, char *argv[])
{
	const char *host, *port, *path;
	int fd;
	br_ssl_client_context sc;
	br_x509_minimal_context xc;
	unsigned char iobuf[BR_SSL_BUFSIZE_BIDI];
	br_sslio_context ioc;

	/*
	 * Parse command-line argument: host, port, and path. The path
	 * is optional; if absent, "/" is used.
	 */
	if (argc < 3 || argc > 4) {
		return EXIT_FAILURE;
	}
	host = argv[1];
	port = argv[2];
	if (argc == 4) {
		path = argv[3];
	} else {
		path = "/";
	}

	/*
	 * Ignore SIGPIPE to avoid crashing in case of abrupt socket close.
	 */
	FUNC13(SIGPIPE, SIG_IGN);

	/*
	 * Open the socket to the target server.
	 */
	fd = FUNC12(host, port);
	if (fd < 0) {
		return EXIT_FAILURE;
	}

	/*
	 * Initialise the client context:
	 * -- Use the "full" profile (all supported algorithms).
	 * -- The provided X.509 validation engine is initialised, with
	 *    the hardcoded trust anchor.
	 */
	FUNC0(&sc, &xc, TAs, TAs_NUM);

	/*
	 * Set the I/O buffer to the provided array. We allocated a
	 * buffer large enough for full-duplex behaviour with all
	 * allowed sizes of SSL records, hence we set the last argument
	 * to 1 (which means "split the buffer into separate input and
	 * output areas").
	 */
	FUNC4(&sc.eng, iobuf, sizeof iobuf, 1);

	/*
	 * Reset the client context, for a new handshake. We provide the
	 * target host name: it will be used for the SNI extension. The
	 * last parameter is 0: we are not trying to resume a session.
	 */
	FUNC1(&sc, host, 0);

	/*
	 * Initialise the simplified I/O wrapper context, to use our
	 * SSL client context, and the two callbacks for socket I/O.
	 */
	FUNC6(&ioc, &sc.eng, sock_read, &fd, sock_write, &fd);

	/*
	 * Note that while the context has, at that point, already
	 * assembled the ClientHello to send, nothing happened on the
	 * network yet. Real I/O will occur only with the next call.
	 *
	 * We write our simple HTTP request. We could test each call
	 * for an error (-1), but this is not strictly necessary, since
	 * the error state "sticks": if the context fails for any reason
	 * (e.g. bad server certificate), then it will remain in failed
	 * state and all subsequent calls will return -1 as well.
	 */
	FUNC8(&ioc, "GET ", 4);
	FUNC8(&ioc, path, FUNC14(path));
	FUNC8(&ioc, " HTTP/1.0\r\nHost: ", 17);
	FUNC8(&ioc, host, FUNC14(host));
	FUNC8(&ioc, "\r\n\r\n", 4);

	/*
	 * SSL is a buffered protocol: we make sure that all our request
	 * bytes are sent onto the wire.
	 */
	FUNC5(&ioc);

	/*
	 * Read the server's response. We use here a small 512-byte buffer,
	 * but most of the buffering occurs in the client context: the
	 * server will send full records (up to 16384 bytes worth of data
	 * each), and the client context buffers one full record at a time.
	 */
	for (;;) {
		int rlen;
		unsigned char tmp[512];

		rlen = FUNC7(&ioc, tmp, sizeof tmp);
		if (rlen < 0) {
			break;
		}
		FUNC11(tmp, 1, rlen, stdout);
	}

	/*
	 * Close the socket.
	 */
	FUNC9(fd);

	/*
	 * Check whether we closed properly or not. If the engine is
	 * closed, then its error status allows to distinguish between
	 * a normal closure and a SSL error.
	 *
	 * If the engine is NOT closed, then this means that the
	 * underlying network socket was closed or failed in some way.
	 * Note that many Web servers out there do not properly close
	 * their SSL connections (they don't send a close_notify alert),
	 * which will be reported here as "socket closed without proper
	 * SSL termination".
	 */
	if (FUNC2(&sc.eng) == BR_SSL_CLOSED) {
		int err;

		err = FUNC3(&sc.eng);
		if (err == 0) {
			FUNC10(stderr, "closed.\n");
			return EXIT_SUCCESS;
		} else {
			FUNC10(stderr, "SSL error %d\n", err);
			return EXIT_FAILURE;
		}
	} else {
		FUNC10(stderr,
			"socket closed without proper SSL termination\n");
		return EXIT_FAILURE;
	}
}