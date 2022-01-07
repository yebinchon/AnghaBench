; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_camera.c_msm_open_control.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_camera.c_msm_open_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.msm_control_device* }
%struct.msm_control_device = type { %struct.TYPE_2__, %struct.msm_control_device* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"msm_open() open: rc = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @msm_open_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msm_open_control(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.msm_control_device*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.msm_control_device* @kmalloc(i32 24, i32 %8)
  store %struct.msm_control_device* %9, %struct.msm_control_device** %7, align 8
  %10 = load %struct.msm_control_device*, %struct.msm_control_device** %7, align 8
  %11 = icmp ne %struct.msm_control_device* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %47

15:                                               ; preds = %2
  %16 = load %struct.inode*, %struct.inode** %4, align 8
  %17 = load %struct.file*, %struct.file** %5, align 8
  %18 = call i32 @msm_open_common(%struct.inode* %16, %struct.file* %17, i32 0)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %3, align 4
  br label %47

23:                                               ; preds = %15
  %24 = load %struct.file*, %struct.file** %5, align 8
  %25 = getelementptr inbounds %struct.file, %struct.file* %24, i32 0, i32 0
  %26 = load %struct.msm_control_device*, %struct.msm_control_device** %25, align 8
  %27 = load %struct.msm_control_device*, %struct.msm_control_device** %7, align 8
  %28 = getelementptr inbounds %struct.msm_control_device, %struct.msm_control_device* %27, i32 0, i32 1
  store %struct.msm_control_device* %26, %struct.msm_control_device** %28, align 8
  %29 = load %struct.msm_control_device*, %struct.msm_control_device** %7, align 8
  %30 = load %struct.file*, %struct.file** %5, align 8
  %31 = getelementptr inbounds %struct.file, %struct.file* %30, i32 0, i32 0
  store %struct.msm_control_device* %29, %struct.msm_control_device** %31, align 8
  %32 = load %struct.msm_control_device*, %struct.msm_control_device** %7, align 8
  %33 = getelementptr inbounds %struct.msm_control_device, %struct.msm_control_device* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  %35 = call i32 @spin_lock_init(i32* %34)
  %36 = load %struct.msm_control_device*, %struct.msm_control_device** %7, align 8
  %37 = getelementptr inbounds %struct.msm_control_device, %struct.msm_control_device* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = call i32 @INIT_LIST_HEAD(i32* %38)
  %40 = load %struct.msm_control_device*, %struct.msm_control_device** %7, align 8
  %41 = getelementptr inbounds %struct.msm_control_device, %struct.msm_control_device* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = call i32 @init_waitqueue_head(i32* %42)
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @CDBG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %23, %21, %12
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local %struct.msm_control_device* @kmalloc(i32, i32) #1

declare dso_local i32 @msm_open_common(%struct.inode*, %struct.file*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @CDBG(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
