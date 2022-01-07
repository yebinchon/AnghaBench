; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_usblcd.c_lcd_disconnect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_usblcd.c_lcd_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32, i32 }
%struct.usb_lcd = type { i32 }

@open_disc_mutex = common dso_local global i32 0, align 4
@lcd_class = common dso_local global i32 0, align 4
@lcd_delete = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"USB LCD #%d now disconnected\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @lcd_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lcd_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.usb_lcd*, align 8
  %4 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %5 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %6 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %4, align 4
  %8 = call i32 @mutex_lock(i32* @open_disc_mutex)
  %9 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %10 = call %struct.usb_lcd* @usb_get_intfdata(%struct.usb_interface* %9)
  store %struct.usb_lcd* %10, %struct.usb_lcd** %3, align 8
  %11 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %12 = call i32 @usb_set_intfdata(%struct.usb_interface* %11, i32* null)
  %13 = call i32 @mutex_unlock(i32* @open_disc_mutex)
  %14 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %15 = call i32 @usb_deregister_dev(%struct.usb_interface* %14, i32* @lcd_class)
  %16 = load %struct.usb_lcd*, %struct.usb_lcd** %3, align 8
  %17 = getelementptr inbounds %struct.usb_lcd, %struct.usb_lcd* %16, i32 0, i32 0
  %18 = load i32, i32* @lcd_delete, align 4
  %19 = call i32 @kref_put(i32* %17, i32 %18)
  %20 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %21 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %20, i32 0, i32 1
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @dev_info(i32* %21, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %22)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.usb_lcd* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @usb_deregister_dev(%struct.usb_interface*, i32*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
