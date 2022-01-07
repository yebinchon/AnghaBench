; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_camera.c_msm_release_control.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_camera.c_msm_release_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.TYPE_6__, %struct.msm_control_device* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.msm_control_device = type { i32, %struct.msm_device* }
%struct.msm_device = type { i32* }

@.str = private unnamed_addr constant [24 x i8] c"msm_camera: RELEASE %s\0A\00", align 1
@ctrl_status_q = common dso_local global i32 0, align 4
@pict_frame_q = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @msm_release_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msm_release_control(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.msm_control_device*, align 8
  %7 = alloca %struct.msm_device*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %8 = load %struct.file*, %struct.file** %4, align 8
  %9 = getelementptr inbounds %struct.file, %struct.file* %8, i32 0, i32 1
  %10 = load %struct.msm_control_device*, %struct.msm_control_device** %9, align 8
  store %struct.msm_control_device* %10, %struct.msm_control_device** %6, align 8
  %11 = load %struct.msm_control_device*, %struct.msm_control_device** %6, align 8
  %12 = getelementptr inbounds %struct.msm_control_device, %struct.msm_control_device* %11, i32 0, i32 1
  %13 = load %struct.msm_device*, %struct.msm_device** %12, align 8
  store %struct.msm_device* %13, %struct.msm_device** %7, align 8
  %14 = load %struct.file*, %struct.file** %4, align 8
  %15 = getelementptr inbounds %struct.file, %struct.file* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.msm_device*, %struct.msm_device** %7, align 8
  %23 = getelementptr inbounds %struct.msm_device, %struct.msm_device* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @__msm_release(i32* %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %2
  %29 = load %struct.msm_control_device*, %struct.msm_control_device** %6, align 8
  %30 = getelementptr inbounds %struct.msm_control_device, %struct.msm_control_device* %29, i32 0, i32 0
  %31 = load i32, i32* @ctrl_status_q, align 4
  %32 = call i32 @MSM_DRAIN_QUEUE(i32* %30, i32 %31)
  %33 = load %struct.msm_device*, %struct.msm_device** %7, align 8
  %34 = getelementptr inbounds %struct.msm_device, %struct.msm_device* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* @pict_frame_q, align 4
  %37 = call i32 @MSM_DRAIN_QUEUE(i32* %35, i32 %36)
  br label %38

38:                                               ; preds = %28, %2
  %39 = load %struct.msm_control_device*, %struct.msm_control_device** %6, align 8
  %40 = call i32 @kfree(%struct.msm_control_device* %39)
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @__msm_release(i32*) #1

declare dso_local i32 @MSM_DRAIN_QUEUE(i32*, i32) #1

declare dso_local i32 @kfree(%struct.msm_control_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
