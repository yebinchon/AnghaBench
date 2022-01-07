; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/cx25821/extr_cx25821-audio-upstream.c_cx25821_stop_upstream_audio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/cx25821/extr_cx25821-audio-upstream.c_cx25821_stop_upstream_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx25821_dev = type { i32*, i32*, i32, i64, i64, i64, i32, i64, %struct.sram_channel* }
%struct.sram_channel = type { i32, i32, i32, i32 }

@AUDIO_UPSTREAM_SRAM_CHANNEL_B = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [56 x i8] c"cx25821: No audio file is currently running so return!\0A\00", align 1
@END_OF_FILE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cx25821_stop_upstream_audio(%struct.cx25821_dev* %0) #0 {
  %2 = alloca %struct.cx25821_dev*, align 8
  %3 = alloca %struct.sram_channel*, align 8
  %4 = alloca i32, align 4
  store %struct.cx25821_dev* %0, %struct.cx25821_dev** %2, align 8
  %5 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %6 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %5, i32 0, i32 8
  %7 = load %struct.sram_channel*, %struct.sram_channel** %6, align 8
  %8 = load i64, i64* @AUDIO_UPSTREAM_SRAM_CHANNEL_B, align 8
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
  br label %82

16:                                               ; preds = %1
  %17 = load %struct.sram_channel*, %struct.sram_channel** %3, align 8
  %18 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @cx_write(i32 %19, i32 0)
  %21 = load %struct.sram_channel*, %struct.sram_channel** %3, align 8
  %22 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @cx_read(i32 %23)
  store i32 %24, i32* %4, align 4
  %25 = load %struct.sram_channel*, %struct.sram_channel** %3, align 8
  %26 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.sram_channel*, %struct.sram_channel** %3, align 8
  %30 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.sram_channel*, %struct.sram_channel** %3, align 8
  %33 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %31, %34
  %36 = xor i32 %35, -1
  %37 = and i32 %28, %36
  %38 = call i32 @cx_write(i32 %27, i32 %37)
  %39 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %40 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %39, i32 0, i32 7
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %16
  %44 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %45 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %44, i32 0, i32 7
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %48 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @memset(i64 %46, i32 0, i32 %49)
  br label %51

51:                                               ; preds = %43, %16
  %52 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %53 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %52, i32 0, i32 5
  store i64 0, i64* %53, align 8
  %54 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %55 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %54, i32 0, i32 4
  store i64 0, i64* %55, align 8
  %56 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %57 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %56, i32 0, i32 3
  store i64 0, i64* %57, align 8
  %58 = load i32, i32* @END_OF_FILE, align 4
  %59 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %60 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 8
  %61 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %62 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %72

65:                                               ; preds = %51
  %66 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %67 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @kfree(i32* %68)
  %70 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %71 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %70, i32 0, i32 1
  store i32* null, i32** %71, align 8
  br label %72

72:                                               ; preds = %65, %51
  %73 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %74 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %82

77:                                               ; preds = %72
  %78 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %79 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = call i32 @kfree(i32* %80)
  br label %82

82:                                               ; preds = %14, %77, %72
  ret void
}

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @cx_write(i32, i32) #1

declare dso_local i32 @cx_read(i32) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
