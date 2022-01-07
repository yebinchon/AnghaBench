; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/cx25821/extr_cx25821-video5.c_video_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/cx25821/extr_cx25821-video5.c_video_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.file = type { %struct.cx25821_fh* }
%struct.cx25821_fh = type { i32, %struct.TYPE_5__, %struct.cx25821_dev* }
%struct.TYPE_5__ = type { %struct.cx25821_fh* }
%struct.cx25821_dev = type { i32 }

@channel5 = common dso_local global %struct.TYPE_6__* null, align 8
@RESOURCE_VIDEO5 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @video_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @video_release(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.cx25821_fh*, align 8
  %4 = alloca %struct.cx25821_dev*, align 8
  store %struct.file* %0, %struct.file** %2, align 8
  %5 = load %struct.file*, %struct.file** %2, align 8
  %6 = getelementptr inbounds %struct.file, %struct.file* %5, i32 0, i32 0
  %7 = load %struct.cx25821_fh*, %struct.cx25821_fh** %6, align 8
  store %struct.cx25821_fh* %7, %struct.cx25821_fh** %3, align 8
  %8 = load %struct.cx25821_fh*, %struct.cx25821_fh** %3, align 8
  %9 = getelementptr inbounds %struct.cx25821_fh, %struct.cx25821_fh* %8, i32 0, i32 2
  %10 = load %struct.cx25821_dev*, %struct.cx25821_dev** %9, align 8
  store %struct.cx25821_dev* %10, %struct.cx25821_dev** %4, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** @channel5, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @cx_write(i32 %13, i32 0)
  %15 = load %struct.cx25821_fh*, %struct.cx25821_fh** %3, align 8
  %16 = load i32, i32* @RESOURCE_VIDEO5, align 4
  %17 = call i64 @res_check(%struct.cx25821_fh* %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %1
  %20 = load %struct.cx25821_fh*, %struct.cx25821_fh** %3, align 8
  %21 = getelementptr inbounds %struct.cx25821_fh, %struct.cx25821_fh* %20, i32 0, i32 1
  %22 = call i32 @videobuf_queue_cancel(%struct.TYPE_5__* %21)
  %23 = load %struct.cx25821_dev*, %struct.cx25821_dev** %4, align 8
  %24 = load %struct.cx25821_fh*, %struct.cx25821_fh** %3, align 8
  %25 = load i32, i32* @RESOURCE_VIDEO5, align 4
  %26 = call i32 @res_free(%struct.cx25821_dev* %23, %struct.cx25821_fh* %24, i32 %25)
  br label %27

27:                                               ; preds = %19, %1
  %28 = load %struct.cx25821_fh*, %struct.cx25821_fh** %3, align 8
  %29 = getelementptr inbounds %struct.cx25821_fh, %struct.cx25821_fh* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load %struct.cx25821_fh*, %struct.cx25821_fh** %30, align 8
  %32 = icmp ne %struct.cx25821_fh* %31, null
  br i1 %32, label %33, label %46

33:                                               ; preds = %27
  %34 = load %struct.cx25821_fh*, %struct.cx25821_fh** %3, align 8
  %35 = getelementptr inbounds %struct.cx25821_fh, %struct.cx25821_fh* %34, i32 0, i32 1
  %36 = load %struct.cx25821_fh*, %struct.cx25821_fh** %3, align 8
  %37 = getelementptr inbounds %struct.cx25821_fh, %struct.cx25821_fh* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load %struct.cx25821_fh*, %struct.cx25821_fh** %38, align 8
  %40 = call i32 @buffer_release(%struct.TYPE_5__* %35, %struct.cx25821_fh* %39)
  %41 = load %struct.cx25821_fh*, %struct.cx25821_fh** %3, align 8
  %42 = getelementptr inbounds %struct.cx25821_fh, %struct.cx25821_fh* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load %struct.cx25821_fh*, %struct.cx25821_fh** %43, align 8
  %45 = call i32 @kfree(%struct.cx25821_fh* %44)
  br label %46

46:                                               ; preds = %33, %27
  %47 = load %struct.cx25821_fh*, %struct.cx25821_fh** %3, align 8
  %48 = getelementptr inbounds %struct.cx25821_fh, %struct.cx25821_fh* %47, i32 0, i32 1
  %49 = call i32 @videobuf_mmap_free(%struct.TYPE_5__* %48)
  %50 = load %struct.cx25821_dev*, %struct.cx25821_dev** %4, align 8
  %51 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %50, i32 0, i32 0
  %52 = load %struct.cx25821_fh*, %struct.cx25821_fh** %3, align 8
  %53 = getelementptr inbounds %struct.cx25821_fh, %struct.cx25821_fh* %52, i32 0, i32 0
  %54 = call i32 @v4l2_prio_close(i32* %51, i32* %53)
  %55 = load %struct.file*, %struct.file** %2, align 8
  %56 = getelementptr inbounds %struct.file, %struct.file* %55, i32 0, i32 0
  store %struct.cx25821_fh* null, %struct.cx25821_fh** %56, align 8
  %57 = load %struct.cx25821_fh*, %struct.cx25821_fh** %3, align 8
  %58 = call i32 @kfree(%struct.cx25821_fh* %57)
  ret i32 0
}

declare dso_local i32 @cx_write(i32, i32) #1

declare dso_local i64 @res_check(%struct.cx25821_fh*, i32) #1

declare dso_local i32 @videobuf_queue_cancel(%struct.TYPE_5__*) #1

declare dso_local i32 @res_free(%struct.cx25821_dev*, %struct.cx25821_fh*, i32) #1

declare dso_local i32 @buffer_release(%struct.TYPE_5__*, %struct.cx25821_fh*) #1

declare dso_local i32 @kfree(%struct.cx25821_fh*) #1

declare dso_local i32 @videobuf_mmap_free(%struct.TYPE_5__*) #1

declare dso_local i32 @v4l2_prio_close(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
