; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_emufx.c_snd_emu10k1_ipcm_peek.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_emufx.c_snd_emu10k1_ipcm_peek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emu10k1 = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, %struct.snd_emu10k1_fx8010_pcm* }
%struct.snd_emu10k1_fx8010_pcm = type { i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_emu10k1_fx8010_pcm_rec = type { i64, i32, i64, i64, i64, i32*, i32, i32, i32, i32, i32, i32, i32, i32 }

@EMU10K1_FX8010_PCM_COUNT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_emu10k1*, %struct.snd_emu10k1_fx8010_pcm_rec*)* @snd_emu10k1_ipcm_peek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_emu10k1_ipcm_peek(%struct.snd_emu10k1* %0, %struct.snd_emu10k1_fx8010_pcm_rec* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_emu10k1*, align 8
  %5 = alloca %struct.snd_emu10k1_fx8010_pcm_rec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_emu10k1_fx8010_pcm*, align 8
  store %struct.snd_emu10k1* %0, %struct.snd_emu10k1** %4, align 8
  store %struct.snd_emu10k1_fx8010_pcm_rec* %1, %struct.snd_emu10k1_fx8010_pcm_rec** %5, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.snd_emu10k1_fx8010_pcm_rec*, %struct.snd_emu10k1_fx8010_pcm_rec** %5, align 8
  %10 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm_rec, %struct.snd_emu10k1_fx8010_pcm_rec* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @EMU10K1_FX8010_PCM_COUNT, align 8
  %13 = icmp uge i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %116

17:                                               ; preds = %2
  %18 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %19 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load %struct.snd_emu10k1_fx8010_pcm*, %struct.snd_emu10k1_fx8010_pcm** %20, align 8
  %22 = load %struct.snd_emu10k1_fx8010_pcm_rec*, %struct.snd_emu10k1_fx8010_pcm_rec** %5, align 8
  %23 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm_rec, %struct.snd_emu10k1_fx8010_pcm_rec* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm, %struct.snd_emu10k1_fx8010_pcm* %21, i64 %24
  store %struct.snd_emu10k1_fx8010_pcm* %25, %struct.snd_emu10k1_fx8010_pcm** %8, align 8
  %26 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %27 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %31 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %30, i32 0, i32 1
  %32 = call i32 @spin_lock_irq(i32* %31)
  %33 = load %struct.snd_emu10k1_fx8010_pcm*, %struct.snd_emu10k1_fx8010_pcm** %8, align 8
  %34 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm, %struct.snd_emu10k1_fx8010_pcm* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.snd_emu10k1_fx8010_pcm_rec*, %struct.snd_emu10k1_fx8010_pcm_rec** %5, align 8
  %37 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm_rec, %struct.snd_emu10k1_fx8010_pcm_rec* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 8
  %38 = load %struct.snd_emu10k1_fx8010_pcm*, %struct.snd_emu10k1_fx8010_pcm** %8, align 8
  %39 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm, %struct.snd_emu10k1_fx8010_pcm* %38, i32 0, i32 9
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.snd_emu10k1_fx8010_pcm_rec*, %struct.snd_emu10k1_fx8010_pcm_rec** %5, align 8
  %42 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm_rec, %struct.snd_emu10k1_fx8010_pcm_rec* %41, i32 0, i32 13
  store i32 %40, i32* %42, align 4
  %43 = load %struct.snd_emu10k1_fx8010_pcm*, %struct.snd_emu10k1_fx8010_pcm** %8, align 8
  %44 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm, %struct.snd_emu10k1_fx8010_pcm* %43, i32 0, i32 8
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.snd_emu10k1_fx8010_pcm_rec*, %struct.snd_emu10k1_fx8010_pcm_rec** %5, align 8
  %47 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm_rec, %struct.snd_emu10k1_fx8010_pcm_rec* %46, i32 0, i32 12
  store i32 %45, i32* %47, align 8
  %48 = load %struct.snd_emu10k1_fx8010_pcm*, %struct.snd_emu10k1_fx8010_pcm** %8, align 8
  %49 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm, %struct.snd_emu10k1_fx8010_pcm* %48, i32 0, i32 7
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.snd_emu10k1_fx8010_pcm_rec*, %struct.snd_emu10k1_fx8010_pcm_rec** %5, align 8
  %52 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm_rec, %struct.snd_emu10k1_fx8010_pcm_rec* %51, i32 0, i32 11
  store i32 %50, i32* %52, align 4
  %53 = load %struct.snd_emu10k1_fx8010_pcm*, %struct.snd_emu10k1_fx8010_pcm** %8, align 8
  %54 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm, %struct.snd_emu10k1_fx8010_pcm* %53, i32 0, i32 6
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.snd_emu10k1_fx8010_pcm_rec*, %struct.snd_emu10k1_fx8010_pcm_rec** %5, align 8
  %57 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm_rec, %struct.snd_emu10k1_fx8010_pcm_rec* %56, i32 0, i32 10
  store i32 %55, i32* %57, align 8
  %58 = load %struct.snd_emu10k1_fx8010_pcm*, %struct.snd_emu10k1_fx8010_pcm** %8, align 8
  %59 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm, %struct.snd_emu10k1_fx8010_pcm* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.snd_emu10k1_fx8010_pcm_rec*, %struct.snd_emu10k1_fx8010_pcm_rec** %5, align 8
  %62 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm_rec, %struct.snd_emu10k1_fx8010_pcm_rec* %61, i32 0, i32 9
  store i32 %60, i32* %62, align 4
  %63 = load %struct.snd_emu10k1_fx8010_pcm*, %struct.snd_emu10k1_fx8010_pcm** %8, align 8
  %64 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm, %struct.snd_emu10k1_fx8010_pcm* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.snd_emu10k1_fx8010_pcm_rec*, %struct.snd_emu10k1_fx8010_pcm_rec** %5, align 8
  %67 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm_rec, %struct.snd_emu10k1_fx8010_pcm_rec* %66, i32 0, i32 8
  store i32 %65, i32* %67, align 8
  %68 = load %struct.snd_emu10k1_fx8010_pcm*, %struct.snd_emu10k1_fx8010_pcm** %8, align 8
  %69 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm, %struct.snd_emu10k1_fx8010_pcm* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.snd_emu10k1_fx8010_pcm_rec*, %struct.snd_emu10k1_fx8010_pcm_rec** %5, align 8
  %72 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm_rec, %struct.snd_emu10k1_fx8010_pcm_rec* %71, i32 0, i32 7
  store i32 %70, i32* %72, align 4
  %73 = load %struct.snd_emu10k1_fx8010_pcm*, %struct.snd_emu10k1_fx8010_pcm** %8, align 8
  %74 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm, %struct.snd_emu10k1_fx8010_pcm* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.snd_emu10k1_fx8010_pcm_rec*, %struct.snd_emu10k1_fx8010_pcm_rec** %5, align 8
  %77 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm_rec, %struct.snd_emu10k1_fx8010_pcm_rec* %76, i32 0, i32 6
  store i32 %75, i32* %77, align 8
  store i32 0, i32* %6, align 4
  br label %78

78:                                               ; preds = %98, %17
  %79 = load i32, i32* %6, align 4
  %80 = load %struct.snd_emu10k1_fx8010_pcm*, %struct.snd_emu10k1_fx8010_pcm** %8, align 8
  %81 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm, %struct.snd_emu10k1_fx8010_pcm* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp ult i32 %79, %82
  br i1 %83, label %84, label %101

84:                                               ; preds = %78
  %85 = load %struct.snd_emu10k1_fx8010_pcm*, %struct.snd_emu10k1_fx8010_pcm** %8, align 8
  %86 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm, %struct.snd_emu10k1_fx8010_pcm* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %6, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.snd_emu10k1_fx8010_pcm_rec*, %struct.snd_emu10k1_fx8010_pcm_rec** %5, align 8
  %93 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm_rec, %struct.snd_emu10k1_fx8010_pcm_rec* %92, i32 0, i32 5
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %6, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  store i32 %91, i32* %97, align 4
  br label %98

98:                                               ; preds = %84
  %99 = load i32, i32* %6, align 4
  %100 = add i32 %99, 1
  store i32 %100, i32* %6, align 4
  br label %78

101:                                              ; preds = %78
  %102 = load %struct.snd_emu10k1_fx8010_pcm_rec*, %struct.snd_emu10k1_fx8010_pcm_rec** %5, align 8
  %103 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm_rec, %struct.snd_emu10k1_fx8010_pcm_rec* %102, i32 0, i32 3
  store i64 0, i64* %103, align 8
  %104 = load %struct.snd_emu10k1_fx8010_pcm_rec*, %struct.snd_emu10k1_fx8010_pcm_rec** %5, align 8
  %105 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm_rec, %struct.snd_emu10k1_fx8010_pcm_rec* %104, i32 0, i32 4
  store i64 0, i64* %105, align 8
  %106 = load %struct.snd_emu10k1_fx8010_pcm_rec*, %struct.snd_emu10k1_fx8010_pcm_rec** %5, align 8
  %107 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm_rec, %struct.snd_emu10k1_fx8010_pcm_rec* %106, i32 0, i32 2
  store i64 0, i64* %107, align 8
  %108 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %109 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %108, i32 0, i32 1
  %110 = call i32 @spin_unlock_irq(i32* %109)
  %111 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %112 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = call i32 @mutex_unlock(i32* %113)
  %115 = load i32, i32* %7, align 4
  store i32 %115, i32* %3, align 4
  br label %116

116:                                              ; preds = %101, %14
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
