; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/go7007/extr_go7007-v4l2.c_vidioc_g_fmt_vid_cap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/go7007/extr_go7007-v4l2.c_vidioc_g_fmt_vid_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i64, i32, i32, i32, i32 }
%struct.go7007 = type { i64, i32, i32 }
%struct.go7007_file = type { %struct.go7007* }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@GO7007_FORMAT_MJPEG = common dso_local global i64 0, align 8
@V4L2_PIX_FMT_MJPEG = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_MPEG = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@GO7007_BUF_SIZE = common dso_local global i32 0, align 4
@V4L2_COLORSPACE_SMPTE170M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @vidioc_g_fmt_vid_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_g_fmt_vid_cap(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_format*, align 8
  %7 = alloca %struct.go7007*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %6, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.go7007_file*
  %10 = getelementptr inbounds %struct.go7007_file, %struct.go7007_file* %9, i32 0, i32 0
  %11 = load %struct.go7007*, %struct.go7007** %10, align 8
  store %struct.go7007* %11, %struct.go7007** %7, align 8
  %12 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %13 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %14 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 8
  %15 = load %struct.go7007*, %struct.go7007** %7, align 8
  %16 = getelementptr inbounds %struct.go7007, %struct.go7007* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %19 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 6
  store i32 %17, i32* %21, align 4
  %22 = load %struct.go7007*, %struct.go7007** %7, align 8
  %23 = getelementptr inbounds %struct.go7007, %struct.go7007* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %26 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 5
  store i32 %24, i32* %28, align 8
  %29 = load %struct.go7007*, %struct.go7007** %7, align 8
  %30 = getelementptr inbounds %struct.go7007, %struct.go7007* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @GO7007_FORMAT_MJPEG, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %3
  %35 = load i32, i32* @V4L2_PIX_FMT_MJPEG, align 4
  br label %38

36:                                               ; preds = %3
  %37 = load i32, i32* @V4L2_PIX_FMT_MPEG, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %35, %34 ], [ %37, %36 ]
  %40 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %41 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 4
  store i32 %39, i32* %43, align 4
  %44 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %45 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %46 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 3
  store i32 %44, i32* %48, align 8
  %49 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %50 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 2
  store i64 0, i64* %52, align 8
  %53 = load i32, i32* @GO7007_BUF_SIZE, align 4
  %54 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %55 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  store i32 %53, i32* %57, align 4
  %58 = load i32, i32* @V4L2_COLORSPACE_SMPTE170M, align 4
  %59 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %60 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  store i32 %58, i32* %62, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
