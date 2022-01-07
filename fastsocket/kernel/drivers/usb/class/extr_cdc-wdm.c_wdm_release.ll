; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/class/extr_cdc-wdm.c_wdm_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/class/extr_cdc-wdm.c_wdm_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.wdm_device* }
%struct.wdm_device = type { %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i64, i32 }

@wdm_mutex = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"wdm_release: cleanup\00", align 1
@WDM_DISCONNECTING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @wdm_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wdm_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.wdm_device*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %6 = load %struct.file*, %struct.file** %4, align 8
  %7 = getelementptr inbounds %struct.file, %struct.file* %6, i32 0, i32 0
  %8 = load %struct.wdm_device*, %struct.wdm_device** %7, align 8
  store %struct.wdm_device* %8, %struct.wdm_device** %5, align 8
  %9 = call i32 @mutex_lock(i32* @wdm_mutex)
  %10 = load %struct.wdm_device*, %struct.wdm_device** %5, align 8
  %11 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %10, i32 0, i32 3
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.wdm_device*, %struct.wdm_device** %5, align 8
  %14 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %15, -1
  store i32 %16, i32* %14, align 4
  %17 = load %struct.wdm_device*, %struct.wdm_device** %5, align 8
  %18 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %17, i32 0, i32 3
  %19 = call i32 @mutex_unlock(i32* %18)
  %20 = load %struct.wdm_device*, %struct.wdm_device** %5, align 8
  %21 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %43, label %24

24:                                               ; preds = %2
  %25 = load %struct.wdm_device*, %struct.wdm_device** %5, align 8
  %26 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = call i32 @dev_dbg(i32* %28, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.wdm_device*, %struct.wdm_device** %5, align 8
  %31 = call i32 @kill_urbs(%struct.wdm_device* %30)
  %32 = load i32, i32* @WDM_DISCONNECTING, align 4
  %33 = load %struct.wdm_device*, %struct.wdm_device** %5, align 8
  %34 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %33, i32 0, i32 1
  %35 = call i32 @test_bit(i32 %32, i32* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %24
  %38 = load %struct.wdm_device*, %struct.wdm_device** %5, align 8
  %39 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i64 0, i64* %41, align 8
  br label %42

42:                                               ; preds = %37, %24
  br label %43

43:                                               ; preds = %42, %2
  %44 = call i32 @mutex_unlock(i32* @wdm_mutex)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @kill_urbs(%struct.wdm_device*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
