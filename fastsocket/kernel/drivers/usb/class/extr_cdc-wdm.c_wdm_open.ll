; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/class/extr_cdc-wdm.c_wdm_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/class/extr_cdc-wdm.c_wdm_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.wdm_device* }
%struct.wdm_device = type { %struct.TYPE_3__*, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.usb_interface = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@wdm_mutex = common dso_local global i32 0, align 4
@wdm_driver = common dso_local global i32 0, align 4
@WDM_DISCONNECTING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Error autopm - %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Error submitting int urb - %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @wdm_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wdm_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_interface*, align 8
  %8 = alloca %struct.wdm_device*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %9 = load %struct.inode*, %struct.inode** %3, align 8
  %10 = call i32 @iminor(%struct.inode* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* @ENODEV, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %6, align 4
  %13 = call i32 @mutex_lock(i32* @wdm_mutex)
  %14 = load i32, i32* %5, align 4
  %15 = call %struct.usb_interface* @usb_find_interface(i32* @wdm_driver, i32 %14)
  store %struct.usb_interface* %15, %struct.usb_interface** %7, align 8
  %16 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %17 = icmp ne %struct.usb_interface* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  br label %85

19:                                               ; preds = %2
  %20 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %21 = call %struct.wdm_device* @usb_get_intfdata(%struct.usb_interface* %20)
  store %struct.wdm_device* %21, %struct.wdm_device** %8, align 8
  %22 = load i32, i32* @WDM_DISCONNECTING, align 4
  %23 = load %struct.wdm_device*, %struct.wdm_device** %8, align 8
  %24 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %23, i32 0, i32 4
  %25 = call i64 @test_bit(i32 %22, i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  br label %85

28:                                               ; preds = %19
  %29 = load %struct.wdm_device*, %struct.wdm_device** %8, align 8
  %30 = load %struct.file*, %struct.file** %4, align 8
  %31 = getelementptr inbounds %struct.file, %struct.file* %30, i32 0, i32 0
  store %struct.wdm_device* %29, %struct.wdm_device** %31, align 8
  %32 = load %struct.wdm_device*, %struct.wdm_device** %8, align 8
  %33 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = call i32 @usb_autopm_get_interface(%struct.TYPE_3__* %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %28
  %39 = load %struct.wdm_device*, %struct.wdm_device** %8, align 8
  %40 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @dev_err(i32* %42, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %43)
  br label %85

45:                                               ; preds = %28
  %46 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %47 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %46, i32 0, i32 0
  store i32 1, i32* %47, align 4
  %48 = load %struct.wdm_device*, %struct.wdm_device** %8, align 8
  %49 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %48, i32 0, i32 1
  %50 = call i32 @mutex_lock(i32* %49)
  %51 = load %struct.wdm_device*, %struct.wdm_device** %8, align 8
  %52 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 4
  %55 = icmp ne i32 %53, 0
  br i1 %55, label %76, label %56

56:                                               ; preds = %45
  %57 = load %struct.wdm_device*, %struct.wdm_device** %8, align 8
  %58 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @GFP_KERNEL, align 4
  %61 = call i32 @usb_submit_urb(i32 %59, i32 %60)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %56
  %65 = load %struct.wdm_device*, %struct.wdm_device** %8, align 8
  %66 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, -1
  store i32 %68, i32* %66, align 4
  %69 = load %struct.wdm_device*, %struct.wdm_device** %8, align 8
  %70 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %69, i32 0, i32 0
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @dev_err(i32* %72, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %73)
  br label %75

75:                                               ; preds = %64, %56
  br label %77

76:                                               ; preds = %45
  store i32 0, i32* %6, align 4
  br label %77

77:                                               ; preds = %76, %75
  %78 = load %struct.wdm_device*, %struct.wdm_device** %8, align 8
  %79 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %78, i32 0, i32 1
  %80 = call i32 @mutex_unlock(i32* %79)
  %81 = load %struct.wdm_device*, %struct.wdm_device** %8, align 8
  %82 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %81, i32 0, i32 0
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %82, align 8
  %84 = call i32 @usb_autopm_put_interface(%struct.TYPE_3__* %83)
  br label %85

85:                                               ; preds = %77, %38, %27, %18
  %86 = call i32 @mutex_unlock(i32* @wdm_mutex)
  %87 = load i32, i32* %6, align 4
  ret i32 %87
}

declare dso_local i32 @iminor(%struct.inode*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.usb_interface* @usb_find_interface(i32*, i32) #1

declare dso_local %struct.wdm_device* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @usb_autopm_get_interface(%struct.TYPE_3__*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @usb_submit_urb(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @usb_autopm_put_interface(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
