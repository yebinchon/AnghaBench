; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192U_core.c_TxCheckStuck.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192U_core.c_TxCheckStuck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32*, i32* }

@BEACON_QUEUE = common dso_local global i64 0, align 8
@TXCMD_QUEUE = common dso_local global i64 0, align 8
@COMP_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"TxCheckStuck(): Fw indicates no Tx condition! \0A\00", align 1
@RESET_TYPE_SILENT = common dso_local global i32 0, align 4
@RESET_TYPE_NORESET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TxCheckStuck(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.r8192_priv*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %7)
  store %struct.r8192_priv* %8, %struct.r8192_priv** %4, align 8
  store i32 0, i32* %6, align 4
  store i64 0, i64* %5, align 8
  br label %9

9:                                                ; preds = %40, %1
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @BEACON_QUEUE, align 8
  %12 = icmp ule i64 %10, %11
  br i1 %12, label %13, label %43

13:                                               ; preds = %9
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* @TXCMD_QUEUE, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  br label %40

18:                                               ; preds = %13
  %19 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %20 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = load i64, i64* %5, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = call i64 @skb_queue_len(i32* %25)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %18
  %29 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %30 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i64, i64* %5, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = call i64 @skb_queue_len(i32* %35)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %28
  br label %40

39:                                               ; preds = %28, %18
  store i32 1, i32* %6, align 4
  br label %40

40:                                               ; preds = %39, %38, %17
  %41 = load i64, i64* %5, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %5, align 8
  br label %9

43:                                               ; preds = %9
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %43
  %47 = load %struct.net_device*, %struct.net_device** %3, align 8
  %48 = call i64 @HalTxCheckStuck819xUsb(%struct.net_device* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = load i32, i32* @COMP_RESET, align 4
  %52 = call i32 @RT_TRACE(i32 %51, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %53 = load i32, i32* @RESET_TYPE_SILENT, align 4
  store i32 %53, i32* %2, align 4
  br label %57

54:                                               ; preds = %46
  br label %55

55:                                               ; preds = %54, %43
  %56 = load i32, i32* @RESET_TYPE_NORESET, align 4
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %55, %50
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i64 @skb_queue_len(i32*) #1

declare dso_local i64 @HalTxCheckStuck819xUsb(%struct.net_device*) #1

declare dso_local i32 @RT_TRACE(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
