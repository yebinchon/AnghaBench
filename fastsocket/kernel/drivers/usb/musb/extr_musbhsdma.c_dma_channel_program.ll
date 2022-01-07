; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/musb/extr_musbhsdma.c_dma_channel_program.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/musb/extr_musbhsdma.c_dma_channel_program.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_channel = type { i64, i64, %struct.musb_dma_channel* }
%struct.musb_dma_channel = type { i8*, i8*, i32, i64, i32 }

@.str = private unnamed_addr constant [53 x i8] c"ep%d-%s pkt_sz %d, dma_addr 0x%x length %d, mode %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"Tx\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"Rx\00", align 1
@MUSB_DMA_STATUS_UNKNOWN = common dso_local global i64 0, align 8
@MUSB_DMA_STATUS_BUSY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_channel*, i8*, i32, i32, i8*)* @dma_channel_program to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dma_channel_program(%struct.dma_channel* %0, i8* %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.dma_channel*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.musb_dma_channel*, align 8
  store %struct.dma_channel* %0, %struct.dma_channel** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %12 = load %struct.dma_channel*, %struct.dma_channel** %6, align 8
  %13 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %12, i32 0, i32 2
  %14 = load %struct.musb_dma_channel*, %struct.musb_dma_channel** %13, align 8
  store %struct.musb_dma_channel* %14, %struct.musb_dma_channel** %11, align 8
  %15 = load %struct.musb_dma_channel*, %struct.musb_dma_channel** %11, align 8
  %16 = getelementptr inbounds %struct.musb_dma_channel, %struct.musb_dma_channel* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.musb_dma_channel*, %struct.musb_dma_channel** %11, align 8
  %19 = getelementptr inbounds %struct.musb_dma_channel, %struct.musb_dma_channel* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %24 = load i8*, i8** %7, align 8
  %25 = load i32, i32* %9, align 4
  %26 = load i8*, i8** %10, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @DBG(i32 2, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %17, i8* %23, i8* %24, i32 %25, i8* %26, i32 %27)
  %29 = load %struct.dma_channel*, %struct.dma_channel** %6, align 8
  %30 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @MUSB_DMA_STATUS_UNKNOWN, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %40, label %34

34:                                               ; preds = %5
  %35 = load %struct.dma_channel*, %struct.dma_channel** %6, align 8
  %36 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @MUSB_DMA_STATUS_BUSY, align 8
  %39 = icmp eq i64 %37, %38
  br label %40

40:                                               ; preds = %34, %5
  %41 = phi i1 [ true, %5 ], [ %39, %34 ]
  %42 = zext i1 %41 to i32
  %43 = call i32 @BUG_ON(i32 %42)
  %44 = load %struct.dma_channel*, %struct.dma_channel** %6, align 8
  %45 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %44, i32 0, i32 1
  store i64 0, i64* %45, align 8
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.musb_dma_channel*, %struct.musb_dma_channel** %11, align 8
  %48 = getelementptr inbounds %struct.musb_dma_channel, %struct.musb_dma_channel* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 8
  %49 = load i8*, i8** %10, align 8
  %50 = load %struct.musb_dma_channel*, %struct.musb_dma_channel** %11, align 8
  %51 = getelementptr inbounds %struct.musb_dma_channel, %struct.musb_dma_channel* %50, i32 0, i32 1
  store i8* %49, i8** %51, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = load %struct.musb_dma_channel*, %struct.musb_dma_channel** %11, align 8
  %54 = getelementptr inbounds %struct.musb_dma_channel, %struct.musb_dma_channel* %53, i32 0, i32 0
  store i8* %52, i8** %54, align 8
  %55 = load i64, i64* @MUSB_DMA_STATUS_BUSY, align 8
  %56 = load %struct.dma_channel*, %struct.dma_channel** %6, align 8
  %57 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  %58 = load i32, i32* %8, align 4
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %60, label %70

60:                                               ; preds = %40
  %61 = load i8*, i8** %10, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = icmp uge i8* %61, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %60
  %65 = load %struct.dma_channel*, %struct.dma_channel** %6, align 8
  %66 = load i8*, i8** %7, align 8
  %67 = load i32, i32* %9, align 4
  %68 = load i8*, i8** %10, align 8
  %69 = call i32 @configure_channel(%struct.dma_channel* %65, i8* %66, i32 1, i32 %67, i8* %68)
  br label %76

70:                                               ; preds = %60, %40
  %71 = load %struct.dma_channel*, %struct.dma_channel** %6, align 8
  %72 = load i8*, i8** %7, align 8
  %73 = load i32, i32* %9, align 4
  %74 = load i8*, i8** %10, align 8
  %75 = call i32 @configure_channel(%struct.dma_channel* %71, i8* %72, i32 0, i32 %73, i8* %74)
  br label %76

76:                                               ; preds = %70, %64
  ret i32 1
}

declare dso_local i32 @DBG(i32, i8*, i32, i8*, i8*, i32, i8*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @configure_channel(%struct.dma_channel*, i8*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
