; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/cx25821/extr_cx25821-video0.c_vidioc_streamoff.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/cx25821/extr_cx25821-video0.c_vidioc_streamoff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.cx25821_fh = type { i64, %struct.cx25821_dev* }
%struct.cx25821_dev = type { i32 }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@RESOURCE_VIDEO0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32)* @vidioc_streamoff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_streamoff(%struct.file* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cx25821_fh*, align 8
  %9 = alloca %struct.cx25821_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.cx25821_fh*
  store %struct.cx25821_fh* %13, %struct.cx25821_fh** %8, align 8
  %14 = load %struct.cx25821_fh*, %struct.cx25821_fh** %8, align 8
  %15 = getelementptr inbounds %struct.cx25821_fh, %struct.cx25821_fh* %14, i32 0, i32 1
  %16 = load %struct.cx25821_dev*, %struct.cx25821_dev** %15, align 8
  store %struct.cx25821_dev* %16, %struct.cx25821_dev** %9, align 8
  %17 = load %struct.cx25821_fh*, %struct.cx25821_fh** %8, align 8
  %18 = getelementptr inbounds %struct.cx25821_fh, %struct.cx25821_fh* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %51

25:                                               ; preds = %3
  %26 = load i32, i32* %7, align 4
  %27 = zext i32 %26 to i64
  %28 = load %struct.cx25821_fh*, %struct.cx25821_fh** %8, align 8
  %29 = getelementptr inbounds %struct.cx25821_fh, %struct.cx25821_fh* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %27, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %51

35:                                               ; preds = %25
  %36 = load %struct.cx25821_fh*, %struct.cx25821_fh** %8, align 8
  %37 = load i32, i32* @RESOURCE_VIDEO0, align 4
  %38 = call i32 @get_resource(%struct.cx25821_fh* %36, i32 %37)
  store i32 %38, i32* %11, align 4
  %39 = load %struct.cx25821_fh*, %struct.cx25821_fh** %8, align 8
  %40 = call i32 @get_queue(%struct.cx25821_fh* %39)
  %41 = call i32 @videobuf_streamoff(i32 %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %35
  %45 = load i32, i32* %10, align 4
  store i32 %45, i32* %4, align 4
  br label %51

46:                                               ; preds = %35
  %47 = load %struct.cx25821_dev*, %struct.cx25821_dev** %9, align 8
  %48 = load %struct.cx25821_fh*, %struct.cx25821_fh** %8, align 8
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @res_free(%struct.cx25821_dev* %47, %struct.cx25821_fh* %48, i32 %49)
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %46, %44, %32, %22
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @get_resource(%struct.cx25821_fh*, i32) #1

declare dso_local i32 @videobuf_streamoff(i32) #1

declare dso_local i32 @get_queue(%struct.cx25821_fh*) #1

declare dso_local i32 @res_free(%struct.cx25821_dev*, %struct.cx25821_fh*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
