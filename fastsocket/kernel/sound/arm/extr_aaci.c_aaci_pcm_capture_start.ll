; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/arm/extr_aaci.c_aaci_pcm_capture_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/arm/extr_aaci.c_aaci_pcm_capture_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aaci_runtime = type { i32, i64 }

@CR_EN = common dso_local global i32 0, align 4
@AACI_RXCR = common dso_local global i64 0, align 8
@AACI_IE = common dso_local global i64 0, align 8
@IE_ORIE = common dso_local global i32 0, align 4
@IE_RXIE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aaci_runtime*)* @aaci_pcm_capture_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aaci_pcm_capture_start(%struct.aaci_runtime* %0) #0 {
  %2 = alloca %struct.aaci_runtime*, align 8
  %3 = alloca i32, align 4
  store %struct.aaci_runtime* %0, %struct.aaci_runtime** %2, align 8
  %4 = load %struct.aaci_runtime*, %struct.aaci_runtime** %2, align 8
  %5 = call i32 @aaci_chan_wait_ready(%struct.aaci_runtime* %4)
  %6 = load i32, i32* @CR_EN, align 4
  %7 = load %struct.aaci_runtime*, %struct.aaci_runtime** %2, align 8
  %8 = getelementptr inbounds %struct.aaci_runtime, %struct.aaci_runtime* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = or i32 %9, %6
  store i32 %10, i32* %8, align 8
  %11 = load %struct.aaci_runtime*, %struct.aaci_runtime** %2, align 8
  %12 = getelementptr inbounds %struct.aaci_runtime, %struct.aaci_runtime* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.aaci_runtime*, %struct.aaci_runtime** %2, align 8
  %15 = getelementptr inbounds %struct.aaci_runtime, %struct.aaci_runtime* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @AACI_RXCR, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @writel(i32 %13, i64 %18)
  %20 = load %struct.aaci_runtime*, %struct.aaci_runtime** %2, align 8
  %21 = getelementptr inbounds %struct.aaci_runtime, %struct.aaci_runtime* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @AACI_IE, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @readl(i64 %24)
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* @IE_ORIE, align 4
  %27 = load i32, i32* @IE_RXIE, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* %3, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %3, align 4
  %32 = load %struct.aaci_runtime*, %struct.aaci_runtime** %2, align 8
  %33 = getelementptr inbounds %struct.aaci_runtime, %struct.aaci_runtime* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @AACI_IE, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @writel(i32 %31, i64 %36)
  ret void
}

declare dso_local i32 @aaci_chan_wait_ready(%struct.aaci_runtime*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
