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
struct device {int dummy; } ;
struct comedi_device_file_info {TYPE_1__* device; } ;
struct comedi_devconfig {char* board_name; int /*<<< orphan*/  options; } ;
typedef  int /*<<< orphan*/  it ;
struct TYPE_2__ {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int COMEDI_NAMELEN ; 
 unsigned int COMEDI_NDEVCONFOPTS ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC1 (struct device*) ; 
 int /*<<< orphan*/  comedi_autoconfig ; 
 int FUNC2 (TYPE_1__*,struct comedi_devconfig*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 struct comedi_device_file_info* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int*) ; 
 unsigned int* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (struct comedi_devconfig*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char*,char const*,int) ; 

int FUNC13(struct device *hardware_device, const char *board_name,
		       const int *options, unsigned num_options)
{
	struct comedi_devconfig it;
	int minor;
	struct comedi_device_file_info *dev_file_info;
	int retval;
	unsigned *private_data = NULL;

	if (!comedi_autoconfig) {
		FUNC5(hardware_device, NULL);
		return 0;
	}

	minor = FUNC1(hardware_device);
	if (minor < 0)
		return minor;

	private_data = FUNC7(sizeof(unsigned), GFP_KERNEL);
	if (private_data == NULL) {
		retval = -ENOMEM;
		goto cleanup;
	}
	*private_data = minor;
	FUNC5(hardware_device, private_data);

	dev_file_info = FUNC4(minor);

	FUNC9(&it, 0, sizeof(it));
	FUNC12(it.board_name, board_name, COMEDI_NAMELEN);
	it.board_name[COMEDI_NAMELEN - 1] = '\0';
	FUNC0(num_options > COMEDI_NDEVCONFOPTS);
	FUNC8(it.options, options, num_options * sizeof(int));

	FUNC10(&dev_file_info->device->mutex);
	retval = FUNC2(dev_file_info->device, &it);
	FUNC11(&dev_file_info->device->mutex);

cleanup:
	if (retval < 0) {
		FUNC6(private_data);
		FUNC3(minor);
	}
	return retval;
}