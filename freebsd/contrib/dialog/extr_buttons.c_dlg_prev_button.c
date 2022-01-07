
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MIN_BUTTON ;

int
dlg_prev_button(const char **labels, int button)
{
    if (button > MIN_BUTTON) {
 --button;
    } else {
 if (button < -1)
     button = -1;

 while (labels[button + 1] != 0)
     ++button;
    }
    return button;
}
