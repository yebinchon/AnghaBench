; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/carlfw/src/extr_wlan.c_wlan_check_hang.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/carlfw/src/extr_wlan.c_wlan_check_hang.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64*, i64*, i32, i32* }
%struct.dma_desc = type { i32 }

@AR9170_TXQ_SPECIAL = common dso_local global i32 0, align 4
@AR9170_TXQ0 = common dso_local global i32 0, align 4
@fw = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@CARL9170FW_TX_MAC_RESET = common dso_local global i64 0, align 8
@CARL9170FW_TX_MAC_BUMP = common dso_local global i64 0, align 8
@CARL9170FW_TX_MAC_DEBUG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @wlan_check_hang to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlan_check_hang() #0 {
  %1 = alloca %struct.dma_desc*, align 8
  %2 = alloca i32, align 4
  %3 = load i32, i32* @AR9170_TXQ_SPECIAL, align 4
  store i32 %3, i32* %2, align 4
  br label %4

4:                                                ; preds = %64, %0
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @AR9170_TXQ0, align 4
  %7 = icmp sge i32 %5, %6
  br i1 %7, label %8, label %67

8:                                                ; preds = %4
  %9 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @fw, i32 0, i32 0, i32 3), align 8
  %10 = load i32, i32* %2, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %9, i64 %11
  %13 = call i64 @queue_empty(i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %8
  br label %64

16:                                               ; preds = %8
  %17 = load i32, i32* %2, align 4
  %18 = call i64 @get_wlan_txq_addr(i32 %17)
  %19 = inttoptr i64 %18 to %struct.dma_desc*
  store %struct.dma_desc* %19, %struct.dma_desc** %1, align 8
  %20 = load %struct.dma_desc*, %struct.dma_desc** %1, align 8
  %21 = call i64 @DESC_PAYLOAD(%struct.dma_desc* %20)
  %22 = load i64*, i64** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @fw, i32 0, i32 0, i32 0), align 8
  %23 = load i32, i32* %2, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %21, %26
  %28 = zext i1 %27 to i32
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %52

31:                                               ; preds = %16
  %32 = load i64*, i64** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @fw, i32 0, i32 0, i32 1), align 8
  %33 = load i32, i32* %2, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, 1
  store i64 %37, i64* %35, align 8
  %38 = load i64*, i64** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @fw, i32 0, i32 0, i32 1), align 8
  %39 = load i32, i32* %2, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i64, i64* %38, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @CARL9170FW_TX_MAC_RESET, align 8
  %44 = icmp sge i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i64 @unlikely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %31
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @fw, i32 0, i32 0, i32 2), align 8
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @fw, i32 0, i32 0, i32 2), align 8
  br label %51

51:                                               ; preds = %48, %31
  br label %63

52:                                               ; preds = %16
  %53 = load %struct.dma_desc*, %struct.dma_desc** %1, align 8
  %54 = call i64 @DESC_PAYLOAD(%struct.dma_desc* %53)
  %55 = load i64*, i64** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @fw, i32 0, i32 0, i32 0), align 8
  %56 = load i32, i32* %2, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i64, i64* %55, i64 %57
  store i64 %54, i64* %58, align 8
  %59 = load i64*, i64** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @fw, i32 0, i32 0, i32 1), align 8
  %60 = load i32, i32* %2, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %59, i64 %61
  store i64 0, i64* %62, align 8
  br label %63

63:                                               ; preds = %52, %51
  br label %64

64:                                               ; preds = %63, %15
  %65 = load i32, i32* %2, align 4
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* %2, align 4
  br label %4

67:                                               ; preds = %4
  ret void
}

declare dso_local i64 @queue_empty(i32*) #1

declare dso_local i64 @get_wlan_txq_addr(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @DESC_PAYLOAD(%struct.dma_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
