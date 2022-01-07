; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/cx25821/extr_cx25821-video0.c_vidioc_streamon.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/cx25821/extr_cx25821-video0.c_vidioc_streamon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.cx25821_fh = type { i64, %struct.cx25821_dev* }
%struct.cx25821_dev = type { i32 }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@RESOURCE_VIDEO0 = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32)* @vidioc_streamon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_streamon(%struct.file* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cx25821_fh*, align 8
  %9 = alloca %struct.cx25821_dev*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.cx25821_fh*
  store %struct.cx25821_fh* %11, %struct.cx25821_fh** %8, align 8
  %12 = load %struct.cx25821_fh*, %struct.cx25821_fh** %8, align 8
  %13 = getelementptr inbounds %struct.cx25821_fh, %struct.cx25821_fh* %12, i32 0, i32 1
  %14 = load %struct.cx25821_dev*, %struct.cx25821_dev** %13, align 8
  store %struct.cx25821_dev* %14, %struct.cx25821_dev** %9, align 8
  %15 = load %struct.cx25821_fh*, %struct.cx25821_fh** %8, align 8
  %16 = getelementptr inbounds %struct.cx25821_fh, %struct.cx25821_fh* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %19 = icmp ne i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %58

26:                                               ; preds = %3
  %27 = load i32, i32* %7, align 4
  %28 = zext i32 %27 to i64
  %29 = load %struct.cx25821_fh*, %struct.cx25821_fh** %8, align 8
  %30 = getelementptr inbounds %struct.cx25821_fh, %struct.cx25821_fh* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %28, %31
  %33 = zext i1 %32 to i32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %26
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %58

39:                                               ; preds = %26
  %40 = load %struct.cx25821_dev*, %struct.cx25821_dev** %9, align 8
  %41 = load %struct.cx25821_fh*, %struct.cx25821_fh** %8, align 8
  %42 = load %struct.cx25821_fh*, %struct.cx25821_fh** %8, align 8
  %43 = load i32, i32* @RESOURCE_VIDEO0, align 4
  %44 = call i32 @get_resource(%struct.cx25821_fh* %42, i32 %43)
  %45 = call i32 @res_get(%struct.cx25821_dev* %40, %struct.cx25821_fh* %41, i32 %44)
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = call i64 @unlikely(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %39
  %52 = load i32, i32* @EBUSY, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %58

54:                                               ; preds = %39
  %55 = load %struct.cx25821_fh*, %struct.cx25821_fh** %8, align 8
  %56 = call i32 @get_queue(%struct.cx25821_fh* %55)
  %57 = call i32 @videobuf_streamon(i32 %56)
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %54, %51, %36, %23
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @res_get(%struct.cx25821_dev*, %struct.cx25821_fh*, i32) #1

declare dso_local i32 @get_resource(%struct.cx25821_fh*, i32) #1

declare dso_local i32 @videobuf_streamon(i32) #1

declare dso_local i32 @get_queue(%struct.cx25821_fh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
