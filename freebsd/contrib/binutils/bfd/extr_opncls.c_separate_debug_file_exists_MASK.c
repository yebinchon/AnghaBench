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
typedef  int /*<<< orphan*/  buffer ;
typedef  int /*<<< orphan*/  bfd_size_type ;
typedef  int bfd_boolean ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int FALSE ; 
 int /*<<< orphan*/  O_RDONLY ; 
 unsigned long FUNC1 (unsigned long,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,unsigned char*,int) ; 

__attribute__((used)) static bfd_boolean
FUNC5 (const char *name, const unsigned long crc)
{
  static unsigned char buffer [8 * 1024];
  unsigned long file_crc = 0;
  int fd;
  bfd_size_type count;

  FUNC0 (name);

  fd = FUNC3 (name, O_RDONLY);
  if (fd < 0)
    return FALSE;

  while ((count = FUNC4 (fd, buffer, sizeof (buffer))) > 0)
    file_crc = FUNC1 (file_crc, buffer, count);

  FUNC2 (fd);

  return crc == file_crc;
}