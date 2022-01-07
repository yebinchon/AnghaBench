; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/gus/extr_gus_pcm.c_snd_gf1_pcm_playback_silence.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/gus/extr_gus_pcm.c_snd_gf1_pcm_playback_silence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i64, i32, %struct.gus_pcm_private* }
%struct.gus_pcm_private = type { i32, i64, %struct.snd_gus_card* }
%struct.snd_gus_card = type { i32 }

@EIO = common dso_local global i32 0, align 4
@snd_gf1_pcm_use_dma = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32, i32, i32)* @snd_gf1_pcm_playback_silence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_gf1_pcm_playback_silence(%struct.snd_pcm_substream* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_pcm_substream*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_pcm_runtime*, align 8
  %11 = alloca %struct.gus_pcm_private*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.snd_gus_card*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %18 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %19 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %18, i32 0, i32 0
  %20 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %19, align 8
  store %struct.snd_pcm_runtime* %20, %struct.snd_pcm_runtime** %10, align 8
  %21 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  %22 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %21, i32 0, i32 2
  %23 = load %struct.gus_pcm_private*, %struct.gus_pcm_private** %22, align 8
  store %struct.gus_pcm_private* %23, %struct.gus_pcm_private** %11, align 8
  %24 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @samples_to_bytes(%struct.snd_pcm_runtime* %24, i32 %25)
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.gus_pcm_private*, %struct.gus_pcm_private** %11, align 8
  %29 = getelementptr inbounds %struct.gus_pcm_private, %struct.gus_pcm_private* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sdiv i32 %30, 2
  %32 = mul nsw i32 %27, %31
  %33 = add nsw i32 %26, %32
  store i32 %33, i32* %12, align 4
  %34 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @samples_to_bytes(%struct.snd_pcm_runtime* %34, i32 %35)
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %12, align 4
  %38 = load %struct.gus_pcm_private*, %struct.gus_pcm_private** %11, align 8
  %39 = getelementptr inbounds %struct.gus_pcm_private, %struct.gus_pcm_private* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ugt i32 %37, %40
  %42 = zext i1 %41 to i32
  %43 = call i64 @snd_BUG_ON(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %4
  %46 = load i32, i32* @EIO, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %126

48:                                               ; preds = %4
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* %13, align 4
  %51 = add i32 %49, %50
  %52 = load %struct.gus_pcm_private*, %struct.gus_pcm_private** %11, align 8
  %53 = getelementptr inbounds %struct.gus_pcm_private, %struct.gus_pcm_private* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp ugt i32 %51, %54
  %56 = zext i1 %55 to i32
  %57 = call i64 @snd_BUG_ON(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %48
  %60 = load i32, i32* @EIO, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %5, align 4
  br label %126

62:                                               ; preds = %48
  %63 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  %64 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  %67 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i32, i32* %12, align 4
  %70 = zext i32 %69 to i64
  %71 = add nsw i64 %68, %70
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @snd_pcm_format_set_silence(i32 %65, i64 %71, i32 %72)
  %74 = load i64, i64* @snd_gf1_pcm_use_dma, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %90

76:                                               ; preds = %62
  %77 = load i32, i32* %13, align 4
  %78 = icmp ugt i32 %77, 32
  br i1 %78, label %79, label %90

79:                                               ; preds = %76
  %80 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %81 = load i32, i32* %12, align 4
  %82 = load %struct.gus_pcm_private*, %struct.gus_pcm_private** %11, align 8
  %83 = getelementptr inbounds %struct.gus_pcm_private, %struct.gus_pcm_private* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i32, i32* %12, align 4
  %86 = zext i32 %85 to i64
  %87 = add nsw i64 %84, %86
  %88 = load i32, i32* %13, align 4
  %89 = call i32 @snd_gf1_pcm_block_change(%struct.snd_pcm_substream* %80, i32 %81, i64 %87, i32 %88)
  store i32 %89, i32* %5, align 4
  br label %126

90:                                               ; preds = %76, %62
  %91 = load %struct.gus_pcm_private*, %struct.gus_pcm_private** %11, align 8
  %92 = getelementptr inbounds %struct.gus_pcm_private, %struct.gus_pcm_private* %91, i32 0, i32 2
  %93 = load %struct.snd_gus_card*, %struct.snd_gus_card** %92, align 8
  store %struct.snd_gus_card* %93, %struct.snd_gus_card** %14, align 8
  %94 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  %95 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @snd_pcm_format_width(i32 %96)
  %98 = icmp eq i32 %97, 16
  %99 = zext i1 %98 to i32
  store i32 %99, i32* %16, align 4
  %100 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  %101 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @snd_pcm_format_unsigned(i32 %102)
  store i32 %103, i32* %17, align 4
  %104 = load %struct.snd_gus_card*, %struct.snd_gus_card** %14, align 8
  %105 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  %106 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i32, i32* %12, align 4
  %109 = zext i32 %108 to i64
  %110 = add nsw i64 %107, %109
  %111 = load %struct.gus_pcm_private*, %struct.gus_pcm_private** %11, align 8
  %112 = getelementptr inbounds %struct.gus_pcm_private, %struct.gus_pcm_private* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = load i32, i32* %12, align 4
  %115 = zext i32 %114 to i64
  %116 = add nsw i64 %113, %115
  %117 = load i32, i32* %13, align 4
  %118 = load i32, i32* %16, align 4
  %119 = load i32, i32* %17, align 4
  %120 = call i32 @snd_gf1_pcm_poke_block(%struct.snd_gus_card* %104, i64 %110, i64 %116, i32 %117, i32 %118, i32 %119)
  store i32 %120, i32* %15, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %90
  %123 = load i32, i32* %15, align 4
  store i32 %123, i32* %5, align 4
  br label %126

124:                                              ; preds = %90
  br label %125

125:                                              ; preds = %124
  store i32 0, i32* %5, align 4
  br label %126

126:                                              ; preds = %125, %122, %79, %59, %45
  %127 = load i32, i32* %5, align 4
  ret i32 %127
}

declare dso_local i32 @samples_to_bytes(%struct.snd_pcm_runtime*, i32) #1

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @snd_pcm_format_set_silence(i32, i64, i32) #1

declare dso_local i32 @snd_gf1_pcm_block_change(%struct.snd_pcm_substream*, i32, i64, i32) #1

declare dso_local i32 @snd_pcm_format_width(i32) #1

declare dso_local i32 @snd_pcm_format_unsigned(i32) #1

declare dso_local i32 @snd_gf1_pcm_poke_block(%struct.snd_gus_card*, i64, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
