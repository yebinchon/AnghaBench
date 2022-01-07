; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_devio.c_usbdev_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_devio.c_usbdev_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.inode = type { %struct.usb_device*, i32 }
%struct.usb_device = type { i64, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.inode* }
%struct.file = type { %struct.dev_state* }
%struct.dev_state = type { i32, i32, i64, i32*, i32, i32, i32, i64, i32, i32, i32, i32, %struct.file*, %struct.usb_device* }
%struct.cred = type { i32, i32 }

@usbfs_mutex = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@USB_DEVICE_MAJOR = common dso_local global i64 0, align 8
@USB_STATE_NOTATTACHED = common dso_local global i64 0, align 8
@current = common dso_local global %struct.TYPE_7__* null, align 8
@.str = private unnamed_addr constant [26 x i8] c"opened by process %d: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @usbdev_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbdev_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.usb_device*, align 8
  %6 = alloca %struct.dev_state*, align 8
  %7 = alloca %struct.cred*, align 8
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  store %struct.usb_device* null, %struct.usb_device** %5, align 8
  %9 = call %struct.cred* (...) @current_cred()
  store %struct.cred* %9, %struct.cred** %7, align 8
  %10 = call i32 (...) @lock_kernel()
  %11 = call i32 @mutex_lock(i32* @usbfs_mutex)
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.dev_state* @kmalloc(i32 80, i32 %14)
  store %struct.dev_state* %15, %struct.dev_state** %6, align 8
  %16 = load %struct.dev_state*, %struct.dev_state** %6, align 8
  %17 = icmp ne %struct.dev_state* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  br label %111

19:                                               ; preds = %2
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %8, align 4
  %22 = load %struct.inode*, %struct.inode** %3, align 8
  %23 = call i64 @imajor(%struct.inode* %22)
  %24 = load i64, i64* @USB_DEVICE_MAJOR, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %19
  %27 = load %struct.inode*, %struct.inode** %3, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call %struct.usb_device* @usbdev_lookup_by_devt(i32 %29)
  store %struct.usb_device* %30, %struct.usb_device** %5, align 8
  br label %31

31:                                               ; preds = %26, %19
  %32 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %33 = icmp ne %struct.usb_device* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %36 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @USB_STATE_NOTATTACHED, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34, %31
  br label %111

