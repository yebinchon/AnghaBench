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
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  phandle ;

/* Variables and functions */
 int FDT_ERR_BADOVERLAY ; 
 int FDT_ERR_NOTFOUND ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (void*,int) ; 
 char* FUNC2 (void*,int,char const*,int*) ; 
 int FUNC3 (void*,char const*) ; 
 int FUNC4 (void*,char const*,scalar_t__) ; 
 int FUNC5 (void*,int,char const*,scalar_t__,int,scalar_t__*,int) ; 

__attribute__((used)) static int FUNC6(void *fdt, void *fdto,
				     int symbols_off,
				     const char *path, uint32_t path_len,
				     const char *name, uint32_t name_len,
				     int poffset, const char *label)
{
	const char *symbol_path;
	uint32_t phandle;
	int symbol_off, fixup_off;
	int prop_len;

	if (symbols_off < 0)
		return symbols_off;

	symbol_path = FUNC2(fdt, symbols_off, label,
				  &prop_len);
	if (!symbol_path)
		return prop_len;

	symbol_off = FUNC3(fdt, symbol_path);
	if (symbol_off < 0)
		return symbol_off;

	phandle = FUNC1(fdt, symbol_off);
	if (!phandle)
		return -FDT_ERR_NOTFOUND;

	fixup_off = FUNC4(fdto, path, path_len);
	if (fixup_off == -FDT_ERR_NOTFOUND)
		return -FDT_ERR_BADOVERLAY;
	if (fixup_off < 0)
		return fixup_off;

	phandle = FUNC0(phandle);
	return FUNC5(fdto, fixup_off,
						   name, name_len, poffset,
						   &phandle, sizeof(phandle));
}