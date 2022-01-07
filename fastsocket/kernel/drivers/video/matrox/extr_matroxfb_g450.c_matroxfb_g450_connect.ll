; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/matrox/extr_matroxfb_g450.c_matroxfb_g450_connect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/matrox/extr_matroxfb_g450.c_matroxfb_g450_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.matrox_fb_info = type { %struct.TYPE_6__, %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i8*, i32*, %struct.matrox_fb_info*, i32, i32 }
%struct.TYPE_4__ = type { i64 }

@matroxfb_g450_altout = common dso_local global i32 0, align 4
@MATROXFB_OUTPUT_MODE_MONITOR = common dso_local global i8* null, align 8
@matroxfb_g450_dvi = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @matroxfb_g450_connect(%struct.matrox_fb_info* %0) #0 {
  %2 = alloca %struct.matrox_fb_info*, align 8
  store %struct.matrox_fb_info* %0, %struct.matrox_fb_info** %2, align 8
  %3 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %2, align 8
  %4 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %3, i32 0, i32 2
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %75

8:                                                ; preds = %1
  %9 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %2, align 8
  %10 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = call i32 @down_write(i32* %11)
  %13 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %2, align 8
  %14 = call i32 @tvo_fill_defaults(%struct.matrox_fb_info* %13)
  %15 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %2, align 8
  %16 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %15, i32 0, i32 1
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i64 1
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %2, align 8
  %22 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %21, i32 0, i32 1
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i64 1
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 4
  store i32 %20, i32* %25, align 4
  %26 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %2, align 8
  %27 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %2, align 8
  %28 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %27, i32 0, i32 1
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i64 1
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 2
  store %struct.matrox_fb_info* %26, %struct.matrox_fb_info** %31, align 8
  %32 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %2, align 8
  %33 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %32, i32 0, i32 1
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i64 1
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  store i32* @matroxfb_g450_altout, i32** %36, align 8
  %37 = load i8*, i8** @MATROXFB_OUTPUT_MODE_MONITOR, align 8
  %38 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %2, align 8
  %39 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %38, i32 0, i32 1
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i64 1
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  store i8* %37, i8** %42, align 8
  %43 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %2, align 8
  %44 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %43, i32 0, i32 1
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i64 2
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %2, align 8
  %50 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %49, i32 0, i32 1
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i64 2
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 4
  store i32 %48, i32* %53, align 4
  %54 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %2, align 8
  %55 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %2, align 8
  %56 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %55, i32 0, i32 1
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i64 2
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 2
  store %struct.matrox_fb_info* %54, %struct.matrox_fb_info** %59, align 8
  %60 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %2, align 8
  %61 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %60, i32 0, i32 1
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i64 2
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  store i32* @matroxfb_g450_dvi, i32** %64, align 8
  %65 = load i8*, i8** @MATROXFB_OUTPUT_MODE_MONITOR, align 8
  %66 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %2, align 8
  %67 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %66, i32 0, i32 1
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i64 2
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  store i8* %65, i8** %70, align 8
  %71 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %2, align 8
  %72 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = call i32 @up_write(i32* %73)
  br label %75

75:                                               ; preds = %8, %1
  ret void
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @tvo_fill_defaults(%struct.matrox_fb_info*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
