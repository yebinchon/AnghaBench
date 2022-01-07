; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_ldusb.c_ld_usb_disconnect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_ldusb.c_ld_usb_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32, i32 }
%struct.ld_usb = type { i32, i32, i32, i32*, i32 }

@ld_usb_class = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"LD USB Device #%d now disconnected\0A\00", align 1
@USB_LD_MINOR_BASE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @ld_usb_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ld_usb_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.ld_usb*, align 8
  %4 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %5 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %6 = call %struct.ld_usb* @usb_get_intfdata(%struct.usb_interface* %5)
  store %struct.ld_usb* %6, %struct.ld_usb** %3, align 8
  %7 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %8 = call i32 @usb_set_intfdata(%struct.usb_interface* %7, i32* null)
  %9 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %10 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %4, align 4
  %12 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %13 = call i32 @usb_deregister_dev(%struct.usb_interface* %12, i32* @ld_usb_class)
  %14 = load %struct.ld_usb*, %struct.ld_usb** %3, align 8
  %15 = getelementptr inbounds %struct.ld_usb, %struct.ld_usb* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.ld_usb*, %struct.ld_usb** %3, align 8
  %18 = getelementptr inbounds %struct.ld_usb, %struct.ld_usb* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %1
  %22 = load %struct.ld_usb*, %struct.ld_usb** %3, align 8
  %23 = getelementptr inbounds %struct.ld_usb, %struct.ld_usb* %22, i32 0, i32 0
  %24 = call i32 @mutex_unlock(i32* %23)
  %25 = load %struct.ld_usb*, %struct.ld_usb** %3, align 8
  %26 = call i32 @ld_usb_delete(%struct.ld_usb* %25)
  br label %39

27:                                               ; preds = %1
  %28 = load %struct.ld_usb*, %struct.ld_usb** %3, align 8
  %29 = getelementptr inbounds %struct.ld_usb, %struct.ld_usb* %28, i32 0, i32 3
  store i32* null, i32** %29, align 8
  %30 = load %struct.ld_usb*, %struct.ld_usb** %3, align 8
  %31 = getelementptr inbounds %struct.ld_usb, %struct.ld_usb* %30, i32 0, i32 2
  %32 = call i32 @wake_up_interruptible_all(i32* %31)
  %33 = load %struct.ld_usb*, %struct.ld_usb** %3, align 8
  %34 = getelementptr inbounds %struct.ld_usb, %struct.ld_usb* %33, i32 0, i32 1
  %35 = call i32 @wake_up_interruptible_all(i32* %34)
  %36 = load %struct.ld_usb*, %struct.ld_usb** %3, align 8
  %37 = getelementptr inbounds %struct.ld_usb, %struct.ld_usb* %36, i32 0, i32 0
  %38 = call i32 @mutex_unlock(i32* %37)
  br label %39

39:                                               ; preds = %27, %21
  %40 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %41 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %40, i32 0, i32 1
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = load i64, i64* @USB_LD_MINOR_BASE, align 8
  %45 = sub nsw i64 %43, %44
  %46 = call i32 @dev_info(i32* %41, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %45)
  ret void
}

declare dso_local %struct.ld_usb* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

declare dso_local i32 @usb_deregister_dev(%struct.usb_interface*, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ld_usb_delete(%struct.ld_usb*) #1

declare dso_local i32 @wake_up_interruptible_all(i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
