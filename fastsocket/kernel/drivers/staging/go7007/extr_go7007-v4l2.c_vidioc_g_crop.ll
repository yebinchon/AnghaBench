; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/go7007/extr_go7007-v4l2.c_vidioc_g_crop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/go7007/extr_go7007-v4l2.c_vidioc_g_crop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_crop = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.go7007 = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.go7007_file = type { %struct.go7007* }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_crop*)* @vidioc_g_crop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_g_crop(%struct.file* %0, i8* %1, %struct.v4l2_crop* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_crop*, align 8
  %8 = alloca %struct.go7007*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_crop* %2, %struct.v4l2_crop** %7, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.go7007_file*
  %11 = getelementptr inbounds %struct.go7007_file, %struct.go7007_file* %10, i32 0, i32 0
  %12 = load %struct.go7007*, %struct.go7007** %11, align 8
  store %struct.go7007* %12, %struct.go7007** %8, align 8
  %13 = load %struct.v4l2_crop*, %struct.v4l2_crop** %7, align 8
  %14 = getelementptr inbounds %struct.v4l2_crop, %struct.v4l2_crop* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %78

21:                                               ; preds = %3
  %22 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %23 = load %struct.v4l2_crop*, %struct.v4l2_crop** %7, align 8
  %24 = getelementptr inbounds %struct.v4l2_crop, %struct.v4l2_crop* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  %25 = load %struct.go7007*, %struct.go7007** %8, align 8
  %26 = getelementptr inbounds %struct.go7007, %struct.go7007* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  switch i32 %27, label %77 [
    i32 130, label %28
    i32 128, label %41
    i32 129, label %54
  ]

28:                                               ; preds = %21
  %29 = load %struct.v4l2_crop*, %struct.v4l2_crop** %7, align 8
  %30 = getelementptr inbounds %struct.v4l2_crop, %struct.v4l2_crop* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 3
  store i32 0, i32* %31, align 4
  %32 = load %struct.v4l2_crop*, %struct.v4l2_crop** %7, align 8
  %33 = getelementptr inbounds %struct.v4l2_crop, %struct.v4l2_crop* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 2
  store i32 0, i32* %34, align 8
  %35 = load %struct.v4l2_crop*, %struct.v4l2_crop** %7, align 8
  %36 = getelementptr inbounds %struct.v4l2_crop, %struct.v4l2_crop* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  store i32 720, i32* %37, align 8
  %38 = load %struct.v4l2_crop*, %struct.v4l2_crop** %7, align 8
  %39 = getelementptr inbounds %struct.v4l2_crop, %struct.v4l2_crop* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  store i32 480, i32* %40, align 4
  br label %77

41:                                               ; preds = %21
  %42 = load %struct.v4l2_crop*, %struct.v4l2_crop** %7, align 8
  %43 = getelementptr inbounds %struct.v4l2_crop, %struct.v4l2_crop* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 3
  store i32 0, i32* %44, align 4
  %45 = load %struct.v4l2_crop*, %struct.v4l2_crop** %7, align 8
  %46 = getelementptr inbounds %struct.v4l2_crop, %struct.v4l2_crop* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 2
  store i32 0, i32* %47, align 8
  %48 = load %struct.v4l2_crop*, %struct.v4l2_crop** %7, align 8
  %49 = getelementptr inbounds %struct.v4l2_crop, %struct.v4l2_crop* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  store i32 720, i32* %50, align 8
  %51 = load %struct.v4l2_crop*, %struct.v4l2_crop** %7, align 8
  %52 = getelementptr inbounds %struct.v4l2_crop, %struct.v4l2_crop* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  store i32 576, i32* %53, align 4
  br label %77

54:                                               ; preds = %21
  %55 = load %struct.v4l2_crop*, %struct.v4l2_crop** %7, align 8
  %56 = getelementptr inbounds %struct.v4l2_crop, %struct.v4l2_crop* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 3
  store i32 0, i32* %57, align 4
  %58 = load %struct.v4l2_crop*, %struct.v4l2_crop** %7, align 8
  %59 = getelementptr inbounds %struct.v4l2_crop, %struct.v4l2_crop* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 2
  store i32 0, i32* %60, align 8
  %61 = load %struct.go7007*, %struct.go7007** %8, align 8
  %62 = getelementptr inbounds %struct.go7007, %struct.go7007* %61, i32 0, i32 1
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.v4l2_crop*, %struct.v4l2_crop** %7, align 8
  %67 = getelementptr inbounds %struct.v4l2_crop, %struct.v4l2_crop* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  store i32 %65, i32* %68, align 8
  %69 = load %struct.go7007*, %struct.go7007** %8, align 8
  %70 = getelementptr inbounds %struct.go7007, %struct.go7007* %69, i32 0, i32 1
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.v4l2_crop*, %struct.v4l2_crop** %7, align 8
  %75 = getelementptr inbounds %struct.v4l2_crop, %struct.v4l2_crop* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  store i32 %73, i32* %76, align 4
  br label %77

77:                                               ; preds = %21, %54, %41, %28
  store i32 0, i32* %4, align 4
  br label %78

78:                                               ; preds = %77, %18
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
