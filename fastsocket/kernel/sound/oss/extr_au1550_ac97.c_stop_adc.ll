; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_au1550_ac97.c_stop_adc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_au1550_ac97.c_stop_adc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au1550_state = type { i32, %struct.dmabuf }
%struct.dmabuf = type { i32, i32 }

@PSC_AC97PCR_RP = common dso_local global i32 0, align 4
@PSC_AC97PCR = common dso_local global i32 0, align 4
@PSC_AC97STAT = common dso_local global i32 0, align 4
@PSC_AC97STAT_RB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.au1550_state*)* @stop_adc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stop_adc(%struct.au1550_state* %0) #0 {
  %2 = alloca %struct.au1550_state*, align 8
  %3 = alloca %struct.dmabuf*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.au1550_state* %0, %struct.au1550_state** %2, align 8
  %6 = load %struct.au1550_state*, %struct.au1550_state** %2, align 8
  %7 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %6, i32 0, i32 1
  store %struct.dmabuf* %7, %struct.dmabuf** %3, align 8
  %8 = load %struct.dmabuf*, %struct.dmabuf** %3, align 8
  %9 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %42

13:                                               ; preds = %1
  %14 = load %struct.au1550_state*, %struct.au1550_state** %2, align 8
  %15 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %14, i32 0, i32 0
  %16 = load i64, i64* %4, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load i32, i32* @PSC_AC97PCR_RP, align 4
  %19 = load i32, i32* @PSC_AC97PCR, align 4
  %20 = call i32 @au_writel(i32 %18, i32 %19)
  %21 = call i32 (...) @au_sync()
  br label %22

22:                                               ; preds = %26, %13
  %23 = load i32, i32* @PSC_AC97STAT, align 4
  %24 = call i32 @au_readl(i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = call i32 (...) @au_sync()
  br label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @PSC_AC97STAT_RB, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %22, label %31

31:                                               ; preds = %26
  %32 = load %struct.dmabuf*, %struct.dmabuf** %3, align 8
  %33 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @au1xxx_dbdma_reset(i32 %34)
  %36 = load %struct.dmabuf*, %struct.dmabuf** %3, align 8
  %37 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %36, i32 0, i32 0
  store i32 1, i32* %37, align 4
  %38 = load %struct.au1550_state*, %struct.au1550_state** %2, align 8
  %39 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %38, i32 0, i32 0
  %40 = load i64, i64* %4, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32* %39, i64 %40)
  br label %42

42:                                               ; preds = %31, %12
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @au_writel(i32, i32) #1

declare dso_local i32 @au_sync(...) #1

declare dso_local i32 @au_readl(i32) #1

declare dso_local i32 @au1xxx_dbdma_reset(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
