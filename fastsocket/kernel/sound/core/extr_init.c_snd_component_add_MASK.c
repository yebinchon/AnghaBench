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
struct snd_card {char const* components; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int FUNC2 (char const*) ; 
 char* FUNC3 (char const*,char const*) ; 

int FUNC4(struct snd_card *card, const char *component)
{
	char *ptr;
	int len = FUNC2(component);

	ptr = FUNC3(card->components, component);
	if (ptr != NULL) {
		if (ptr[len] == '\0' || ptr[len] == ' ')	/* already there */
			return 1;
	}
	if (FUNC2(card->components) + 1 + len + 1 > sizeof(card->components)) {
		FUNC0();
		return -ENOMEM;
	}
	if (card->components[0] != '\0')
		FUNC1(card->components, " ");
	FUNC1(card->components, component);
	return 0;
}