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
struct pnp_device_id {scalar_t__ id; } ;
struct module {int /*<<< orphan*/  dev_table_buf; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  acpi_id ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned long,unsigned long const,void*) ; 
 char FUNC2 (char const) ; 

__attribute__((used)) static void FUNC3(void *symval, unsigned long size,
				struct module *mod)
{
	const unsigned long id_size = sizeof(struct pnp_device_id);
	const unsigned int count = (size / id_size)-1;
	const struct pnp_device_id *devs = symval;
	unsigned int i;

	FUNC1(mod->name, "pnp", size, id_size, symval);

	for (i = 0; i < count; i++) {
		const char *id = (char *)devs[i].id;
		char acpi_id[sizeof(devs[0].id)];
		int j;

		FUNC0(&mod->dev_table_buf,
			   "MODULE_ALIAS(\"pnp:d%s*\");\n", id);

		/* fix broken pnp bus lowercasing */
		for (j = 0; j < sizeof(acpi_id); j++)
			acpi_id[j] = FUNC2(id[j]);
		FUNC0(&mod->dev_table_buf,
			   "MODULE_ALIAS(\"acpi*:%s:*\");\n", acpi_id);
	}
}