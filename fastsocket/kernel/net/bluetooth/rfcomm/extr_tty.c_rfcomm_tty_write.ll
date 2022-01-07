; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/rfcomm/extr_tty.c_rfcomm_tty_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/rfcomm/extr_tty.c_rfcomm_tty_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i64 }
%struct.rfcomm_dev = type { %struct.rfcomm_dlc* }
%struct.rfcomm_dlc = type { i32 }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"tty %p count %d\00", align 1
@uint = common dso_local global i32 0, align 4
@RFCOMM_SKB_RESERVE = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@RFCOMM_SKB_HEAD_RESERVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, i8*, i32)* @rfcomm_tty_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rfcomm_tty_write(%struct.tty_struct* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rfcomm_dev*, align 8
  %8 = alloca %struct.rfcomm_dlc*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %14 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.rfcomm_dev*
  store %struct.rfcomm_dev* %16, %struct.rfcomm_dev** %7, align 8
  %17 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %7, align 8
  %18 = getelementptr inbounds %struct.rfcomm_dev, %struct.rfcomm_dev* %17, i32 0, i32 0
  %19 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %18, align 8
  store %struct.rfcomm_dlc* %19, %struct.rfcomm_dlc** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %20 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @BT_DBG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), %struct.tty_struct* %20, i32 %21)
  br label %23

23:                                               ; preds = %63, %3
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %70

26:                                               ; preds = %23
  %27 = load i32, i32* @uint, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %8, align 8
  %30 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @min_t(i32 %27, i32 %28, i32 %31)
  store i32 %32, i32* %12, align 4
  %33 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %7, align 8
  %34 = load i32, i32* %12, align 4
  %35 = sext i32 %34 to i64
  %36 = load i64, i64* @RFCOMM_SKB_RESERVE, align 8
  %37 = add nsw i64 %35, %36
  %38 = load i32, i32* @GFP_ATOMIC, align 4
  %39 = call %struct.sk_buff* @rfcomm_wmalloc(%struct.rfcomm_dev* %33, i64 %37, i32 %38)
  store %struct.sk_buff* %39, %struct.sk_buff** %9, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %41 = icmp ne %struct.sk_buff* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %26
  br label %70

43:                                               ; preds = %26
  %44 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %45 = load i32, i32* @RFCOMM_SKB_HEAD_RESERVE, align 4
  %46 = call i32 @skb_reserve(%struct.sk_buff* %44, i32 %45)
  %47 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %48 = load i32, i32* %12, align 4
  %49 = call i32 @skb_put(%struct.sk_buff* %47, i32 %48)
  %50 = load i8*, i8** %5, align 8
  %51 = load i32, i32* %11, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  %54 = load i32, i32* %12, align 4
  %55 = call i32 @memcpy(i32 %49, i8* %53, i32 %54)
  %56 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %8, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %58 = call i32 @rfcomm_dlc_send(%struct.rfcomm_dlc* %56, %struct.sk_buff* %57)
  store i32 %58, i32* %10, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %43
  %61 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %62 = call i32 @kfree_skb(%struct.sk_buff* %61)
  br label %70

63:                                               ; preds = %43
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* %11, align 4
  %66 = add nsw i32 %65, %64
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* %6, align 4
  %69 = sub nsw i32 %68, %67
  store i32 %69, i32* %6, align 4
  br label %23

70:                                               ; preds = %60, %42, %23
  %71 = load i32, i32* %11, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = load i32, i32* %11, align 4
  br label %77

75:                                               ; preds = %70
  %76 = load i32, i32* %10, align 4
  br label %77

77:                                               ; preds = %75, %73
  %78 = phi i32 [ %74, %73 ], [ %76, %75 ]
  ret i32 %78
}

declare dso_local i32 @BT_DBG(i8*, %struct.tty_struct*, i32) #1

declare dso_local i32 @min_t(i32, i32, i32) #1

declare dso_local %struct.sk_buff* @rfcomm_wmalloc(%struct.rfcomm_dev*, i64, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @rfcomm_dlc_send(%struct.rfcomm_dlc*, %struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
