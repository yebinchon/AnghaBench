; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/cs46xx/extr_cs46xx_lib.c_snd_cs46xx_playback_prepare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/cs46xx/extr_cs46xx_lib.c_snd_cs46xx_playback_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32, i32, i32, %struct.snd_cs46xx_pcm* }
%struct.snd_cs46xx_pcm = type { i32, %struct.TYPE_7__, %struct.TYPE_6__*, %struct.TYPE_8__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.snd_cs46xx = type { i32 }

@BA1_PFIE = common dso_local global i32 0, align 4
@CS46XX_FRAGS = common dso_local global i32 0, align 4
@BA1_PBA = common dso_local global i32 0, align 4
@BA1_PDTC = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_cs46xx_playback_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_cs46xx_playback_prepare(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_cs46xx*, align 8
  %6 = alloca %struct.snd_pcm_runtime*, align 8
  %7 = alloca %struct.snd_cs46xx_pcm*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %9 = call %struct.snd_cs46xx* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %8)
  store %struct.snd_cs46xx* %9, %struct.snd_cs46xx** %5, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %10, i32 0, i32 0
  %12 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %11, align 8
  store %struct.snd_pcm_runtime* %12, %struct.snd_pcm_runtime** %6, align 8
  %13 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %14 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %13, i32 0, i32 4
  %15 = load %struct.snd_cs46xx_pcm*, %struct.snd_cs46xx_pcm** %14, align 8
  store %struct.snd_cs46xx_pcm* %15, %struct.snd_cs46xx_pcm** %7, align 8
  %16 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %5, align 8
  %17 = load i32, i32* @BA1_PFIE, align 4
  %18 = call i32 @snd_cs46xx_peek(%struct.snd_cs46xx* %16, i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = and i32 %19, -61504
  store i32 %20, i32* %4, align 4
  %21 = load %struct.snd_cs46xx_pcm*, %struct.snd_cs46xx_pcm** %7, align 8
  %22 = getelementptr inbounds %struct.snd_cs46xx_pcm, %struct.snd_cs46xx_pcm* %21, i32 0, i32 0
  store i32 2, i32* %22, align 8
  %23 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %24 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %34

27:                                               ; preds = %1
  %28 = load %struct.snd_cs46xx_pcm*, %struct.snd_cs46xx_pcm** %7, align 8
  %29 = getelementptr inbounds %struct.snd_cs46xx_pcm, %struct.snd_cs46xx_pcm* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %29, align 8
  %32 = load i32, i32* %4, align 4
  %33 = or i32 %32, 8192
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %27, %1
  %35 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %36 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @snd_pcm_format_width(i32 %37)
  %39 = icmp eq i32 %38, 8
  br i1 %39, label %40, label %47

40:                                               ; preds = %34
  %41 = load %struct.snd_cs46xx_pcm*, %struct.snd_cs46xx_pcm** %7, align 8
  %42 = getelementptr inbounds %struct.snd_cs46xx_pcm, %struct.snd_cs46xx_pcm* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %42, align 8
  %45 = load i32, i32* %4, align 4
  %46 = or i32 %45, 4096
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %40, %34
  %48 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %49 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @snd_pcm_format_unsigned(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load i32, i32* %4, align 4
  %55 = or i32 %54, 32768
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %53, %47
  %57 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %58 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @snd_pcm_format_width(i32 %59)
  %61 = icmp ne i32 %60, 8
  br i1 %61, label %62, label %72

62:                                               ; preds = %56
  %63 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %64 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @snd_pcm_format_big_endian(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %62
  %69 = load i32, i32* %4, align 4
  %70 = or i32 %69, 16384
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %68, %62
  br label %72

72:                                               ; preds = %71, %56
  %73 = load %struct.snd_cs46xx_pcm*, %struct.snd_cs46xx_pcm** %7, align 8
  %74 = getelementptr inbounds %struct.snd_cs46xx_pcm, %struct.snd_cs46xx_pcm* %73, i32 0, i32 3
  %75 = call i32 @memset(%struct.TYPE_8__* %74, i32 0, i32 8)
  %76 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %77 = call i32 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream* %76)
  %78 = load %struct.snd_cs46xx_pcm*, %struct.snd_cs46xx_pcm** %7, align 8
  %79 = getelementptr inbounds %struct.snd_cs46xx_pcm, %struct.snd_cs46xx_pcm* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 1
  store i32 %77, i32* %80, align 4
  %81 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %82 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @CS46XX_FRAGS, align 4
  %85 = mul nsw i32 %83, %84
  %86 = load %struct.snd_cs46xx_pcm*, %struct.snd_cs46xx_pcm** %7, align 8
  %87 = getelementptr inbounds %struct.snd_cs46xx_pcm, %struct.snd_cs46xx_pcm* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = shl i32 %85, %88
  %90 = load %struct.snd_cs46xx_pcm*, %struct.snd_cs46xx_pcm** %7, align 8
  %91 = getelementptr inbounds %struct.snd_cs46xx_pcm, %struct.snd_cs46xx_pcm* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  store i32 %89, i32* %92, align 8
  %93 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %5, align 8
  %94 = load i32, i32* @BA1_PBA, align 4
  %95 = load %struct.snd_cs46xx_pcm*, %struct.snd_cs46xx_pcm** %7, align 8
  %96 = getelementptr inbounds %struct.snd_cs46xx_pcm, %struct.snd_cs46xx_pcm* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @snd_cs46xx_poke(%struct.snd_cs46xx* %93, i32 %94, i32 %98)
  %100 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %5, align 8
  %101 = load i32, i32* @BA1_PDTC, align 4
  %102 = call i32 @snd_cs46xx_peek(%struct.snd_cs46xx* %100, i32 %101)
  store i32 %102, i32* %3, align 4
  %103 = load i32, i32* %3, align 4
  %104 = and i32 %103, -1024
  store i32 %104, i32* %3, align 4
  %105 = load %struct.snd_cs46xx_pcm*, %struct.snd_cs46xx_pcm** %7, align 8
  %106 = getelementptr inbounds %struct.snd_cs46xx_pcm, %struct.snd_cs46xx_pcm* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = shl i32 4, %107
  %109 = sub nsw i32 %108, 1
  %110 = load i32, i32* %3, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %3, align 4
  %112 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %5, align 8
  %113 = load i32, i32* @BA1_PDTC, align 4
  %114 = load i32, i32* %3, align 4
  %115 = call i32 @snd_cs46xx_poke(%struct.snd_cs46xx* %112, i32 %113, i32 %114)
  %116 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %5, align 8
  %117 = load i32, i32* @BA1_PFIE, align 4
  %118 = load i32, i32* %4, align 4
  %119 = call i32 @snd_cs46xx_poke(%struct.snd_cs46xx* %116, i32 %117, i32 %118)
  %120 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %5, align 8
  %121 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %122 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @snd_cs46xx_set_play_sample_rate(%struct.snd_cs46xx* %120, i32 %123)
  ret i32 0
}

declare dso_local %struct.snd_cs46xx* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_cs46xx_peek(%struct.snd_cs46xx*, i32) #1

declare dso_local i32 @snd_pcm_format_width(i32) #1

declare dso_local i64 @snd_pcm_format_unsigned(i32) #1

declare dso_local i64 @snd_pcm_format_big_endian(i32) #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_cs46xx_poke(%struct.snd_cs46xx*, i32, i32) #1

declare dso_local i32 @snd_cs46xx_set_play_sample_rate(%struct.snd_cs46xx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
