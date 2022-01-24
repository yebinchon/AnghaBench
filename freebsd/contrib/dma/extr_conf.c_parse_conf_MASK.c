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
typedef  int /*<<< orphan*/  line ;
struct TYPE_2__ {char* smarthost; char* aliases; char* spooldir; char* authpath; char* certfile; char* mailname; char* masquerade_host; char* masquerade_user; int features; int /*<<< orphan*/  port; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int DEFER ; 
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  EQS ; 
 int /*<<< orphan*/  EX_CONFIG ; 
 int /*<<< orphan*/  EX_NOINPUT ; 
 int FULLBOUNCE ; 
 int INSECURE ; 
 int NULLCLIENT ; 
 int SECURETRANS ; 
 int STARTTLS ; 
 int TLS_OPP ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_1__ config ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char const*,...) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (char const*,char*) ; 
 scalar_t__* FUNC8 (char*,char) ; 
 scalar_t__ FUNC9 (char*,char*) ; 
 char* FUNC10 (char*) ; 
 char* FUNC11 (char*,char) ; 
 char* FUNC12 (char**,int /*<<< orphan*/ ) ; 

void
FUNC13(const char *config_path)
{
	char *word;
	char *data;
	FILE *conf;
	char line[2048];
	int lineno = 0;

	conf = FUNC7(config_path, "r");
	if (conf == NULL) {
		/* Don't treat a non-existing config file as error */
		if (errno == ENOENT)
			return;
		FUNC2(EX_NOINPUT, "can not open config `%s'", config_path);
		/* NOTREACHED */
	}

	while (!FUNC5(conf)) {
		if (FUNC6(line, sizeof(line), conf) == NULL)
			break;
		lineno++;

		FUNC1(line);

		/* We hit a comment */
		if (FUNC8(line, '#'))
			*FUNC8(line, '#') = 0;

		data = line;
		word = FUNC12(&data, EQS);

		/* Ignore empty lines */
		if (word == NULL || *word == 0)
			continue;

		if (data != NULL && *data != 0)
			data = FUNC10(data);
		else
			data = NULL;

		if (FUNC9(word, "SMARTHOST") == 0 && data != NULL)
			config.smarthost = data;
		else if (FUNC9(word, "PORT") == 0 && data != NULL)
			config.port = FUNC0(data);
		else if (FUNC9(word, "ALIASES") == 0 && data != NULL)
			config.aliases = data;
		else if (FUNC9(word, "SPOOLDIR") == 0 && data != NULL)
			config.spooldir = data;
		else if (FUNC9(word, "AUTHPATH") == 0 && data != NULL)
			config.authpath= data;
		else if (FUNC9(word, "CERTFILE") == 0 && data != NULL)
			config.certfile = data;
		else if (FUNC9(word, "MAILNAME") == 0 && data != NULL)
			config.mailname = data;
		else if (FUNC9(word, "MASQUERADE") == 0 && data != NULL) {
			char *user = NULL, *host = NULL;
			if (FUNC11(data, '@')) {
				host = FUNC11(data, '@');
				*host = 0;
				host++;
				user = data;
			} else {
				host = data;
			}
			if (host && *host == 0)
				host = NULL;
                        if (user && *user == 0)
                                user = NULL;
			config.masquerade_host = host;
			config.masquerade_user = user;
		} else if (FUNC9(word, "STARTTLS") == 0 && data == NULL)
			config.features |= STARTTLS;
		else if (FUNC9(word, "OPPORTUNISTIC_TLS") == 0 && data == NULL)
			config.features |= TLS_OPP;
		else if (FUNC9(word, "SECURETRANSFER") == 0 && data == NULL)
			config.features |= SECURETRANS;
		else if (FUNC9(word, "DEFER") == 0 && data == NULL)
			config.features |= DEFER;
		else if (FUNC9(word, "INSECURE") == 0 && data == NULL)
			config.features |= INSECURE;
		else if (FUNC9(word, "FULLBOUNCE") == 0 && data == NULL)
			config.features |= FULLBOUNCE;
		else if (FUNC9(word, "NULLCLIENT") == 0 && data == NULL)
			config.features |= NULLCLIENT;
		else {
			FUNC3(EX_CONFIG, "syntax error in %s:%d", config_path, lineno);
			/* NOTREACHED */
		}
	}

	if ((config.features & NULLCLIENT) && config.smarthost == NULL) {
		FUNC3(EX_CONFIG, "%s: NULLCLIENT requires SMARTHOST", config_path);
		/* NOTREACHED */
	}

	FUNC4(conf);
}