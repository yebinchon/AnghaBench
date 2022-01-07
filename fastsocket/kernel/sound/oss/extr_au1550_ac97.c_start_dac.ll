; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_au1550_ac97.c_start_dac.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_au1550_ac97.c_start_dac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au1550_state = type { %struct.dmabuf }
%struct.dmabuf = type { i64, i32, i32 }

@PSC_AC97PCR_TC = common dso_local global i32 0, align 4
@PSC_AC97PCR = common dso_local global i32 0, align 4
@PSC_AC97PCR_TS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.au1550_state*)* @start_dac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @start_dac(%struct.au1550_state* %0) #0 {
  %2 = alloca %struct.au1550_state*, align 8
  %3 = alloca %struct.dmabuf*, align 8
  store %struct.au1550_state* %0, %struct.au1550_state** %2, align 8
  %4 = load %struct.au1550_state*, %struct.au1550_state** %2, align 8
  %5 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %4, i32 0, i32 0
  store %struct.dmabuf* %5, %struct.dmabuf** %3, align 8
  %6 = load %struct.dmabuf*, %struct.dmabuf** %3, align 8
  %7 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %30

11:                                               ; preds = %1
  %12 = load %struct.dmabuf*, %struct.dmabuf** %3, align 8
  %13 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @set_xmit_slots(i32 %14)
  %16 = load i32, i32* @PSC_AC97PCR_TC, align 4
  %17 = load i32, i32* @PSC_AC97PCR, align 4
  %18 = call i32 @au_writel(i32 %16, i32 %17)
  %19 = call i32 (...) @au_sync()
  %20 = load i32, i32* @PSC_AC97PCR_TS, align 4
  %21 = load i32, i32* @PSC_AC97PCR, align 4
  %22 = call i32 @au_writel(i32 %20, i32 %21)
  %23 = call i32 (...) @au_sync()
  %24 = load %struct.dmabuf*, %struct.dmabuf** %3, align 8
  %25 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @au1xxx_dbdma_start(i32 %26)
  %28 = load %struct.dmabuf*, %struct.dmabuf** %3, align 8
  %29 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %28, i32 0, i32 0
  store i64 0, i64* %29, align 8
  br label %30

30:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32 @set_xmit_slots(i32) #1

declare dso_local i32 @au_writel(i32, i32) #1

declare dso_local i32 @au_sync(...) #1

declare dso_local i32 @au1xxx_dbdma_start(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
