; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/go7007/extr_go7007-v4l2.c_vidioc_g_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/go7007/extr_go7007-v4l2.c_vidioc_g_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_control = type { i64*, i32 }
%struct.go7007 = type { i32, i32 }
%struct.v4l2_queryctrl = type { i64*, i32 }
%struct.go7007_file = type { %struct.go7007* }

@EIO = common dso_local global i32 0, align 4
@VIDIOC_QUERYCTRL = common dso_local global i32 0, align 4
@VIDIOC_G_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_control*)* @vidioc_g_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_g_ctrl(%struct.file* %0, i8* %1, %struct.v4l2_control* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_control*, align 8
  %8 = alloca %struct.go7007*, align 8
  %9 = alloca %struct.v4l2_queryctrl, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_control* %2, %struct.v4l2_control** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.go7007_file*
  %12 = getelementptr inbounds %struct.go7007_file, %struct.go7007_file* %11, i32 0, i32 0
  %13 = load %struct.go7007*, %struct.go7007** %12, align 8
  store %struct.go7007* %13, %struct.go7007** %8, align 8
  %14 = load %struct.go7007*, %struct.go7007** %8, align 8
  %15 = getelementptr inbounds %struct.go7007, %struct.go7007* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @EIO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %48

21:                                               ; preds = %3
  %22 = call i32 @memset(%struct.v4l2_queryctrl* %9, i32 0, i32 16)
  %23 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %24 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %9, i32 0, i32 1
  store i32 %25, i32* %26, align 8
  %27 = load %struct.go7007*, %struct.go7007** %8, align 8
  %28 = getelementptr inbounds %struct.go7007, %struct.go7007* %27, i32 0, i32 0
  %29 = load i32, i32* @VIDIOC_QUERYCTRL, align 4
  %30 = call i32 @i2c_clients_command(i32* %28, i32 %29, %struct.v4l2_queryctrl* %9)
  %31 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %9, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %21
  %37 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %38 = bitcast %struct.v4l2_control* %37 to %struct.v4l2_queryctrl*
  %39 = load %struct.go7007*, %struct.go7007** %8, align 8
  %40 = call i32 @mpeg_g_ctrl(%struct.v4l2_queryctrl* %38, %struct.go7007* %39)
  store i32 %40, i32* %4, align 4
  br label %48

41:                                               ; preds = %21
  %42 = load %struct.go7007*, %struct.go7007** %8, align 8
  %43 = getelementptr inbounds %struct.go7007, %struct.go7007* %42, i32 0, i32 0
  %44 = load i32, i32* @VIDIOC_G_CTRL, align 4
  %45 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %46 = bitcast %struct.v4l2_control* %45 to %struct.v4l2_queryctrl*
  %47 = call i32 @i2c_clients_command(i32* %43, i32 %44, %struct.v4l2_queryctrl* %46)
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %41, %36, %18
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @memset(%struct.v4l2_queryctrl*, i32, i32) #1

declare dso_local i32 @i2c_clients_command(i32*, i32, %struct.v4l2_queryctrl*) #1

declare dso_local i32 @mpeg_g_ctrl(%struct.v4l2_queryctrl*, %struct.go7007*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
