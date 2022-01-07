; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_emufx.c_snd_emu10k1_ipcm_poke.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_emufx.c_snd_emu10k1_ipcm_poke.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emu10k1 = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, %struct.snd_emu10k1_fx8010_pcm* }
%struct.snd_emu10k1_fx8010_pcm = type { i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.snd_emu10k1_fx8010_pcm_rec = type { i64, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32 }

@EMU10K1_FX8010_PCM_COUNT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_emu10k1*, %struct.snd_emu10k1_fx8010_pcm_rec*)* @snd_emu10k1_ipcm_poke to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_emu10k1_ipcm_poke(%struct.snd_emu10k1* %0, %struct.snd_emu10k1_fx8010_pcm_rec* %1) #0 {
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
  br label %148

17:                                               ; preds = %2
  %18 = load %struct.snd_emu10k1_fx8010_pcm_rec*, %struct.snd_emu10k1_fx8010_pcm_rec** %5, align 8
  %19 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm_rec, %struct.snd_emu10k1_fx8010_pcm_rec* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = icmp sgt i32 %20, 32
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %148

25:                                               ; preds = %17
  %26 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %27 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load %struct.snd_emu10k1_fx8010_pcm*, %struct.snd_emu10k1_fx8010_pcm** %28, align 8
  %30 = load %struct.snd_emu10k1_fx8010_pcm_rec*, %struct.snd_emu10k1_fx8010_pcm_rec** %5, align 8
  %31 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm_rec, %struct.snd_emu10k1_fx8010_pcm_rec* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm, %struct.snd_emu10k1_fx8010_pcm* %29, i64 %32
  store %struct.snd_emu10k1_fx8010_pcm* %33, %struct.snd_emu10k1_fx8010_pcm** %8, align 8
  %34 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %35 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = call i32 @mutex_lock(i32* %36)
  %38 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %39 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %38, i32 0, i32 1
  %40 = call i32 @spin_lock_irq(i32* %39)
  %41 = load %struct.snd_emu10k1_fx8010_pcm*, %struct.snd_emu10k1_fx8010_pcm** %8, align 8
  %42 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm, %struct.snd_emu10k1_fx8010_pcm* %41, i32 0, i32 11
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %25
  %46 = load i32, i32* @EBUSY, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %7, align 4
  br label %139

48:                                               ; preds = %25
  %49 = load %struct.snd_emu10k1_fx8010_pcm_rec*, %struct.snd_emu10k1_fx8010_pcm_rec** %5, align 8
  %50 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm_rec, %struct.snd_emu10k1_fx8010_pcm_rec* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load %struct.snd_emu10k1_fx8010_pcm*, %struct.snd_emu10k1_fx8010_pcm** %8, align 8
  %55 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm, %struct.snd_emu10k1_fx8010_pcm* %54, i32 0, i32 0
  store i32 0, i32* %55, align 8
  br label %138

56:                                               ; preds = %48
  %57 = load %struct.snd_emu10k1_fx8010_pcm_rec*, %struct.snd_emu10k1_fx8010_pcm_rec** %5, align 8
  %58 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm_rec, %struct.snd_emu10k1_fx8010_pcm_rec* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 2
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %7, align 4
  br label %139

