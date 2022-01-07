; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/sb/extr_emu8000_pcm.c_emu8k_pcm_silence.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/sb/extr_emu8000_pcm.c_emu8k_pcm_silence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_emu8k_pcm* }
%struct.snd_emu8k_pcm = type { i32, i64*, %struct.snd_emu8000* }
%struct.snd_emu8000 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32, i64, i64)* @emu8k_pcm_silence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emu8k_pcm_silence(%struct.snd_pcm_substream* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.snd_emu8k_pcm*, align 8
  %10 = alloca %struct.snd_emu8000*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %14, align 8
  store %struct.snd_emu8k_pcm* %15, %struct.snd_emu8k_pcm** %9, align 8
  %16 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %9, align 8
  %17 = getelementptr inbounds %struct.snd_emu8k_pcm, %struct.snd_emu8k_pcm* %16, i32 0, i32 2
  %18 = load %struct.snd_emu8000*, %struct.snd_emu8000** %17, align 8
  store %struct.snd_emu8000* %18, %struct.snd_emu8000** %10, align 8
  %19 = load %struct.snd_emu8000*, %struct.snd_emu8000** %10, align 8
  %20 = call i32 @snd_emu8000_write_wait(%struct.snd_emu8000* %19, i32 1)
  %21 = load %struct.snd_emu8000*, %struct.snd_emu8000** %10, align 8
  %22 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %9, align 8
  %23 = getelementptr inbounds %struct.snd_emu8k_pcm, %struct.snd_emu8k_pcm* %22, i32 0, i32 1
  %24 = load i64*, i64** %23, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %7, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @EMU8000_SMALW_WRITE(%struct.snd_emu8000* %21, i64 %28)
  %30 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %9, align 8
  %31 = getelementptr inbounds %struct.snd_emu8k_pcm, %struct.snd_emu8k_pcm* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp sgt i32 %32, 1
  br i1 %33, label %34, label %44

34:                                               ; preds = %4
  %35 = load %struct.snd_emu8000*, %struct.snd_emu8000** %10, align 8
  %36 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %9, align 8
  %37 = getelementptr inbounds %struct.snd_emu8k_pcm, %struct.snd_emu8k_pcm* %36, i32 0, i32 1
  %38 = load i64*, i64** %37, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %7, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @EMU8000_SMARW_WRITE(%struct.snd_emu8000* %35, i64 %42)
  br label %44

44:                                               ; preds = %34, %4
  br label %45

45:                                               ; preds = %61, %44
  %46 = load i64, i64* %8, align 8
  %47 = add nsw i64 %46, -1
  store i64 %47, i64* %8, align 8
  %48 = icmp sgt i64 %46, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %45
  %50 = call i32 (...) @CHECK_SCHEDULER()
  %51 = load %struct.snd_emu8000*, %struct.snd_emu8000** %10, align 8
  %52 = call i32 @EMU8000_SMLD_WRITE(%struct.snd_emu8000* %51, i32 0)
  %53 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %9, align 8
  %54 = getelementptr inbounds %struct.snd_emu8k_pcm, %struct.snd_emu8k_pcm* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp sgt i32 %55, 1
  br i1 %56, label %57, label %61

57:                                               ; preds = %49
  %58 = call i32 (...) @CHECK_SCHEDULER()
  %59 = load %struct.snd_emu8000*, %struct.snd_emu8000** %10, align 8
  %60 = call i32 @EMU8000_SMRD_WRITE(%struct.snd_emu8000* %59, i32 0)
  br label %61

61:                                               ; preds = %57, %49
  br label %45

62:                                               ; preds = %45
  ret i32 0
}

declare dso_local i32 @snd_emu8000_write_wait(%struct.snd_emu8000*, i32) #1

declare dso_local i32 @EMU8000_SMALW_WRITE(%struct.snd_emu8000*, i64) #1

declare dso_local i32 @EMU8000_SMARW_WRITE(%struct.snd_emu8000*, i64) #1

declare dso_local i32 @CHECK_SCHEDULER(...) #1

declare dso_local i32 @EMU8000_SMLD_WRITE(%struct.snd_emu8000*, i32) #1

declare dso_local i32 @EMU8000_SMRD_WRITE(%struct.snd_emu8000*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
