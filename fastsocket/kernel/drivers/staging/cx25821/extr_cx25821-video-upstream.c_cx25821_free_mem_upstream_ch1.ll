; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/cx25821/extr_cx25821-video-upstream.c_cx25821_free_mem_upstream_ch1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/cx25821/extr_cx25821-video-upstream.c_cx25821_free_mem_upstream_ch1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx25821_dev = type { i32*, i32, i32, i32, i32*, i32, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cx25821_free_mem_upstream_ch1(%struct.cx25821_dev* %0) #0 {
  %2 = alloca %struct.cx25821_dev*, align 8
  store %struct.cx25821_dev* %0, %struct.cx25821_dev** %2, align 8
  %3 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %4 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %3, i32 0, i32 7
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %9 = call i32 @cx25821_stop_upstream_video_ch1(%struct.cx25821_dev* %8)
  br label %10

10:                                               ; preds = %7, %1
  %11 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %12 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %11, i32 0, i32 4
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %31

15:                                               ; preds = %10
  %16 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %17 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %20 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %23 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %22, i32 0, i32 4
  %24 = load i32*, i32** %23, align 8
  %25 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %26 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @pci_free_consistent(i32 %18, i32 %21, i32* %24, i32 %27)
  %29 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %30 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %29, i32 0, i32 4
  store i32* null, i32** %30, align 8
  br label %31

31:                                               ; preds = %15, %10
  %32 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %33 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %52

36:                                               ; preds = %31
  %37 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %38 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %41 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %44 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %47 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @pci_free_consistent(i32 %39, i32 %42, i32* %45, i32 %48)
  %50 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %51 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %50, i32 0, i32 0
  store i32* null, i32** %51, align 8
  br label %52

52:                                               ; preds = %36, %31
  ret void
}

declare dso_local i32 @cx25821_stop_upstream_video_ch1(%struct.cx25821_dev*) #1

declare dso_local i32 @pci_free_consistent(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
