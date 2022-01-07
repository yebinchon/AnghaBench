; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_emupcm.c_fx8010_pb_trans_copy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_emupcm.c_fx8010_pb_trans_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.snd_pcm_indirect = type { i64 }
%struct.snd_emu10k1 = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.snd_emu10k1_fx8010_pcm* }
%struct.TYPE_5__ = type { i64 }
%struct.snd_emu10k1_fx8010_pcm = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_pcm_substream*, %struct.snd_pcm_indirect*, i64)* @fx8010_pb_trans_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fx8010_pb_trans_copy(%struct.snd_pcm_substream* %0, %struct.snd_pcm_indirect* %1, i64 %2) #0 {
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_indirect*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.snd_emu10k1*, align 8
  %8 = alloca %struct.snd_emu10k1_fx8010_pcm*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i16*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_pcm_indirect* %1, %struct.snd_pcm_indirect** %5, align 8
  store i64 %2, i64* %6, align 8
  %15 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %16 = call %struct.snd_emu10k1* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %15)
  store %struct.snd_emu10k1* %16, %struct.snd_emu10k1** %7, align 8
  %17 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %7, align 8
  %18 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = load %struct.snd_emu10k1_fx8010_pcm*, %struct.snd_emu10k1_fx8010_pcm** %19, align 8
  %21 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %22 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm, %struct.snd_emu10k1_fx8010_pcm* %20, i64 %23
  store %struct.snd_emu10k1_fx8010_pcm* %24, %struct.snd_emu10k1_fx8010_pcm** %8, align 8
  %25 = load %struct.snd_emu10k1_fx8010_pcm*, %struct.snd_emu10k1_fx8010_pcm** %8, align 8
  %26 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm, %struct.snd_emu10k1_fx8010_pcm* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %9, align 4
  %28 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %29 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.snd_pcm_indirect*, %struct.snd_pcm_indirect** %5, align 8
  %34 = getelementptr inbounds %struct.snd_pcm_indirect, %struct.snd_pcm_indirect* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %32, %35
  %37 = inttoptr i64 %36 to i16*
  store i16* %37, i16** %10, align 8
  %38 = load i64, i64* %6, align 8
  %39 = lshr i64 %38, 2
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %11, align 4
  %41 = load %struct.snd_emu10k1_fx8010_pcm*, %struct.snd_emu10k1_fx8010_pcm** %8, align 8
  %42 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm, %struct.snd_emu10k1_fx8010_pcm* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %13, align 4
  %44 = load %struct.snd_emu10k1_fx8010_pcm*, %struct.snd_emu10k1_fx8010_pcm** %8, align 8
  %45 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm, %struct.snd_emu10k1_fx8010_pcm* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %14, align 4
  br label %47

47:                                               ; preds = %51, %3
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* %13, align 4
  %50 = icmp ugt i32 %48, %49
  br i1 %50, label %51, label %93

51:                                               ; preds = %47
  %52 = load i32, i32* %13, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %12, align 4
  %54 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %7, align 8
  %55 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = inttoptr i64 %58 to i16*
  %60 = load i32, i32* %13, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i16, i16* %59, i64 %61
  %63 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %7, align 8
  %64 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = inttoptr i64 %67 to i16*
  %69 = load i32, i32* %13, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds i16, i16* %68, i64 %70
  %72 = load i32, i32* %9, align 4
  %73 = udiv i32 %72, 2
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i16, i16* %71, i64 %74
  %76 = load i16*, i16** %10, align 8
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* %14, align 4
  %79 = call i32 @snd_emu10k1_fx8010_playback_tram_poke1(i16* %62, i16* %75, i16* %76, i32 %77, i32 %78)
  %80 = load i32, i32* %12, align 4
  %81 = mul i32 %80, 2
  %82 = load i16*, i16** %10, align 8
  %83 = zext i32 %81 to i64
  %84 = getelementptr inbounds i16, i16* %82, i64 %83
  store i16* %84, i16** %10, align 8
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* %11, align 4
  %87 = sub i32 %86, %85
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* %9, align 4
  %89 = udiv i32 %88, 2
  %90 = sub i32 %89, 1
  store i32 %90, i32* %13, align 4
  %91 = load i32, i32* %14, align 4
  %92 = add i32 %91, 1
  store i32 %92, i32* %14, align 4
  br label %47

93:                                               ; preds = %47
  %94 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %7, align 8
  %95 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = inttoptr i64 %98 to i16*
  %100 = load i32, i32* %13, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds i16, i16* %99, i64 %101
  %103 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %7, align 8
  %104 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = inttoptr i64 %107 to i16*
  %109 = load i32, i32* %13, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds i16, i16* %108, i64 %110
  %112 = load i32, i32* %9, align 4
  %113 = udiv i32 %112, 2
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds i16, i16* %111, i64 %114
  %116 = load i16*, i16** %10, align 8
  %117 = load i32, i32* %11, align 4
  %118 = load i32, i32* %14, align 4
  %119 = call i32 @snd_emu10k1_fx8010_playback_tram_poke1(i16* %102, i16* %115, i16* %116, i32 %117, i32 %118)
  %120 = load i32, i32* %11, align 4
  %121 = load i32, i32* %13, align 4
  %122 = sub i32 %121, %120
  store i32 %122, i32* %13, align 4
  %123 = load i32, i32* %13, align 4
  %124 = load %struct.snd_emu10k1_fx8010_pcm*, %struct.snd_emu10k1_fx8010_pcm** %8, align 8
  %125 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm, %struct.snd_emu10k1_fx8010_pcm* %124, i32 0, i32 1
  store i32 %123, i32* %125, align 4
  %126 = load i32, i32* %14, align 4
  %127 = load %struct.snd_emu10k1_fx8010_pcm*, %struct.snd_emu10k1_fx8010_pcm** %8, align 8
  %128 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm, %struct.snd_emu10k1_fx8010_pcm* %127, i32 0, i32 2
  store i32 %126, i32* %128, align 4
  ret void
}

declare dso_local %struct.snd_emu10k1* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_emu10k1_fx8010_playback_tram_poke1(i16*, i16*, i16*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
