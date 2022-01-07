; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/cx25821/extr_cx25821-video.c_vidioc_g_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/cx25821/extr_cx25821-video.c_vidioc_g_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_control = type { i32, i32 }
%struct.cx25821_dev = type { i32, i32, i32, i32 }
%struct.v4l2_queryctrl = type { i32 }
%struct.cx25821_fh = type { %struct.cx25821_dev* }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vidioc_g_ctrl(%struct.file* %0, i8* %1, %struct.v4l2_control* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_control*, align 8
  %8 = alloca %struct.cx25821_dev*, align 8
  %9 = alloca %struct.v4l2_queryctrl*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_control* %2, %struct.v4l2_control** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.cx25821_fh*
  %12 = getelementptr inbounds %struct.cx25821_fh, %struct.cx25821_fh* %11, i32 0, i32 0
  %13 = load %struct.cx25821_dev*, %struct.cx25821_dev** %12, align 8
  store %struct.cx25821_dev* %13, %struct.cx25821_dev** %8, align 8
  %14 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %15 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.v4l2_queryctrl* @ctrl_by_id(i32 %16)
  store %struct.v4l2_queryctrl* %17, %struct.v4l2_queryctrl** %9, align 8
  %18 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %9, align 8
  %19 = icmp eq %struct.v4l2_queryctrl* null, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %52

23:                                               ; preds = %3
  %24 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %25 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %51 [
    i32 131, label %27
    i32 129, label %33
    i32 130, label %39
    i32 128, label %45
  ]

27:                                               ; preds = %23
  %28 = load %struct.cx25821_dev*, %struct.cx25821_dev** %8, align 8
  %29 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %32 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  br label %51

33:                                               ; preds = %23
  %34 = load %struct.cx25821_dev*, %struct.cx25821_dev** %8, align 8
  %35 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %38 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  br label %51

39:                                               ; preds = %23
  %40 = load %struct.cx25821_dev*, %struct.cx25821_dev** %8, align 8
  %41 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %44 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  br label %51

45:                                               ; preds = %23
  %46 = load %struct.cx25821_dev*, %struct.cx25821_dev** %8, align 8
  %47 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %50 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  br label %51

51:                                               ; preds = %23, %45, %39, %33, %27
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %51, %20
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local %struct.v4l2_queryctrl* @ctrl_by_id(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
