; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/class/extr_usblp.c_usblp_disconnect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/class/extr_usblp.c_usblp_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.usblp = type { i32, i32, i32, i32, i64, i32 }

@usblp_class = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"bogus disconnect\0A\00", align 1
@dev_attr_ieee1284_id = common dso_local global i32 0, align 4
@usblp_mutex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @usblp_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usblp_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.usblp*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %4 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %5 = call %struct.usblp* @usb_get_intfdata(%struct.usb_interface* %4)
  store %struct.usblp* %5, %struct.usblp** %3, align 8
  %6 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %7 = call i32 @usb_deregister_dev(%struct.usb_interface* %6, i32* @usblp_class)
  %8 = load %struct.usblp*, %struct.usblp** %3, align 8
  %9 = icmp ne %struct.usblp* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.usblp*, %struct.usblp** %3, align 8
  %12 = getelementptr inbounds %struct.usblp, %struct.usblp* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %10, %1
  %16 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %17 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %16, i32 0, i32 0
  %18 = call i32 @dev_err(i32* %17, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %19 = call i32 (...) @BUG()
  br label %20

20:                                               ; preds = %15, %10
  %21 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %22 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %21, i32 0, i32 0
  %23 = call i32 @device_remove_file(i32* %22, i32* @dev_attr_ieee1284_id)
  %24 = call i32 @mutex_lock(i32* @usblp_mutex)
  %25 = load %struct.usblp*, %struct.usblp** %3, align 8
  %26 = getelementptr inbounds %struct.usblp, %struct.usblp* %25, i32 0, i32 1
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.usblp*, %struct.usblp** %3, align 8
  %29 = getelementptr inbounds %struct.usblp, %struct.usblp* %28, i32 0, i32 4
  store i64 0, i64* %29, align 8
  %30 = load %struct.usblp*, %struct.usblp** %3, align 8
  %31 = getelementptr inbounds %struct.usblp, %struct.usblp* %30, i32 0, i32 3
  %32 = call i32 @wake_up(i32* %31)
  %33 = load %struct.usblp*, %struct.usblp** %3, align 8
  %34 = getelementptr inbounds %struct.usblp, %struct.usblp* %33, i32 0, i32 2
  %35 = call i32 @wake_up(i32* %34)
  %36 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %37 = call i32 @usb_set_intfdata(%struct.usb_interface* %36, i32* null)
  %38 = load %struct.usblp*, %struct.usblp** %3, align 8
  %39 = call i32 @usblp_unlink_urbs(%struct.usblp* %38)
  %40 = load %struct.usblp*, %struct.usblp** %3, align 8
  %41 = getelementptr inbounds %struct.usblp, %struct.usblp* %40, i32 0, i32 1
  %42 = call i32 @mutex_unlock(i32* %41)
  %43 = load %struct.usblp*, %struct.usblp** %3, align 8
  %44 = getelementptr inbounds %struct.usblp, %struct.usblp* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %20
  %48 = load %struct.usblp*, %struct.usblp** %3, align 8
  %49 = call i32 @usblp_cleanup(%struct.usblp* %48)
  br label %50

50:                                               ; preds = %47, %20
  %51 = call i32 @mutex_unlock(i32* @usblp_mutex)
  ret void
}

declare dso_local %struct.usblp* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @usb_deregister_dev(%struct.usb_interface*, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @device_remove_file(i32*, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

declare dso_local i32 @usblp_unlink_urbs(%struct.usblp*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @usblp_cleanup(%struct.usblp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