64:                                               ; preds = %56
  %65 = load %struct.snd_emu10k1_fx8010_pcm*, %struct.snd_emu10k1_fx8010_pcm** %8, align 8
  %66 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm, %struct.snd_emu10k1_fx8010_pcm* %65, i32 0, i32 0
  store i32 1, i32* %66, align 8
  %67 = load %struct.snd_emu10k1_fx8010_pcm*, %struct.snd_emu10k1_fx8010_pcm** %8, align 8
  %68 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm, %struct.snd_emu10k1_fx8010_pcm* %67, i32 0, i32 11
  store i64 0, i64* %68, align 8
  %69 = load %struct.snd_emu10k1_fx8010_pcm_rec*, %struct.snd_emu10k1_fx8010_pcm_rec** %5, align 8
  %70 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm_rec, %struct.snd_emu10k1_fx8010_pcm_rec* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.snd_emu10k1_fx8010_pcm*, %struct.snd_emu10k1_fx8010_pcm** %8, align 8
  %73 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm, %struct.snd_emu10k1_fx8010_pcm* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  %74 = load %struct.snd_emu10k1_fx8010_pcm_rec*, %struct.snd_emu10k1_fx8010_pcm_rec** %5, align 8
  %75 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm_rec, %struct.snd_emu10k1_fx8010_pcm_rec* %74, i32 0, i32 10
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.snd_emu10k1_fx8010_pcm*, %struct.snd_emu10k1_fx8010_pcm** %8, align 8
  %78 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm, %struct.snd_emu10k1_fx8010_pcm* %77, i32 0, i32 10
  store i32 %76, i32* %78, align 4
  %79 = load %struct.snd_emu10k1_fx8010_pcm_rec*, %struct.snd_emu10k1_fx8010_pcm_rec** %5, align 8
  %80 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm_rec, %struct.snd_emu10k1_fx8010_pcm_rec* %79, i32 0, i32 9
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.snd_emu10k1_fx8010_pcm*, %struct.snd_emu10k1_fx8010_pcm** %8, align 8
  %83 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm, %struct.snd_emu10k1_fx8010_pcm* %82, i32 0, i32 9
  store i32 %81, i32* %83, align 8
  %84 = load %struct.snd_emu10k1_fx8010_pcm_rec*, %struct.snd_emu10k1_fx8010_pcm_rec** %5, align 8
  %85 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm_rec, %struct.snd_emu10k1_fx8010_pcm_rec* %84, i32 0, i32 8
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.snd_emu10k1_fx8010_pcm*, %struct.snd_emu10k1_fx8010_pcm** %8, align 8
  %88 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm, %struct.snd_emu10k1_fx8010_pcm* %87, i32 0, i32 8
  store i32 %86, i32* %88, align 4
  %89 = load %struct.snd_emu10k1_fx8010_pcm_rec*, %struct.snd_emu10k1_fx8010_pcm_rec** %5, align 8
  %90 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm_rec, %struct.snd_emu10k1_fx8010_pcm_rec* %89, i32 0, i32 7
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.snd_emu10k1_fx8010_pcm*, %struct.snd_emu10k1_fx8010_pcm** %8, align 8
  %93 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm, %struct.snd_emu10k1_fx8010_pcm* %92, i32 0, i32 7
  store i32 %91, i32* %93, align 8
  %94 = load %struct.snd_emu10k1_fx8010_pcm_rec*, %struct.snd_emu10k1_fx8010_pcm_rec** %5, align 8
  %95 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm_rec, %struct.snd_emu10k1_fx8010_pcm_rec* %94, i32 0, i32 6
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.snd_emu10k1_fx8010_pcm*, %struct.snd_emu10k1_fx8010_pcm** %8, align 8
  %98 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm, %struct.snd_emu10k1_fx8010_pcm* %97, i32 0, i32 6
  store i32 %96, i32* %98, align 4
  %99 = load %struct.snd_emu10k1_fx8010_pcm_rec*, %struct.snd_emu10k1_fx8010_pcm_rec** %5, align 8
  %100 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm_rec, %struct.snd_emu10k1_fx8010_pcm_rec* %99, i32 0, i32 5
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.snd_emu10k1_fx8010_pcm*, %struct.snd_emu10k1_fx8010_pcm** %8, align 8
  %103 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm, %struct.snd_emu10k1_fx8010_pcm* %102, i32 0, i32 5
  store i32 %101, i32* %103, align 8
  %104 = load %struct.snd_emu10k1_fx8010_pcm_rec*, %struct.snd_emu10k1_fx8010_pcm_rec** %5, align 8
  %105 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm_rec, %struct.snd_emu10k1_fx8010_pcm_rec* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.snd_emu10k1_fx8010_pcm*, %struct.snd_emu10k1_fx8010_pcm** %8, align 8
  %108 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm, %struct.snd_emu10k1_fx8010_pcm* %107, i32 0, i32 4
  store i32 %106, i32* %108, align 4
  %109 = load %struct.snd_emu10k1_fx8010_pcm_rec*, %struct.snd_emu10k1_fx8010_pcm_rec** %5, align 8
  %110 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm_rec, %struct.snd_emu10k1_fx8010_pcm_rec* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.snd_emu10k1_fx8010_pcm*, %struct.snd_emu10k1_fx8010_pcm** %8, align 8
  %113 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm, %struct.snd_emu10k1_fx8010_pcm* %112, i32 0, i32 3
  store i32 %111, i32* %113, align 8
  store i32 0, i32* %6, align 4
  br label %114

114:                                              ; preds = %134, %64
  %115 = load i32, i32* %6, align 4
  %116 = load %struct.snd_emu10k1_fx8010_pcm*, %struct.snd_emu10k1_fx8010_pcm** %8, align 8
  %117 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm, %struct.snd_emu10k1_fx8010_pcm* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = icmp ult i32 %115, %118
  br i1 %119, label %120, label %137

120:                                              ; preds = %114
  %121 = load %struct.snd_emu10k1_fx8010_pcm_rec*, %struct.snd_emu10k1_fx8010_pcm_rec** %5, align 8
  %122 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm_rec, %struct.snd_emu10k1_fx8010_pcm_rec* %121, i32 0, i32 2
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* %6, align 4
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.snd_emu10k1_fx8010_pcm*, %struct.snd_emu10k1_fx8010_pcm** %8, align 8
  %129 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm, %struct.snd_emu10k1_fx8010_pcm* %128, i32 0, i32 2
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %6, align 4
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  store i32 %127, i32* %133, align 4
  br label %134

134:                                              ; preds = %120
  %135 = load i32, i32* %6, align 4
  %136 = add i32 %135, 1
  store i32 %136, i32* %6, align 4
  br label %114

137:                                              ; preds = %114
  br label %138

138:                                              ; preds = %137, %53
  br label %139

139:                                              ; preds = %138, %61, %45
  %140 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %141 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %140, i32 0, i32 1
  %142 = call i32 @spin_unlock_irq(i32* %141)
  %143 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %144 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 0
  %146 = call i32 @mutex_unlock(i32* %145)
  %147 = load i32, i32* %7, align 4
  store i32 %147, i32* %3, align 4
  br label %148

148:                                              ; preds = %139, %22, %14
  %149 = load i32, i32* %3, align 4
  ret i32 %149
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
