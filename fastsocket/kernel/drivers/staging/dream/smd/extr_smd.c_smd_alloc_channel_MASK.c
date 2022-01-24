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
typedef  scalar_t__ uint32_t ;
struct smd_shared {int /*<<< orphan*/  ch1; int /*<<< orphan*/  ch0; } ;
struct TYPE_2__ {int id; scalar_t__* name; } ;
struct smd_channel {TYPE_1__ pdev; int /*<<< orphan*/  ch_list; scalar_t__ n; scalar_t__* name; int /*<<< orphan*/  update_state; int /*<<< orphan*/  write_avail; int /*<<< orphan*/  read_avail; int /*<<< orphan*/  write; int /*<<< orphan*/  read; int /*<<< orphan*/ * recv; int /*<<< orphan*/ * send; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ ID_SMD_CHANNELS ; 
 struct smd_channel* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*,scalar_t__*,scalar_t__,struct smd_shared*) ; 
 int /*<<< orphan*/  smd_ch_closed_list ; 
 int /*<<< orphan*/  smd_creation_mutex ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  smd_packet_read ; 
 int /*<<< orphan*/  smd_packet_read_avail ; 
 int /*<<< orphan*/  smd_packet_write ; 
 int /*<<< orphan*/  smd_packet_write_avail ; 
 int /*<<< orphan*/  smd_stream_read ; 
 int /*<<< orphan*/  smd_stream_read_avail ; 
 int /*<<< orphan*/  smd_stream_write ; 
 int /*<<< orphan*/  smd_stream_write_avail ; 
 struct smd_shared* FUNC9 (scalar_t__,int) ; 
 int /*<<< orphan*/  update_packet_state ; 
 int /*<<< orphan*/  update_stream_state ; 

__attribute__((used)) static void FUNC10(const char *name, uint32_t cid, uint32_t type)
{
	struct smd_channel *ch;
	struct smd_shared *shared;

	shared = FUNC9(ID_SMD_CHANNELS + cid, sizeof(*shared));
	if (!shared) {
		FUNC6("smd_alloc_channel() cid %d does not exist\n", cid);
		return;
	}

	ch = FUNC0(sizeof(struct smd_channel), GFP_KERNEL);
	if (ch == 0) {
		FUNC6("smd_alloc_channel() out of memory\n");
		return;
	}

	ch->send = &shared->ch0;
	ch->recv = &shared->ch1;
	ch->n = cid;

	if (FUNC8(cid)) {
		ch->read = smd_packet_read;
		ch->write = smd_packet_write;
		ch->read_avail = smd_packet_read_avail;
		ch->write_avail = smd_packet_write_avail;
		ch->update_state = update_packet_state;
	} else {
		ch->read = smd_stream_read;
		ch->write = smd_stream_write;
		ch->read_avail = smd_stream_read_avail;
		ch->write_avail = smd_stream_write_avail;
		ch->update_state = update_stream_state;
	}

	FUNC2(ch->name, "SMD_", 4);
	FUNC2(ch->name + 4, name, 20);
	ch->name[23] = 0;
	ch->pdev.name = ch->name;
	ch->pdev.id = -1;

	FUNC7("smd_alloc_channel() '%s' cid=%d, shared=%p\n",
		ch->name, ch->n, shared);

	FUNC3(&smd_creation_mutex);
	FUNC1(&ch->ch_list, &smd_ch_closed_list);
	FUNC4(&smd_creation_mutex);

	FUNC5(&ch->pdev);
}