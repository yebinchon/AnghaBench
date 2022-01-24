#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct snd_soc_platform {int dummy; } ;
struct snd_soc_dai {int /*<<< orphan*/  name; } ;
struct TYPE_4__ {struct snd_soc_dai* cpu_dai; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; struct snd_soc_platform* platform; } ;
struct of_snd_soc_device {TYPE_2__ dai_link; TYPE_1__ card; struct device_node* platform_node; } ;
struct device_node {int /*<<< orphan*/  full_name; } ;
typedef  int /*<<< orphan*/  phandle ;
typedef  int /*<<< orphan*/  handle ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct device_node* FUNC2 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/ * FUNC3 (struct device_node*,char*,int*) ; 
 struct of_snd_soc_device* FUNC4 (struct device_node*) ; 
 int /*<<< orphan*/  of_snd_soc_mutex ; 
 int /*<<< orphan*/  FUNC5 (struct of_snd_soc_device*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 

int FUNC7(struct snd_soc_platform *platform,
				 struct device_node *node,
				 struct snd_soc_dai *cpu_dai)
{
	struct of_snd_soc_device *of_soc;
	struct device_node *codec_node;
	const phandle *handle;
	int len, rc = 0;

	FUNC6("registering ASoC platform driver: %s\n", node->full_name);

	handle = FUNC3(node, "codec-handle", &len);
	if (!handle || len < sizeof(handle))
		return -ENODEV;
	codec_node = FUNC2(*handle);
	if (!codec_node)
		return -ENODEV;
	FUNC6("looking for codec: %s\n", codec_node->full_name);

	FUNC0(&of_snd_soc_mutex);
	of_soc = FUNC4(codec_node);
	if (!of_soc) {
		rc = -ENOMEM;
		goto out;
	}

	of_soc->platform_node = node;
	of_soc->dai_link.cpu_dai = cpu_dai;
	of_soc->card.platform = platform;
	of_soc->card.name = of_soc->dai_link.cpu_dai->name;

	/* Now try to register the SoC device */
	FUNC5(of_soc);

 out:
	FUNC1(&of_snd_soc_mutex);
	return rc;
}