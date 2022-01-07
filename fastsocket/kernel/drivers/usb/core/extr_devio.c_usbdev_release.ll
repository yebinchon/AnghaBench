; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_devio.c_usbdev_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_devio.c_usbdev_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.dev_state* }
%struct.dev_state = type { i32, i64, i32, %struct.usb_device* }
%struct.usb_device = type { i32 }
%struct.async = type { i32 }

@usbfs_mutex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @usbdev_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbdev_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.dev_state*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.async*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 0
  %11 = load %struct.dev_state*, %struct.dev_state** %10, align 8
  store %struct.dev_state* %11, %struct.dev_state** %5, align 8
  %12 = load %struct.dev_state*, %struct.dev_state** %5, align 8
  %13 = getelementptr inbounds %struct.dev_state, %struct.dev_state* %12, i32 0, i32 3
  %14 = load %struct.usb_device*, %struct.usb_device** %13, align 8
  store %struct.usb_device* %14, %struct.usb_device** %6, align 8
  %15 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %16 = call i32 @usb_lock_device(%struct.usb_device* %15)
  %17 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %18 = load %struct.dev_state*, %struct.dev_state** %5, align 8
  %19 = call i32 @usb_hub_release_all_ports(%struct.usb_device* %17, %struct.dev_state* %18)
  %20 = call i32 @mutex_lock(i32* @usbfs_mutex)
  %21 = load %struct.dev_state*, %struct.dev_state** %5, align 8
  %22 = getelementptr inbounds %struct.dev_state, %struct.dev_state* %21, i32 0, i32 2
  %23 = call i32 @list_del_init(i32* %22)
  %24 = call i32 @mutex_unlock(i32* @usbfs_mutex)
  store i32 0, i32* %7, align 4
  br label %25

25:                                               ; preds = %47, %2
  %26 = load %struct.dev_state*, %struct.dev_state** %5, align 8
  %27 = getelementptr inbounds %struct.dev_state, %struct.dev_state* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load i32, i32* %7, align 4
  %32 = zext i32 %31 to i64
  %33 = icmp ult i64 %32, 64
  br label %34

34:                                               ; preds = %30, %25
  %35 = phi i1 [ false, %25 ], [ %33, %30 ]
  br i1 %35, label %36, label %50

36:                                               ; preds = %34
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.dev_state*, %struct.dev_state** %5, align 8
  %39 = getelementptr inbounds %struct.dev_state, %struct.dev_state* %38, i32 0, i32 1
  %40 = call i64 @test_bit(i32 %37, i64* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load %struct.dev_state*, %struct.dev_state** %5, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @releaseintf(%struct.dev_state* %43, i32 %44)
  br label %46

46:                                               ; preds = %42, %36
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %7, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %7, align 4
  br label %25

50:                                               ; preds = %34
  %51 = load %struct.dev_state*, %struct.dev_state** %5, align 8
  %52 = call i32 @destroy_all_async(%struct.dev_state* %51)
  %53 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %54 = call i32 @usb_autosuspend_device(%struct.usb_device* %53)
  %55 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %56 = call i32 @usb_unlock_device(%struct.usb_device* %55)
  %57 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %58 = call i32 @usb_put_dev(%struct.usb_device* %57)
  %59 = load %struct.dev_state*, %struct.dev_state** %5, align 8
  %60 = getelementptr inbounds %struct.dev_state, %struct.dev_state* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @put_pid(i32 %61)
  %63 = load %struct.dev_state*, %struct.dev_state** %5, align 8
  %64 = call %struct.async* @async_getcompleted(%struct.dev_state* %63)
  store %struct.async* %64, %struct.async** %8, align 8
  br label %65

65:                                               ; preds = %68, %50
  %66 = load %struct.async*, %struct.async** %8, align 8
  %67 = icmp ne %struct.async* %66, null
  br i1 %67, label %68, label %73

68:                                               ; preds = %65
  %69 = load %struct.async*, %struct.async** %8, align 8
  %70 = call i32 @free_async(%struct.async* %69)
  %71 = load %struct.dev_state*, %struct.dev_state** %5, align 8
  %72 = call %struct.async* @async_getcompleted(%struct.dev_state* %71)
  store %struct.async* %72, %struct.async** %8, align 8
  br label %65

73:                                               ; preds = %65
  %74 = load %struct.dev_state*, %struct.dev_state** %5, align 8
  %75 = call i32 @kfree(%struct.dev_state* %74)
  ret i32 0
}

declare dso_local i32 @usb_lock_device(%struct.usb_device*) #1

declare dso_local i32 @usb_hub_release_all_ports(%struct.usb_device*, %struct.dev_state*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @test_bit(i32, i64*) #1

declare dso_local i32 @releaseintf(%struct.dev_state*, i32) #1

declare dso_local i32 @destroy_all_async(%struct.dev_state*) #1

declare dso_local i32 @usb_autosuspend_device(%struct.usb_device*) #1

declare dso_local i32 @usb_unlock_device(%struct.usb_device*) #1

declare dso_local i32 @usb_put_dev(%struct.usb_device*) #1

declare dso_local i32 @put_pid(i32) #1

declare dso_local %struct.async* @async_getcompleted(%struct.dev_state*) #1

declare dso_local i32 @free_async(%struct.async*) #1

declare dso_local i32 @kfree(%struct.dev_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