41:                                               ; preds = %34
  %42 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %43 = call i32 @usb_autoresume_device(%struct.usb_device* %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %111

47:                                               ; preds = %41
  store i32 0, i32* %8, align 4
  %48 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %49 = load %struct.dev_state*, %struct.dev_state** %6, align 8
  %50 = getelementptr inbounds %struct.dev_state, %struct.dev_state* %49, i32 0, i32 13
  store %struct.usb_device* %48, %struct.usb_device** %50, align 8
  %51 = load %struct.file*, %struct.file** %4, align 8
  %52 = load %struct.dev_state*, %struct.dev_state** %6, align 8
  %53 = getelementptr inbounds %struct.dev_state, %struct.dev_state* %52, i32 0, i32 12
  store %struct.file* %51, %struct.file** %53, align 8
  %54 = load %struct.dev_state*, %struct.dev_state** %6, align 8
  %55 = getelementptr inbounds %struct.dev_state, %struct.dev_state* %54, i32 0, i32 11
  %56 = call i32 @spin_lock_init(i32* %55)
  %57 = load %struct.dev_state*, %struct.dev_state** %6, align 8
  %58 = getelementptr inbounds %struct.dev_state, %struct.dev_state* %57, i32 0, i32 0
  %59 = call i32 @INIT_LIST_HEAD(i32* %58)
  %60 = load %struct.dev_state*, %struct.dev_state** %6, align 8
  %61 = getelementptr inbounds %struct.dev_state, %struct.dev_state* %60, i32 0, i32 10
  %62 = call i32 @INIT_LIST_HEAD(i32* %61)
  %63 = load %struct.dev_state*, %struct.dev_state** %6, align 8
  %64 = getelementptr inbounds %struct.dev_state, %struct.dev_state* %63, i32 0, i32 9
  %65 = call i32 @INIT_LIST_HEAD(i32* %64)
  %66 = load %struct.dev_state*, %struct.dev_state** %6, align 8
  %67 = getelementptr inbounds %struct.dev_state, %struct.dev_state* %66, i32 0, i32 8
  %68 = call i32 @init_waitqueue_head(i32* %67)
  %69 = load %struct.dev_state*, %struct.dev_state** %6, align 8
  %70 = getelementptr inbounds %struct.dev_state, %struct.dev_state* %69, i32 0, i32 7
  store i64 0, i64* %70, align 8
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current, align 8
  %72 = call i32 @task_pid(%struct.TYPE_7__* %71)
  %73 = call i32 @get_pid(i32 %72)
  %74 = load %struct.dev_state*, %struct.dev_state** %6, align 8
  %75 = getelementptr inbounds %struct.dev_state, %struct.dev_state* %74, i32 0, i32 6
  store i32 %73, i32* %75, align 8
  %76 = load %struct.cred*, %struct.cred** %7, align 8
  %77 = getelementptr inbounds %struct.cred, %struct.cred* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.dev_state*, %struct.dev_state** %6, align 8
  %80 = getelementptr inbounds %struct.dev_state, %struct.dev_state* %79, i32 0, i32 5
  store i32 %78, i32* %80, align 4
  %81 = load %struct.cred*, %struct.cred** %7, align 8
  %82 = getelementptr inbounds %struct.cred, %struct.cred* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.dev_state*, %struct.dev_state** %6, align 8
  %85 = getelementptr inbounds %struct.dev_state, %struct.dev_state* %84, i32 0, i32 4
  store i32 %83, i32* %85, align 8
  %86 = load %struct.dev_state*, %struct.dev_state** %6, align 8
  %87 = getelementptr inbounds %struct.dev_state, %struct.dev_state* %86, i32 0, i32 3
  store i32* null, i32** %87, align 8
  %88 = load %struct.dev_state*, %struct.dev_state** %6, align 8
  %89 = getelementptr inbounds %struct.dev_state, %struct.dev_state* %88, i32 0, i32 2
  store i64 0, i64* %89, align 8
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current, align 8
  %91 = load %struct.dev_state*, %struct.dev_state** %6, align 8
  %92 = getelementptr inbounds %struct.dev_state, %struct.dev_state* %91, i32 0, i32 1
  %93 = call i32 @security_task_getsecid(%struct.TYPE_7__* %90, i32* %92)
  %94 = call i32 (...) @smp_wmb()
  %95 = load %struct.dev_state*, %struct.dev_state** %6, align 8
  %96 = getelementptr inbounds %struct.dev_state, %struct.dev_state* %95, i32 0, i32 0
  %97 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %98 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %97, i32 0, i32 2
  %99 = call i32 @list_add_tail(i32* %96, i32* %98)
  %100 = load %struct.dev_state*, %struct.dev_state** %6, align 8
  %101 = load %struct.file*, %struct.file** %4, align 8
  %102 = getelementptr inbounds %struct.file, %struct.file* %101, i32 0, i32 0
  store %struct.dev_state* %100, %struct.dev_state** %102, align 8
  %103 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %104 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %103, i32 0, i32 1
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current, align 8
  %106 = call i32 @task_pid_nr(%struct.TYPE_7__* %105)
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @snoop(i32* %104, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %106, i32 %109)
  br label %111

111:                                              ; preds = %47, %46, %40, %18
  %112 = load i32, i32* %8, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %111
  %115 = load %struct.dev_state*, %struct.dev_state** %6, align 8
  %116 = call i32 @kfree(%struct.dev_state* %115)
  %117 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %118 = call i32 @usb_put_dev(%struct.usb_device* %117)
  br label %119

119:                                              ; preds = %114, %111
  %120 = call i32 @mutex_unlock(i32* @usbfs_mutex)
  %121 = call i32 (...) @unlock_kernel()
  %122 = load i32, i32* %8, align 4
  ret i32 %122
}

declare dso_local %struct.cred* @current_cred(...) #1

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.dev_state* @kmalloc(i32, i32) #1

declare dso_local i64 @imajor(%struct.inode*) #1

declare dso_local %struct.usb_device* @usbdev_lookup_by_devt(i32) #1

declare dso_local i32 @usb_autoresume_device(%struct.usb_device*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @get_pid(i32) #1

declare dso_local i32 @task_pid(%struct.TYPE_7__*) #1

declare dso_local i32 @security_task_getsecid(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @snoop(i32*, i8*, i32, i32) #1

declare dso_local i32 @task_pid_nr(%struct.TYPE_7__*) #1

declare dso_local i32 @kfree(%struct.dev_state*) #1

declare dso_local i32 @usb_put_dev(%struct.usb_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @unlock_kernel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
