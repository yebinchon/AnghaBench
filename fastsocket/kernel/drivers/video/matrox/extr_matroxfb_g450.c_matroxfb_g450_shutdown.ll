; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/matrox/extr_matroxfb_g450.c_matroxfb_g450_shutdown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/matrox/extr_matroxfb_g450.c_matroxfb_g450_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.matrox_fb_info = type { %struct.TYPE_6__, %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i8*, i32*, i32*, i8* }
%struct.TYPE_4__ = type { i64 }

@MATROXFB_SRC_NONE = common dso_local global i8* null, align 8
@MATROXFB_OUTPUT_MODE_MONITOR = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @matroxfb_g450_shutdown(%struct.matrox_fb_info* %0) #0 {
  %2 = alloca %struct.matrox_fb_info*, align 8
  store %struct.matrox_fb_info* %0, %struct.matrox_fb_info** %2, align 8
  %3 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %2, align 8
  %4 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %3, i32 0, i32 2
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %61

8:                                                ; preds = %1
  %9 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %2, align 8
  %10 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = call i32 @down_write(i32* %11)
  %13 = load i8*, i8** @MATROXFB_SRC_NONE, align 8
  %14 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %2, align 8
  %15 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %14, i32 0, i32 1
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i64 1
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 3
  store i8* %13, i8** %18, align 8
  %19 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %2, align 8
  %20 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %19, i32 0, i32 1
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i64 1
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 2
  store i32* null, i32** %23, align 8
  %24 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %2, align 8
  %25 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %24, i32 0, i32 1
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i64 1
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  store i32* null, i32** %28, align 8
  %29 = load i8*, i8** @MATROXFB_OUTPUT_MODE_MONITOR, align 8
  %30 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %2, align 8
  %31 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %30, i32 0, i32 1
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i64 1
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  store i8* %29, i8** %34, align 8
  %35 = load i8*, i8** @MATROXFB_SRC_NONE, align 8
  %36 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %2, align 8
  %37 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %36, i32 0, i32 1
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i64 2
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 3
  store i8* %35, i8** %40, align 8
  %41 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %2, align 8
  %42 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %41, i32 0, i32 1
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i64 2
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 2
  store i32* null, i32** %45, align 8
  %46 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %2, align 8
  %47 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %46, i32 0, i32 1
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i64 2
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  store i32* null, i32** %50, align 8
  %51 = load i8*, i8** @MATROXFB_OUTPUT_MODE_MONITOR, align 8
  %52 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %2, align 8
  %53 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %52, i32 0, i32 1
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i64 2
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  store i8* %51, i8** %56, align 8
  %57 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %2, align 8
  %58 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = call i32 @up_write(i32* %59)
  br label %61

61:                                               ; preds = %8, %1
  ret void
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
