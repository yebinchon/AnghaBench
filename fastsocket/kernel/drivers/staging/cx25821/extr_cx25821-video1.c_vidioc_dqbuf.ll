; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/cx25821/extr_cx25821-video1.c_vidioc_dqbuf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/cx25821/extr_cx25821-video1.c_vidioc_dqbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_buffer = type { i32 }
%struct.cx25821_fh = type { %struct.cx25821_dev* }
%struct.cx25821_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@O_NONBLOCK = common dso_local global i32 0, align 4
@SRAM_CH01 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_buffer*)* @vidioc_dqbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_dqbuf(%struct.file* %0, i8* %1, %struct.v4l2_buffer* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_buffer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cx25821_fh*, align 8
  %9 = alloca %struct.cx25821_dev*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_buffer* %2, %struct.v4l2_buffer** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.cx25821_fh*
  store %struct.cx25821_fh* %11, %struct.cx25821_fh** %8, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.cx25821_fh*
  %14 = getelementptr inbounds %struct.cx25821_fh, %struct.cx25821_fh* %13, i32 0, i32 0
  %15 = load %struct.cx25821_dev*, %struct.cx25821_dev** %14, align 8
  store %struct.cx25821_dev* %15, %struct.cx25821_dev** %9, align 8
  %16 = load %struct.cx25821_fh*, %struct.cx25821_fh** %8, align 8
  %17 = call i32 @get_queue(%struct.cx25821_fh* %16)
  %18 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %19 = load %struct.file*, %struct.file** %4, align 8
  %20 = getelementptr inbounds %struct.file, %struct.file* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @O_NONBLOCK, align 4
  %23 = and i32 %21, %22
  %24 = call i32 @videobuf_dqbuf(i32 %17, %struct.v4l2_buffer* %18, i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load %struct.cx25821_dev*, %struct.cx25821_dev** %9, align 8
  %26 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i64, i64* @SRAM_CH01, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %33 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %7, align 4
  ret i32 %34
}

declare dso_local i32 @videobuf_dqbuf(i32, %struct.v4l2_buffer*, i32) #1

declare dso_local i32 @get_queue(%struct.cx25821_fh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
