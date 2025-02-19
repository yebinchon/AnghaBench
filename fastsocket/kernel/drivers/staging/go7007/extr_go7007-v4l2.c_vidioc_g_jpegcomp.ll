; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/go7007/extr_go7007-v4l2.c_vidioc_g_jpegcomp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/go7007/extr_go7007-v4l2.c_vidioc_g_jpegcomp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_jpegcompression = type { i32, i32 }

@V4L2_JPEG_MARKER_DHT = common dso_local global i32 0, align 4
@V4L2_JPEG_MARKER_DQT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_jpegcompression*)* @vidioc_g_jpegcomp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_g_jpegcomp(%struct.file* %0, i8* %1, %struct.v4l2_jpegcompression* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_jpegcompression*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_jpegcompression* %2, %struct.v4l2_jpegcompression** %6, align 8
  %7 = load %struct.v4l2_jpegcompression*, %struct.v4l2_jpegcompression** %6, align 8
  %8 = call i32 @memset(%struct.v4l2_jpegcompression* %7, i32 0, i32 8)
  %9 = load %struct.v4l2_jpegcompression*, %struct.v4l2_jpegcompression** %6, align 8
  %10 = getelementptr inbounds %struct.v4l2_jpegcompression, %struct.v4l2_jpegcompression* %9, i32 0, i32 0
  store i32 50, i32* %10, align 4
  %11 = load i32, i32* @V4L2_JPEG_MARKER_DHT, align 4
  %12 = load i32, i32* @V4L2_JPEG_MARKER_DQT, align 4
  %13 = or i32 %11, %12
  %14 = load %struct.v4l2_jpegcompression*, %struct.v4l2_jpegcompression** %6, align 8
  %15 = getelementptr inbounds %struct.v4l2_jpegcompression, %struct.v4l2_jpegcompression* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  ret i32 0
}

declare dso_local i32 @memset(%struct.v4l2_jpegcompression*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
