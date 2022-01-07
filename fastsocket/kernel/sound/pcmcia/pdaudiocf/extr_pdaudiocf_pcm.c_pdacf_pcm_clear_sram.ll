; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pcmcia/pdaudiocf/extr_pdaudiocf_pcm.c_pdacf_pcm_clear_sram.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pcmcia/pdaudiocf/extr_pdaudiocf_pcm.c_pdacf_pcm_clear_sram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pdacf = type { i64 }

@PDAUDIOCF_REG_RDP = common dso_local global i64 0, align 8
@PDAUDIOCF_REG_WDP = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@PDAUDIOCF_REG_MD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pdacf*)* @pdacf_pcm_clear_sram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pdacf_pcm_clear_sram(%struct.snd_pdacf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pdacf*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_pdacf* %0, %struct.snd_pdacf** %3, align 8
  store i32 65536, i32* %4, align 4
  br label %5

5:                                                ; preds = %26, %1
  %6 = load %struct.snd_pdacf*, %struct.snd_pdacf** %3, align 8
  %7 = getelementptr inbounds %struct.snd_pdacf, %struct.snd_pdacf* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @PDAUDIOCF_REG_RDP, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i64 @inw(i64 %10)
  %12 = load %struct.snd_pdacf*, %struct.snd_pdacf** %3, align 8
  %13 = getelementptr inbounds %struct.snd_pdacf, %struct.snd_pdacf* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @PDAUDIOCF_REG_WDP, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i64 @inw(i64 %16)
  %18 = icmp ne i64 %11, %17
  br i1 %18, label %19, label %33

19:                                               ; preds = %5
  %20 = load i32, i32* %4, align 4
  %21 = add nsw i32 %20, -1
  store i32 %21, i32* %4, align 4
  %22 = icmp slt i32 %20, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i32, i32* @EIO, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %34

26:                                               ; preds = %19
  %27 = load %struct.snd_pdacf*, %struct.snd_pdacf** %3, align 8
  %28 = getelementptr inbounds %struct.snd_pdacf, %struct.snd_pdacf* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @PDAUDIOCF_REG_MD, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i64 @inw(i64 %31)
  br label %5

33:                                               ; preds = %5
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %33, %23
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i64 @inw(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
