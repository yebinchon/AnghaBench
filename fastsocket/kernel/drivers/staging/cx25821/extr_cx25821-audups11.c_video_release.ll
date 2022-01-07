; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/cx25821/extr_cx25821-audups11.c_video_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/cx25821/extr_cx25821-audups11.c_video_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.cx25821_fh* }
%struct.cx25821_fh = type { i32, %struct.TYPE_4__, %struct.cx25821_dev* }
%struct.TYPE_4__ = type { %struct.cx25821_fh* }
%struct.cx25821_dev = type { i32 }

@RESOURCE_VIDEO11 = common dso_local global i32 0, align 4
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
  %11 = load %struct.cx25821_fh*, %struct.cx25821_fh** %3, align 8
  %12 = load i32, i32* @RESOURCE_VIDEO11, align 4
  %13 = call i64 @res_check(%struct.cx25821_fh* %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %1
  %16 = load %struct.cx25821_fh*, %struct.cx25821_fh** %3, align 8
  %17 = getelementptr inbounds %struct.cx25821_fh, %struct.cx25821_fh* %16, i32 0, i32 1
  %18 = call i32 @videobuf_queue_cancel(%struct.TYPE_4__* %17)
  %19 = load %struct.cx25821_dev*, %struct.cx25821_dev** %4, align 8
  %20 = load %struct.cx25821_fh*, %struct.cx25821_fh** %3, align 8
  %21 = load i32, i32* @RESOURCE_VIDEO11, align 4
  %22 = call i32 @res_free(%struct.cx25821_dev* %19, %struct.cx25821_fh* %20, i32 %21)
  br label %23

23:                                               ; preds = %15, %1
  %24 = load %struct.cx25821_fh*, %struct.cx25821_fh** %3, align 8
  %25 = getelementptr inbounds %struct.cx25821_fh, %struct.cx25821_fh* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.cx25821_fh*, %struct.cx25821_fh** %26, align 8
  %28 = icmp ne %struct.cx25821_fh* %27, null
  br i1 %28, label %29, label %42

29:                                               ; preds = %23
  %30 = load %struct.cx25821_fh*, %struct.cx25821_fh** %3, align 8
  %31 = getelementptr inbounds %struct.cx25821_fh, %struct.cx25821_fh* %30, i32 0, i32 1
  %32 = load %struct.cx25821_fh*, %struct.cx25821_fh** %3, align 8
  %33 = getelementptr inbounds %struct.cx25821_fh, %struct.cx25821_fh* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load %struct.cx25821_fh*, %struct.cx25821_fh** %34, align 8
  %36 = call i32 @buffer_release(%struct.TYPE_4__* %31, %struct.cx25821_fh* %35)
  %37 = load %struct.cx25821_fh*, %struct.cx25821_fh** %3, align 8
  %38 = getelementptr inbounds %struct.cx25821_fh, %struct.cx25821_fh* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load %struct.cx25821_fh*, %struct.cx25821_fh** %39, align 8
  %41 = call i32 @kfree(%struct.cx25821_fh* %40)
  br label %42

42:                                               ; preds = %29, %23
  %43 = load %struct.cx25821_fh*, %struct.cx25821_fh** %3, align 8
  %44 = getelementptr inbounds %struct.cx25821_fh, %struct.cx25821_fh* %43, i32 0, i32 1
  %45 = call i32 @videobuf_mmap_free(%struct.TYPE_4__* %44)
  %46 = load %struct.cx25821_dev*, %struct.cx25821_dev** %4, align 8
  %47 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %46, i32 0, i32 0
  %48 = load %struct.cx25821_fh*, %struct.cx25821_fh** %3, align 8
  %49 = getelementptr inbounds %struct.cx25821_fh, %struct.cx25821_fh* %48, i32 0, i32 0
  %50 = call i32 @v4l2_prio_close(i32* %47, i32* %49)
  %51 = load %struct.file*, %struct.file** %2, align 8
  %52 = getelementptr inbounds %struct.file, %struct.file* %51, i32 0, i32 0
  store %struct.cx25821_fh* null, %struct.cx25821_fh** %52, align 8
  %53 = load %struct.cx25821_fh*, %struct.cx25821_fh** %3, align 8
  %54 = call i32 @kfree(%struct.cx25821_fh* %53)
  ret i32 0
}

declare dso_local i64 @res_check(%struct.cx25821_fh*, i32) #1

declare dso_local i32 @videobuf_queue_cancel(%struct.TYPE_4__*) #1

declare dso_local i32 @res_free(%struct.cx25821_dev*, %struct.cx25821_fh*, i32) #1

declare dso_local i32 @buffer_release(%struct.TYPE_4__*, %struct.cx25821_fh*) #1

declare dso_local i32 @kfree(%struct.cx25821_fh*) #1

declare dso_local i32 @videobuf_mmap_free(%struct.TYPE_4__*) #1

declare dso_local i32 @v4l2_prio_close(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
