; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/blackfin/extr_bf5xx-sport.c_sport_dump_stat.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/blackfin/extr_bf5xx-sport.c_sport_dump_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sport_device = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [57 x i8] c"sts: 0x%04x\0Arx dma %d sts: 0x%04x tx dma %d sts: 0x%04x\0A\00", align 1
@.str.1 = private unnamed_addr constant [112 x i8] c"curr_rx_desc:0x%p, curr_tx_desc:0x%p\0Adma_rx_desc:0x%p, dma_tx_desc:0x%p\0Adummy_rx_desc:0x%p, dummy_tx_desc:0x%p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sport_dump_stat(%struct.sport_device* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.sport_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.sport_device* %0, %struct.sport_device** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = load i64, i64* %6, align 8
  %10 = load %struct.sport_device*, %struct.sport_device** %4, align 8
  %11 = getelementptr inbounds %struct.sport_device, %struct.sport_device* %10, i32 0, i32 8
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.sport_device*, %struct.sport_device** %4, align 8
  %16 = getelementptr inbounds %struct.sport_device, %struct.sport_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.sport_device*, %struct.sport_device** %4, align 8
  %19 = getelementptr inbounds %struct.sport_device, %struct.sport_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @get_dma_curr_irqstat(i32 %20)
  %22 = load %struct.sport_device*, %struct.sport_device** %4, align 8
  %23 = getelementptr inbounds %struct.sport_device, %struct.sport_device* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.sport_device*, %struct.sport_device** %4, align 8
  %26 = getelementptr inbounds %struct.sport_device, %struct.sport_device* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @get_dma_curr_irqstat(i32 %27)
  %29 = call i32 (i8*, i64, i8*, i32, i32, i32, i32, i32, ...) @snprintf(i8* %8, i64 %9, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %17, i32 %21, i32 %24, i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i8*, i8** %5, align 8
  %32 = sext i32 %30 to i64
  %33 = getelementptr inbounds i8, i8* %31, i64 %32
  store i8* %33, i8** %5, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = load i64, i64* %6, align 8
  %37 = sub i64 %36, %35
  store i64 %37, i64* %6, align 8
  %38 = load i8*, i8** %5, align 8
  %39 = load i64, i64* %6, align 8
  %40 = load %struct.sport_device*, %struct.sport_device** %4, align 8
  %41 = getelementptr inbounds %struct.sport_device, %struct.sport_device* %40, i32 0, i32 7
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.sport_device*, %struct.sport_device** %4, align 8
  %44 = getelementptr inbounds %struct.sport_device, %struct.sport_device* %43, i32 0, i32 6
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.sport_device*, %struct.sport_device** %4, align 8
  %47 = getelementptr inbounds %struct.sport_device, %struct.sport_device* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.sport_device*, %struct.sport_device** %4, align 8
  %50 = getelementptr inbounds %struct.sport_device, %struct.sport_device* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.sport_device*, %struct.sport_device** %4, align 8
  %53 = getelementptr inbounds %struct.sport_device, %struct.sport_device* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.sport_device*, %struct.sport_device** %4, align 8
  %56 = getelementptr inbounds %struct.sport_device, %struct.sport_device* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i32 (i8*, i64, i8*, i32, i32, i32, i32, i32, ...) @snprintf(i8* %38, i64 %39, i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.1, i64 0, i64 0), i32 %42, i32 %45, i32 %48, i32 %51, i32 %54, i32 %57)
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, %58
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  ret i32 %61
}

declare dso_local i32 @snprintf(i8*, i64, i8*, i32, i32, i32, i32, i32, ...) #1

declare dso_local i32 @get_dma_curr_irqstat(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
