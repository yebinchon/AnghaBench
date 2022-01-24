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
struct symbol_cache {long offset; int /*<<< orphan*/  symbol; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct symbol_cache*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 struct symbol_cache* FUNC2 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct symbol_cache*) ; 

__attribute__((used)) static struct symbol_cache *FUNC5(const char *sym, long offset)
{
	struct symbol_cache *sc;

	if (!sym || FUNC3(sym) == 0)
		return NULL;
	sc = FUNC2(sizeof(struct symbol_cache), GFP_KERNEL);
	if (!sc)
		return NULL;

	sc->symbol = FUNC1(sym, GFP_KERNEL);
	if (!sc->symbol) {
		FUNC0(sc);
		return NULL;
	}
	sc->offset = offset;

	FUNC4(sc);
	return sc;
}