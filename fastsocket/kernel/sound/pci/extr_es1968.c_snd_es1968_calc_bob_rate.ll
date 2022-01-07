; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_es1968.c_snd_es1968_calc_bob_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_es1968.c_snd_es1968_calc_bob_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.es1968 = type { i32 }
%struct.esschan = type { i32, i32 }
%struct.snd_pcm_runtime = type { i32 }

@ESS_FMT_STEREO = common dso_local global i32 0, align 4
@ESS_FMT_16BIT = common dso_local global i32 0, align 4
@ESM_BOB_FREQ = common dso_local global i32 0, align 4
@ESM_BOB_FREQ_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.es1968*, %struct.esschan*, %struct.snd_pcm_runtime*)* @snd_es1968_calc_bob_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_es1968_calc_bob_rate(%struct.es1968* %0, %struct.esschan* %1, %struct.snd_pcm_runtime* %2) #0 {
  %4 = alloca %struct.es1968*, align 8
  %5 = alloca %struct.esschan*, align 8
  %6 = alloca %struct.snd_pcm_runtime*, align 8
  %7 = alloca i32, align 4
  store %struct.es1968* %0, %struct.es1968** %4, align 8
  store %struct.esschan* %1, %struct.esschan** %5, align 8
  store %struct.snd_pcm_runtime* %2, %struct.snd_pcm_runtime** %6, align 8
  %8 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = mul nsw i32 %10, 4
  store i32 %11, i32* %7, align 4
  %12 = load %struct.esschan*, %struct.esschan** %5, align 8
  %13 = getelementptr inbounds %struct.esschan, %struct.esschan* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @ESS_FMT_STEREO, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* %7, align 4
  %20 = shl i32 %19, 1
  store i32 %20, i32* %7, align 4
  br label %21

21:                                               ; preds = %18, %3
  %22 = load %struct.esschan*, %struct.esschan** %5, align 8
  %23 = getelementptr inbounds %struct.esschan, %struct.esschan* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @ESS_FMT_16BIT, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load i32, i32* %7, align 4
  %30 = shl i32 %29, 1
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %28, %21
  %32 = load %struct.esschan*, %struct.esschan** %5, align 8
  %33 = getelementptr inbounds %struct.esschan, %struct.esschan* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %7, align 4
  %36 = sdiv i32 %35, %34
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @ESM_BOB_FREQ, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %31
  %41 = load i32, i32* @ESM_BOB_FREQ, align 4
  store i32 %41, i32* %7, align 4
  br label %49

42:                                               ; preds = %31
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @ESM_BOB_FREQ_MAX, align 4
  %45 = icmp sgt i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i32, i32* @ESM_BOB_FREQ_MAX, align 4
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %46, %42
  br label %49

49:                                               ; preds = %48, %40
  %50 = load i32, i32* %7, align 4
  ret i32 %50
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
