
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MIN_BUTTON ;

int
dlg_next_button(const char **labels, int button)
{
    if (button < -1)
 button = -1;

    if (labels[button + 1] != 0) {
 ++button;
    } else {
 button = MIN_BUTTON;
    }
    return button;
}
