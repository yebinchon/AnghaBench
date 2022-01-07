; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_iowarrior.c_iowarrior_disconnect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_iowarrior.c_iowarrior_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.iowarrior = type { i32, i32, i32, i32, i64, i32, i64 }

@iowarrior_open_disc_lock = common dso_local global i32 0, align 4
@iowarrior_class = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"I/O-Warror #%d now disconnected\0A\00", align 1
@IOWARRIOR_MINOR_BASE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @iowarrior_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iowarrior_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.iowarrior*, align 8
  %4 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %5 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %6 = call %struct.iowarrior* @usb_get_intfdata(%struct.usb_interface* %5)
  store %struct.iowarrior* %6, %struct.iowarrior** %3, align 8
  %7 = call i32 @mutex_lock(i32* @iowarrior_open_disc_lock)
  %8 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %9 = call i32 @usb_set_intfdata(%struct.usb_interface* %8, i32* null)
  %10 = load %struct.iowarrior*, %struct.iowarrior** %3, align 8
  %11 = getelementptr inbounds %struct.iowarrior, %struct.iowarrior* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %4, align 4
  %13 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %14 = call i32 @usb_deregister_dev(%struct.usb_interface* %13, i32* @iowarrior_class)
  %15 = load %struct.iowarrior*, %struct.iowarrior** %3, align 8
  %16 = getelementptr inbounds %struct.iowarrior, %struct.iowarrior* %15, i32 0, i32 5
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.iowarrior*, %struct.iowarrior** %3, align 8
  %19 = getelementptr inbounds %struct.iowarrior, %struct.iowarrior* %18, i32 0, i32 6
  store i64 0, i64* %19, align 8
  %20 = load %struct.iowarrior*, %struct.iowarrior** %3, align 8
  %21 = getelementptr inbounds %struct.iowarrior, %struct.iowarrior* %20, i32 0, i32 5
  %22 = call i32 @mutex_unlock(i32* %21)
  %23 = call i32 @mutex_unlock(i32* @iowarrior_open_disc_lock)
  %24 = load %struct.iowarrior*, %struct.iowarrior** %3, align 8
  %25 = getelementptr inbounds %struct.iowarrior, %struct.iowarrior* %24, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %1
  %29 = load %struct.iowarrior*, %struct.iowarrior** %3, align 8
  %30 = getelementptr inbounds %struct.iowarrior, %struct.iowarrior* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @usb_kill_urb(i32 %31)
  %33 = load %struct.iowarrior*, %struct.iowarrior** %3, align 8
  %34 = getelementptr inbounds %struct.iowarrior, %struct.iowarrior* %33, i32 0, i32 2
  %35 = call i32 @wake_up_interruptible(i32* %34)
  %36 = load %struct.iowarrior*, %struct.iowarrior** %3, align 8
  %37 = getelementptr inbounds %struct.iowarrior, %struct.iowarrior* %36, i32 0, i32 1
  %38 = call i32 @wake_up_interruptible(i32* %37)
  br label %42

39:                                               ; preds = %1
  %40 = load %struct.iowarrior*, %struct.iowarrior** %3, align 8
  %41 = call i32 @iowarrior_delete(%struct.iowarrior* %40)
  br label %42

42:                                               ; preds = %39, %28
  %43 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %44 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %43, i32 0, i32 0
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = load i64, i64* @IOWARRIOR_MINOR_BASE, align 8
  %48 = sub nsw i64 %46, %47
  %49 = call i32 @dev_info(i32* %44, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %48)
  ret void
}

declare dso_local %struct.iowarrior* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

declare dso_local i32 @usb_deregister_dev(%struct.usb_interface*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @usb_kill_urb(i32) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @iowarrior_delete(%struct.iowarrior*) #1

declare dso_local i32 @dev_info(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
