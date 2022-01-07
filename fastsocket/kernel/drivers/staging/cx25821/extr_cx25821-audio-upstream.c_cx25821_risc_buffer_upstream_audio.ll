; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/cx25821/extr_cx25821-audio-upstream.c_cx25821_risc_buffer_upstream_audio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/cx25821/extr_cx25821-audio-upstream.c_cx25821_risc_buffer_upstream_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx25821_dev = type { i32, i32*, i64 }
%struct.pci_dev = type { i32 }

@AUDIO_DATA_BUF_SZ = common dso_local global i32 0, align 4
@RISC_CNT_INC = common dso_local global i32 0, align 4
@RISC_RESYNC = common dso_local global i32 0, align 4
@AUDIO_SYNC_LINE = common dso_local global i32 0, align 4
@NUM_AUDIO_FRAMES = common dso_local global i32 0, align 4
@RISC_CNT_RESET = common dso_local global i32 0, align 4
@RISC_SYNC_INSTRUCTION_SIZE = common dso_local global i32 0, align 4
@AUDIO_RISC_DMA_BUF_SIZE = common dso_local global i32 0, align 4
@USE_RISC_NOOP_AUDIO = common dso_local global i64 0, align 8
@NUM_NO_OPS = common dso_local global i32 0, align 4
@RISC_NOOP = common dso_local global i32 0, align 4
@RISC_JUMP = common dso_local global i32 0, align 4
@RISC_IRQ1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx25821_risc_buffer_upstream_audio(%struct.cx25821_dev* %0, %struct.pci_dev* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.cx25821_dev*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.cx25821_dev* %0, %struct.cx25821_dev** %5, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %17 = load i32, i32* @AUDIO_DATA_BUF_SZ, align 4
  store i32 %17, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %18 = load i32, i32* @RISC_CNT_INC, align 4
  store i32 %18, i32* %15, align 4
  %19 = load %struct.cx25821_dev*, %struct.cx25821_dev** %5, align 8
  %20 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %9, align 8
  %22 = load i32, i32* @RISC_RESYNC, align 4
  %23 = load i32, i32* @AUDIO_SYNC_LINE, align 4
  %24 = or i32 %22, %23
  %25 = call i8* @cpu_to_le32(i32 %24)
  %26 = ptrtoint i8* %25 to i32
  %27 = load i32*, i32** %9, align 8
  %28 = getelementptr inbounds i32, i32* %27, i32 1
  store i32* %28, i32** %9, align 8
  store i32 %26, i32* %27, align 4
  store i32 0, i32* %11, align 4
  br label %29

29:                                               ; preds = %127, %4
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* @NUM_AUDIO_FRAMES, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %130

33:                                               ; preds = %29
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* %11, align 4
  %36 = mul nsw i32 %34, %35
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  store i32 1, i32* %10, align 4
  %40 = load i32, i32* @RISC_CNT_RESET, align 4
  store i32 %40, i32* %15, align 4
  br label %43

41:                                               ; preds = %33
  store i32 0, i32* %10, align 4
  %42 = load i32, i32* @RISC_CNT_INC, align 4
  store i32 %42, i32* %15, align 4
  br label %43

43:                                               ; preds = %41, %39
  %44 = load i32, i32* %11, align 4
  %45 = add nsw i32 %44, 1
  %46 = load i32, i32* @NUM_AUDIO_FRAMES, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = load %struct.cx25821_dev*, %struct.cx25821_dev** %5, align 8
  %50 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @RISC_SYNC_INSTRUCTION_SIZE, align 4
  %53 = add nsw i32 %51, %52
  store i32 %53, i32* %16, align 4
  br label %65

54:                                               ; preds = %43
  %55 = load %struct.cx25821_dev*, %struct.cx25821_dev** %5, align 8
  %56 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @RISC_SYNC_INSTRUCTION_SIZE, align 4
  %59 = add nsw i32 %57, %58
  %60 = load i32, i32* @AUDIO_RISC_DMA_BUF_SIZE, align 4
  %61 = load i32, i32* %11, align 4
  %62 = add nsw i32 %61, 1
  %63 = mul nsw i32 %60, %62
  %64 = add nsw i32 %59, %63
  store i32 %64, i32* %16, align 4
  br label %65

65:                                               ; preds = %54, %48
  %66 = load %struct.cx25821_dev*, %struct.cx25821_dev** %5, align 8
  %67 = load i32*, i32** %9, align 8
  %68 = load %struct.cx25821_dev*, %struct.cx25821_dev** %5, align 8
  %69 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = load i32, i32* %14, align 4
  %72 = sext i32 %71 to i64
  %73 = add nsw i64 %70, %72
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* %10, align 4
  %76 = call i32* @cx25821_risc_field_upstream_audio(%struct.cx25821_dev* %66, i32* %67, i64 %73, i32 %74, i32 %75)
  store i32* %76, i32** %9, align 8
  %77 = load i64, i64* @USE_RISC_NOOP_AUDIO, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %94

79:                                               ; preds = %65
  store i32 0, i32* %12, align 4
  br label %80

80:                                               ; preds = %90, %79
  %81 = load i32, i32* %12, align 4
  %82 = load i32, i32* @NUM_NO_OPS, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %93

84:                                               ; preds = %80
  %85 = load i32, i32* @RISC_NOOP, align 4
  %86 = call i8* @cpu_to_le32(i32 %85)
  %87 = ptrtoint i8* %86 to i32
  %88 = load i32*, i32** %9, align 8
  %89 = getelementptr inbounds i32, i32* %88, i32 1
  store i32* %89, i32** %9, align 8
  store i32 %87, i32* %88, align 4
  br label %90

90:                                               ; preds = %84
  %91 = load i32, i32* %12, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %12, align 4
  br label %80

93:                                               ; preds = %80
  br label %94

94:                                               ; preds = %93, %65
  %95 = load i32, i32* @RISC_JUMP, align 4
  %96 = load i32, i32* @RISC_IRQ1, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* %15, align 4
  %99 = or i32 %97, %98
  %100 = call i8* @cpu_to_le32(i32 %99)
  %101 = ptrtoint i8* %100 to i32
  %102 = load i32*, i32** %9, align 8
  %103 = getelementptr inbounds i32, i32* %102, i32 1
  store i32* %103, i32** %9, align 8
  store i32 %101, i32* %102, align 4
  %104 = load i32, i32* %16, align 4
  %105 = call i8* @cpu_to_le32(i32 %104)
  %106 = ptrtoint i8* %105 to i32
  %107 = load i32*, i32** %9, align 8
  %108 = getelementptr inbounds i32, i32* %107, i32 1
  store i32* %108, i32** %9, align 8
  store i32 %106, i32* %107, align 4
  %109 = call i8* @cpu_to_le32(i32 0)
  %110 = ptrtoint i8* %109 to i32
  %111 = load i32*, i32** %9, align 8
  %112 = getelementptr inbounds i32, i32* %111, i32 1
  store i32* %112, i32** %9, align 8
  store i32 %110, i32* %111, align 4
  %113 = load %struct.cx25821_dev*, %struct.cx25821_dev** %5, align 8
  %114 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* @RISC_SYNC_INSTRUCTION_SIZE, align 4
  %117 = sdiv i32 %116, 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %115, i64 %118
  %120 = load i32, i32* @AUDIO_RISC_DMA_BUF_SIZE, align 4
  %121 = load i32, i32* %11, align 4
  %122 = add nsw i32 %121, 1
  %123 = mul nsw i32 %120, %122
  %124 = sdiv i32 %123, 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %119, i64 %125
  store i32* %126, i32** %9, align 8
  br label %127

127:                                              ; preds = %94
  %128 = load i32, i32* %11, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %11, align 4
  br label %29

130:                                              ; preds = %29
  ret i32 0
}

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32* @cx25821_risc_field_upstream_audio(%struct.cx25821_dev*, i32*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
