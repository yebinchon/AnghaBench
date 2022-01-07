; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/cx25821/extr_cx25821-audio-upstream.c_cx25821_risc_field_upstream_audio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/cx25821/extr_cx25821-audio-upstream.c_cx25821_risc_field_upstream_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx25821_dev = type { i64, %struct.sram_channel* }
%struct.sram_channel = type { i32, i32 }

@LINES_PER_AUDIO_BUFFER = common dso_local global i32 0, align 4
@RISC_READ = common dso_local global i32 0, align 4
@RISC_SOL = common dso_local global i32 0, align 4
@RISC_EOL = common dso_local global i32 0, align 4
@RISC_WRITECR = common dso_local global i32 0, align 4
@AUDIO_LINE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.cx25821_dev*, i32*, i32, i32, i32)* @cx25821_risc_field_upstream_audio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @cx25821_risc_field_upstream_audio(%struct.cx25821_dev* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.cx25821_dev*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.sram_channel*, align 8
  %13 = alloca i32, align 4
  store %struct.cx25821_dev* %0, %struct.cx25821_dev** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load %struct.cx25821_dev*, %struct.cx25821_dev** %6, align 8
  %15 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %14, i32 0, i32 1
  %16 = load %struct.sram_channel*, %struct.sram_channel** %15, align 8
  %17 = load %struct.cx25821_dev*, %struct.cx25821_dev** %6, align 8
  %18 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %16, i64 %19
  store %struct.sram_channel* %20, %struct.sram_channel** %12, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %11, align 4
  br label %21

21:                                               ; preds = %75, %5
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* @LINES_PER_AUDIO_BUFFER, align 4
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %25, label %78

25:                                               ; preds = %21
  %26 = load i32, i32* @RISC_READ, align 4
  %27 = load i32, i32* @RISC_SOL, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @RISC_EOL, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* %9, align 4
  %32 = or i32 %30, %31
  %33 = call i8* @cpu_to_le32(i32 %32)
  %34 = ptrtoint i8* %33 to i32
  %35 = load i32*, i32** %7, align 8
  %36 = getelementptr inbounds i32, i32* %35, i32 1
  store i32* %36, i32** %7, align 8
  store i32 %34, i32* %35, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %13, align 4
  %39 = add nsw i32 %37, %38
  %40 = call i8* @cpu_to_le32(i32 %39)
  %41 = ptrtoint i8* %40 to i32
  %42 = load i32*, i32** %7, align 8
  %43 = getelementptr inbounds i32, i32* %42, i32 1
  store i32* %43, i32** %7, align 8
  store i32 %41, i32* %42, align 4
  %44 = call i8* @cpu_to_le32(i32 0)
  %45 = ptrtoint i8* %44 to i32
  %46 = load i32*, i32** %7, align 8
  %47 = getelementptr inbounds i32, i32* %46, i32 1
  store i32* %47, i32** %7, align 8
  store i32 %45, i32* %46, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %69

50:                                               ; preds = %25
  %51 = load i32, i32* %11, align 4
  %52 = icmp eq i32 %51, 2
  br i1 %52, label %53, label %69

53:                                               ; preds = %50
  %54 = load i32, i32* @RISC_WRITECR, align 4
  %55 = load i32*, i32** %7, align 8
  %56 = getelementptr inbounds i32, i32* %55, i32 1
  store i32* %56, i32** %7, align 8
  store i32 %54, i32* %55, align 4
  %57 = load %struct.sram_channel*, %struct.sram_channel** %12, align 8
  %58 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32*, i32** %7, align 8
  %61 = getelementptr inbounds i32, i32* %60, i32 1
  store i32* %61, i32** %7, align 8
  store i32 %59, i32* %60, align 4
  %62 = load %struct.sram_channel*, %struct.sram_channel** %12, align 8
  %63 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32*, i32** %7, align 8
  %66 = getelementptr inbounds i32, i32* %65, i32 1
  store i32* %66, i32** %7, align 8
  store i32 %64, i32* %65, align 4
  %67 = load i32*, i32** %7, align 8
  %68 = getelementptr inbounds i32, i32* %67, i32 1
  store i32* %68, i32** %7, align 8
  store i32 32, i32* %67, align 4
  br label %69

69:                                               ; preds = %53, %50, %25
  %70 = load i64, i64* @AUDIO_LINE_SIZE, align 8
  %71 = load i32, i32* %13, align 4
  %72 = sext i32 %71 to i64
  %73 = add nsw i64 %72, %70
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %13, align 4
  br label %75

75:                                               ; preds = %69
  %76 = load i32, i32* %11, align 4
  %77 = add i32 %76, 1
  store i32 %77, i32* %11, align 4
  br label %21

78:                                               ; preds = %21
  %79 = load i32*, i32** %7, align 8
  ret i32* %79
}

declare dso_local i8* @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
