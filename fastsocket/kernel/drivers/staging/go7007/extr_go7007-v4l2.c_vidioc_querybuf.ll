; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/go7007/extr_go7007-v4l2.c_vidioc_querybuf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/go7007/extr_go7007-v4l2.c_vidioc_querybuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_buffer = type { i64, i32, i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.go7007_file = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@V4L2_BUF_FLAG_QUEUED = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_DONE = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_MAPPED = common dso_local global i32 0, align 4
@V4L2_MEMORY_MMAP = common dso_local global i32 0, align 4
@GO7007_BUF_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_buffer*)* @vidioc_querybuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_querybuf(%struct.file* %0, i8* %1, %struct.v4l2_buffer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_buffer*, align 8
  %8 = alloca %struct.go7007_file*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_buffer* %2, %struct.v4l2_buffer** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.go7007_file*
  store %struct.go7007_file* %12, %struct.go7007_file** %8, align 8
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %9, align 4
  %15 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %16 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* %9, align 4
  store i32 %21, i32* %4, align 4
  br label %100

22:                                               ; preds = %3
  %23 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %24 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %10, align 4
  %26 = load %struct.go7007_file*, %struct.go7007_file** %8, align 8
  %27 = getelementptr inbounds %struct.go7007_file, %struct.go7007_file* %26, i32 0, i32 1
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load i32, i32* %10, align 4
  %30 = load %struct.go7007_file*, %struct.go7007_file** %8, align 8
  %31 = getelementptr inbounds %struct.go7007_file, %struct.go7007_file* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp uge i32 %29, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %22
  br label %95

35:                                               ; preds = %22
  %36 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %37 = call i32 @memset(%struct.v4l2_buffer* %36, i32 0, i32 32)
  %38 = load i32, i32* %10, align 4
  %39 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %40 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 8
  %41 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %42 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %43 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  %44 = load %struct.go7007_file*, %struct.go7007_file** %8, align 8
  %45 = getelementptr inbounds %struct.go7007_file, %struct.go7007_file* %44, i32 0, i32 2
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = load i32, i32* %10, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  switch i32 %51, label %60 [
    i32 128, label %52
    i32 129, label %56
  ]

52:                                               ; preds = %35
  %53 = load i32, i32* @V4L2_BUF_FLAG_QUEUED, align 4
  %54 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %55 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %54, i32 0, i32 5
  store i32 %53, i32* %55, align 8
  br label %63

56:                                               ; preds = %35
  %57 = load i32, i32* @V4L2_BUF_FLAG_DONE, align 4
  %58 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %59 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %58, i32 0, i32 5
  store i32 %57, i32* %59, align 8
  br label %63

60:                                               ; preds = %35
  %61 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %62 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %61, i32 0, i32 5
  store i32 0, i32* %62, align 8
  br label %63

63:                                               ; preds = %60, %56, %52
  %64 = load %struct.go7007_file*, %struct.go7007_file** %8, align 8
  %65 = getelementptr inbounds %struct.go7007_file, %struct.go7007_file* %64, i32 0, i32 2
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = load i32, i32* %10, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %63
  %74 = load i32, i32* @V4L2_BUF_FLAG_MAPPED, align 4
  %75 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %76 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 8
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 8
  br label %79

79:                                               ; preds = %73, %63
  %80 = load i32, i32* @V4L2_MEMORY_MMAP, align 4
  %81 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %82 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %81, i32 0, i32 4
  store i32 %80, i32* %82, align 4
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* @GO7007_BUF_SIZE, align 4
  %85 = mul i32 %83, %84
  %86 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %87 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  store i32 %85, i32* %88, align 8
  %89 = load i32, i32* @GO7007_BUF_SIZE, align 4
  %90 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %91 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %90, i32 0, i32 2
  store i32 %89, i32* %91, align 4
  %92 = load %struct.go7007_file*, %struct.go7007_file** %8, align 8
  %93 = getelementptr inbounds %struct.go7007_file, %struct.go7007_file* %92, i32 0, i32 1
  %94 = call i32 @mutex_unlock(i32* %93)
  store i32 0, i32* %4, align 4
  br label %100

95:                                               ; preds = %34
  %96 = load %struct.go7007_file*, %struct.go7007_file** %8, align 8
  %97 = getelementptr inbounds %struct.go7007_file, %struct.go7007_file* %96, i32 0, i32 1
  %98 = call i32 @mutex_unlock(i32* %97)
  %99 = load i32, i32* %9, align 4
  store i32 %99, i32* %4, align 4
  br label %100

100:                                              ; preds = %95, %79, %20
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @memset(%struct.v4l2_buffer*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
