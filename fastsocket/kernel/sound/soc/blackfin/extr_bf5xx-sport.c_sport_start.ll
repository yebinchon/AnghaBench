; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/blackfin/extr_bf5xx-sport.c_sport_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/blackfin/extr_bf5xx-sport.c_sport_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sport_device = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@RSPEN = common dso_local global i32 0, align 4
@TSPEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sport_device*)* @sport_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sport_start(%struct.sport_device* %0) #0 {
  %2 = alloca %struct.sport_device*, align 8
  store %struct.sport_device* %0, %struct.sport_device** %2, align 8
  %3 = load %struct.sport_device*, %struct.sport_device** %2, align 8
  %4 = getelementptr inbounds %struct.sport_device, %struct.sport_device* %3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @enable_dma(i32 %5)
  %7 = load %struct.sport_device*, %struct.sport_device** %2, align 8
  %8 = getelementptr inbounds %struct.sport_device, %struct.sport_device* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @enable_dma(i32 %9)
  %11 = load i32, i32* @RSPEN, align 4
  %12 = load %struct.sport_device*, %struct.sport_device** %2, align 8
  %13 = getelementptr inbounds %struct.sport_device, %struct.sport_device* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = or i32 %16, %11
  store i32 %17, i32* %15, align 4
  %18 = load i32, i32* @TSPEN, align 4
  %19 = load %struct.sport_device*, %struct.sport_device** %2, align 8
  %20 = getelementptr inbounds %struct.sport_device, %struct.sport_device* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %18
  store i32 %24, i32* %22, align 4
  %25 = call i32 (...) @SSYNC()
  ret i32 0
}

declare dso_local i32 @enable_dma(i32) #1

declare dso_local i32 @SSYNC(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
