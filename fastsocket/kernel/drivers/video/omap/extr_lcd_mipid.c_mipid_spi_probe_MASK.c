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
struct spi_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  mode; } ;
struct mipid_device {int /*<<< orphan*/  panel; struct spi_device* spi; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SPI_MODE_0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct mipid_device*) ; 
 struct mipid_device* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct mipid_device*) ; 
 int /*<<< orphan*/  mipid_panel ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct spi_device *spi)
{
	struct mipid_device *md;
	int r;

	md = FUNC2(sizeof(*md), GFP_KERNEL);
	if (md == NULL) {
		FUNC0(&spi->dev, "out of memory\n");
		return -ENOMEM;
	}

	spi->mode = SPI_MODE_0;
	md->spi = spi;
	FUNC1(&spi->dev, md);
	md->panel = mipid_panel;

	r = FUNC3(md);
	if (r < 0)
		return r;

	FUNC4(&md->panel);

	return 0;
}