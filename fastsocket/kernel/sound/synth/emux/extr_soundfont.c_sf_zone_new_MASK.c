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
struct snd_soundfont {struct snd_sf_zone* zones; } ;
struct snd_sf_zone {int /*<<< orphan*/  v; struct snd_sf_zone* next; } ;
struct snd_sf_list {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct snd_sf_zone* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_sf_list*,struct snd_soundfont*,struct snd_sf_zone*) ; 

__attribute__((used)) static struct snd_sf_zone *
FUNC3(struct snd_sf_list *sflist, struct snd_soundfont *sf)
{
	struct snd_sf_zone *zp;

	if ((zp = FUNC1(sizeof(*zp), GFP_KERNEL)) == NULL)
		return NULL;
	zp->next = sf->zones;
	sf->zones = zp;

	FUNC0(&zp->v);

	FUNC2(sflist, sf, zp);
	return zp;
}