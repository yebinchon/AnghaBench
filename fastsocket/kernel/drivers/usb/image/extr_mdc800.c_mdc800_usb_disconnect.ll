; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/image/extr_mdc800.c_mdc800_usb_disconnect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/image/extr_mdc800.c_mdc800_usb_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.mdc800_data = type { i64, i32*, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"(mdc800_usb_disconnect) called\00", align 1
@NOT_CONNECTED = common dso_local global i64 0, align 8
@mdc800_class = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Mustek MDC800 disconnected from USB.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @mdc800_usb_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mdc800_usb_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.mdc800_data*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %4 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %5 = call %struct.mdc800_data* @usb_get_intfdata(%struct.usb_interface* %4)
  store %struct.mdc800_data* %5, %struct.mdc800_data** %3, align 8
  %6 = call i32 @dbg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.mdc800_data*, %struct.mdc800_data** %3, align 8
  %8 = icmp ne %struct.mdc800_data* %7, null
  br i1 %8, label %9, label %44

9:                                                ; preds = %1
  %10 = load %struct.mdc800_data*, %struct.mdc800_data** %3, align 8
  %11 = getelementptr inbounds %struct.mdc800_data, %struct.mdc800_data* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @NOT_CONNECTED, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  br label %48

16:                                               ; preds = %9
  %17 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %18 = call i32 @usb_deregister_dev(%struct.usb_interface* %17, i32* @mdc800_class)
  %19 = load %struct.mdc800_data*, %struct.mdc800_data** %3, align 8
  %20 = getelementptr inbounds %struct.mdc800_data, %struct.mdc800_data* %19, i32 0, i32 2
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load i64, i64* @NOT_CONNECTED, align 8
  %23 = load %struct.mdc800_data*, %struct.mdc800_data** %3, align 8
  %24 = getelementptr inbounds %struct.mdc800_data, %struct.mdc800_data* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  %25 = load %struct.mdc800_data*, %struct.mdc800_data** %3, align 8
  %26 = getelementptr inbounds %struct.mdc800_data, %struct.mdc800_data* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @usb_kill_urb(i32 %27)
  %29 = load %struct.mdc800_data*, %struct.mdc800_data** %3, align 8
  %30 = getelementptr inbounds %struct.mdc800_data, %struct.mdc800_data* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @usb_kill_urb(i32 %31)
  %33 = load %struct.mdc800_data*, %struct.mdc800_data** %3, align 8
  %34 = getelementptr inbounds %struct.mdc800_data, %struct.mdc800_data* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @usb_kill_urb(i32 %35)
  %37 = load %struct.mdc800_data*, %struct.mdc800_data** %3, align 8
  %38 = getelementptr inbounds %struct.mdc800_data, %struct.mdc800_data* %37, i32 0, i32 2
  %39 = call i32 @mutex_unlock(i32* %38)
  %40 = load %struct.mdc800_data*, %struct.mdc800_data** %3, align 8
  %41 = getelementptr inbounds %struct.mdc800_data, %struct.mdc800_data* %40, i32 0, i32 1
  store i32* null, i32** %41, align 8
  %42 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %43 = call i32 @usb_set_intfdata(%struct.usb_interface* %42, i32* null)
  br label %44

44:                                               ; preds = %16, %1
  %45 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %46 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %45, i32 0, i32 0
  %47 = call i32 @dev_info(i32* %46, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %48

48:                                               ; preds = %44, %15
  ret void
}

declare dso_local %struct.mdc800_data* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @dbg(i8*) #1

declare dso_local i32 @usb_deregister_dev(%struct.usb_interface*, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @usb_kill_urb(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
