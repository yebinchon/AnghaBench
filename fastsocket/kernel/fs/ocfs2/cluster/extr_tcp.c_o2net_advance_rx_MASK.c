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
struct o2net_sock_container {scalar_t__ sc_handshake_ok; int sc_page_off; int /*<<< orphan*/  sc_tv_advance_stop; int /*<<< orphan*/  sc_sock; int /*<<< orphan*/  sc_page; int /*<<< orphan*/  sc_tv_advance_start; } ;
struct o2net_msg {int /*<<< orphan*/  data_len; } ;
struct o2net_handshake {int dummy; } ;

/* Variables and functions */
 int EOVERFLOW ; 
 int EPROTO ; 
 int O2NET_MAX_PAYLOAD_BYTES ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct o2net_msg*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct o2net_sock_container*) ; 
 int FUNC4 (struct o2net_sock_container*,struct o2net_msg*) ; 
 int FUNC5 (int /*<<< orphan*/ ,void*,size_t) ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct o2net_sock_container*,char*,...) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(struct o2net_sock_container *sc)
{
	struct o2net_msg *hdr;
	int ret = 0;
	void *data;
	size_t datalen;

	FUNC7(sc, "receiving\n");
	FUNC1(&sc->sc_tv_advance_start);

	if (FUNC8(sc->sc_handshake_ok == 0)) {
		if(sc->sc_page_off < sizeof(struct o2net_handshake)) {
			data = FUNC6(sc->sc_page) + sc->sc_page_off;
			datalen = sizeof(struct o2net_handshake) - sc->sc_page_off;
			ret = FUNC5(sc->sc_sock, data, datalen);
			if (ret > 0)
				sc->sc_page_off += ret;
		}

		if (sc->sc_page_off == sizeof(struct o2net_handshake)) {
			FUNC3(sc);
			if (FUNC8(sc->sc_handshake_ok == 0))
				ret = -EPROTO;
		}
		goto out;
	}

	/* do we need more header? */
	if (sc->sc_page_off < sizeof(struct o2net_msg)) {
		data = FUNC6(sc->sc_page) + sc->sc_page_off;
		datalen = sizeof(struct o2net_msg) - sc->sc_page_off;
		ret = FUNC5(sc->sc_sock, data, datalen);
		if (ret > 0) {
			sc->sc_page_off += ret;
			/* only swab incoming here.. we can
			 * only get here once as we cross from
			 * being under to over */
			if (sc->sc_page_off == sizeof(struct o2net_msg)) {
				hdr = FUNC6(sc->sc_page);
				if (FUNC0(hdr->data_len) >
				    O2NET_MAX_PAYLOAD_BYTES)
					ret = -EOVERFLOW;
			}
		}
		if (ret <= 0)
			goto out;
	}

	if (sc->sc_page_off < sizeof(struct o2net_msg)) {
		/* oof, still don't have a header */
		goto out;
	}

	/* this was swabbed above when we first read it */
	hdr = FUNC6(sc->sc_page);

	FUNC2(hdr, "at page_off %zu\n", sc->sc_page_off);

	/* do we need more payload? */
	if (sc->sc_page_off - sizeof(struct o2net_msg) < FUNC0(hdr->data_len)) {
		/* need more payload */
		data = FUNC6(sc->sc_page) + sc->sc_page_off;
		datalen = (sizeof(struct o2net_msg) + FUNC0(hdr->data_len)) -
			  sc->sc_page_off;
		ret = FUNC5(sc->sc_sock, data, datalen);
		if (ret > 0)
			sc->sc_page_off += ret;
		if (ret <= 0)
			goto out;
	}

	if (sc->sc_page_off - sizeof(struct o2net_msg) == FUNC0(hdr->data_len)) {
		/* we can only get here once, the first time we read
		 * the payload.. so set ret to progress if the handler
		 * works out. after calling this the message is toast */
		ret = FUNC4(sc, hdr);
		if (ret == 0)
			ret = 1;
		sc->sc_page_off = 0;
	}

out:
	FUNC7(sc, "ret = %d\n", ret);
	FUNC1(&sc->sc_tv_advance_stop);
	return ret;
}