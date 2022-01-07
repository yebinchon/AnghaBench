; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/cx25821/extr_cx25821-video-upstream.c_cx25821_stop_upstream_video_ch1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/cx25821/extr_cx25821-video-upstream.c_cx25821_stop_upstream_video_ch1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx25821_dev = type { i32*, i32*, i32, i64, i64, i64, i32, i64, %struct.sram_channel* }
%struct.sram_channel = type { i32, i32 }

@VID_UPSTREAM_SRAM_CHANNEL_I = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [56 x i8] c"cx25821: No video file is currently running so return!\0A\00", align 1
@_intr_msk = common dso_local global i32 0, align 4
@FLD_VID_FIFO_EN = common dso_local global i32 0, align 4
@FLD_VID_RISC_EN = common dso_local global i32 0, align 4
@END_OF_FILE = common dso_local global i32 0, align 4
@VID_CH_MODE_SEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cx25821_stop_upstream_video_ch1(%struct.cx25821_dev* %0) #0 {
  %2 = alloca %struct.cx25821_dev*, align 8
  %3 = alloca %struct.sram_channel*, align 8
  %4 = alloca i32, align 4
  store %struct.cx25821_dev* %0, %struct.cx25821_dev** %2, align 8
  %5 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %6 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %5, i32 0, i32 8
  %7 = load %struct.sram_channel*, %struct.sram_channel** %6, align 8
  %8 = load i64, i64* @VID_UPSTREAM_SRAM_CHANNEL_I, align 8
  %9 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %7, i64 %8
  store %struct.sram_channel* %9, %struct.sram_channel** %3, align 8
  store i32 0, i32* %4, align 4
  %10 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %11 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %10, i32 0, i32 5
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %1
  %15 = call i32 @printk(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  br label %93

16:                                               ; preds = %1
  %17 = load %struct.sram_channel*, %struct.sram_channel** %3, align 8
  %18 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @cx_read(i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load %struct.sram_channel*, %struct.sram_channel** %3, align 8
  %22 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @_intr_msk, align 4
  %26 = xor i32 %25, -1
  %27 = and i32 %24, %26
  %28 = call i32 @cx_write(i32 %23, i32 %27)
  %29 = load %struct.sram_channel*, %struct.sram_channel** %3, align 8
  %30 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @cx_read(i32 %31)
  store i32 %32, i32* %4, align 4
  %33 = load %struct.sram_channel*, %struct.sram_channel** %3, align 8
  %34 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @FLD_VID_FIFO_EN, align 4
  %38 = load i32, i32* @FLD_VID_RISC_EN, align 4
  %39 = or i32 %37, %38
  %40 = xor i32 %39, -1
  %41 = and i32 %36, %40
  %42 = call i32 @cx_write(i32 %35, i32 %41)
  %43 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %44 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %43, i32 0, i32 7
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %16
  %48 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %49 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %48, i32 0, i32 7
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %52 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %51, i32 0, i32 6
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @memset(i64 %50, i32 0, i32 %53)
  br label %55

55:                                               ; preds = %47, %16
  %56 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %57 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %56, i32 0, i32 5
  store i64 0, i64* %57, align 8
  %58 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %59 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %58, i32 0, i32 4
  store i64 0, i64* %59, align 8
  %60 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %61 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %60, i32 0, i32 3
  store i64 0, i64* %61, align 8
  %62 = load i32, i32* @END_OF_FILE, align 4
  %63 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %64 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 8
  %65 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %66 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %76

69:                                               ; preds = %55
  %70 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %71 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @kfree(i32* %72)
  %74 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %75 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %74, i32 0, i32 1
  store i32* null, i32** %75, align 8
  br label %76

76:                                               ; preds = %69, %55
  %77 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %78 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %86

81:                                               ; preds = %76
  %82 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %83 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = call i32 @kfree(i32* %84)
  br label %86

86:                                               ; preds = %81, %76
  %87 = load i32, i32* @VID_CH_MODE_SEL, align 4
  %88 = call i32 @cx_read(i32 %87)
  store i32 %88, i32* %4, align 4
  %89 = load i32, i32* @VID_CH_MODE_SEL, align 4
  %90 = load i32, i32* %4, align 4
  %91 = and i32 %90, -512
  %92 = call i32 @cx_write(i32 %89, i32 %91)
  br label %93

93:                                               ; preds = %86, %14
  ret void
}

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @cx_read(i32) #1

declare dso_local i32 @cx_write(i32, i32) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
