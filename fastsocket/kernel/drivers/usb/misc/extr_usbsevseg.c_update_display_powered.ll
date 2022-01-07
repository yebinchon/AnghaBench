; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_usbsevseg.c_update_display_powered.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_usbsevseg.c_update_display_powered.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_sevsegdev = type { i32, i64, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"power retval = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_sevsegdev*)* @update_display_powered to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_display_powered(%struct.usb_sevsegdev* %0) #0 {
  %2 = alloca %struct.usb_sevsegdev*, align 8
  %3 = alloca i32, align 4
  store %struct.usb_sevsegdev* %0, %struct.usb_sevsegdev** %2, align 8
  %4 = load %struct.usb_sevsegdev*, %struct.usb_sevsegdev** %2, align 8
  %5 = getelementptr inbounds %struct.usb_sevsegdev, %struct.usb_sevsegdev* %4, i32 0, i32 2
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %22, label %8

8:                                                ; preds = %1
  %9 = load %struct.usb_sevsegdev*, %struct.usb_sevsegdev** %2, align 8
  %10 = getelementptr inbounds %struct.usb_sevsegdev, %struct.usb_sevsegdev* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %8
  %14 = load %struct.usb_sevsegdev*, %struct.usb_sevsegdev** %2, align 8
  %15 = getelementptr inbounds %struct.usb_sevsegdev, %struct.usb_sevsegdev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @usb_autopm_get_interface(i32 %16)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  br label %62

21:                                               ; preds = %13
  br label %22

22:                                               ; preds = %21, %8, %1
  %23 = load %struct.usb_sevsegdev*, %struct.usb_sevsegdev** %2, align 8
  %24 = getelementptr inbounds %struct.usb_sevsegdev, %struct.usb_sevsegdev* %23, i32 0, i32 3
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = load %struct.usb_sevsegdev*, %struct.usb_sevsegdev** %2, align 8
  %27 = getelementptr inbounds %struct.usb_sevsegdev, %struct.usb_sevsegdev* %26, i32 0, i32 3
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = call i32 @usb_sndctrlpipe(%struct.TYPE_3__* %28, i32 0)
  %30 = load %struct.usb_sevsegdev*, %struct.usb_sevsegdev** %2, align 8
  %31 = getelementptr inbounds %struct.usb_sevsegdev, %struct.usb_sevsegdev* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 1, i32 0
  %36 = add nsw i32 0, %35
  %37 = call i32 @usb_control_msg(%struct.TYPE_3__* %25, i32 %29, i32 18, i32 72, i32 20490, i32 %36, i32* null, i32 0, i32 2000)
  store i32 %37, i32* %3, align 4
  %38 = load i32, i32* %3, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %22
  %41 = load %struct.usb_sevsegdev*, %struct.usb_sevsegdev** %2, align 8
  %42 = getelementptr inbounds %struct.usb_sevsegdev, %struct.usb_sevsegdev* %41, i32 0, i32 3
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @dev_dbg(i32* %44, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %40, %22
  %48 = load %struct.usb_sevsegdev*, %struct.usb_sevsegdev** %2, align 8
  %49 = getelementptr inbounds %struct.usb_sevsegdev, %struct.usb_sevsegdev* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %47
  %53 = load %struct.usb_sevsegdev*, %struct.usb_sevsegdev** %2, align 8
  %54 = getelementptr inbounds %struct.usb_sevsegdev, %struct.usb_sevsegdev* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %52
  %58 = load %struct.usb_sevsegdev*, %struct.usb_sevsegdev** %2, align 8
  %59 = getelementptr inbounds %struct.usb_sevsegdev, %struct.usb_sevsegdev* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @usb_autopm_put_interface(i32 %60)
  br label %62

62:                                               ; preds = %20, %57, %52, %47
  ret void
}

declare dso_local i32 @usb_autopm_get_interface(i32) #1

declare dso_local i32 @usb_control_msg(%struct.TYPE_3__*, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @usb_autopm_put_interface(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
