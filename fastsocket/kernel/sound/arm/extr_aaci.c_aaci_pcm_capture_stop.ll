; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/arm/extr_aaci.c_aaci_pcm_capture_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/arm/extr_aaci.c_aaci_pcm_capture_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aaci_runtime = type { i32, i64 }

@AACI_IE = common dso_local global i64 0, align 8
@IE_ORIE = common dso_local global i32 0, align 4
@IE_RXIE = common dso_local global i32 0, align 4
@CR_EN = common dso_local global i32 0, align 4
@AACI_RXCR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aaci_runtime*)* @aaci_pcm_capture_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aaci_pcm_capture_stop(%struct.aaci_runtime* %0) #0 {
  %2 = alloca %struct.aaci_runtime*, align 8
  %3 = alloca i32, align 4
  store %struct.aaci_runtime* %0, %struct.aaci_runtime** %2, align 8
  %4 = load %struct.aaci_runtime*, %struct.aaci_runtime** %2, align 8
  %5 = call i32 @aaci_chan_wait_ready(%struct.aaci_runtime* %4)
  %6 = load %struct.aaci_runtime*, %struct.aaci_runtime** %2, align 8
  %7 = getelementptr inbounds %struct.aaci_runtime, %struct.aaci_runtime* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @AACI_IE, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @readl(i64 %10)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* @IE_ORIE, align 4
  %13 = load i32, i32* @IE_RXIE, align 4
  %14 = or i32 %12, %13
  %15 = xor i32 %14, -1
  %16 = load i32, i32* %3, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = load %struct.aaci_runtime*, %struct.aaci_runtime** %2, align 8
  %20 = getelementptr inbounds %struct.aaci_runtime, %struct.aaci_runtime* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @AACI_IE, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @writel(i32 %18, i64 %23)
  %25 = load i32, i32* @CR_EN, align 4
  %26 = xor i32 %25, -1
  %27 = load %struct.aaci_runtime*, %struct.aaci_runtime** %2, align 8
  %28 = getelementptr inbounds %struct.aaci_runtime, %struct.aaci_runtime* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = and i32 %29, %26
  store i32 %30, i32* %28, align 8
  %31 = load %struct.aaci_runtime*, %struct.aaci_runtime** %2, align 8
  %32 = getelementptr inbounds %struct.aaci_runtime, %struct.aaci_runtime* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.aaci_runtime*, %struct.aaci_runtime** %2, align 8
  %35 = getelementptr inbounds %struct.aaci_runtime, %struct.aaci_runtime* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @AACI_RXCR, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @writel(i32 %33, i64 %38)
  ret void
}

declare dso_local i32 @aaci_chan_wait_ready(%struct.aaci_runtime*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
