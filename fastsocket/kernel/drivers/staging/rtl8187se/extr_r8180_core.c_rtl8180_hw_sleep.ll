; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_core.c_rtl8180_hw_sleep.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_core.c_rtl8180_hw_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8180_priv = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@jiffies = common dso_local global i64 0, align 8
@MIN_SLEEP_TIME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"too short to sleep\0A\00", align 1
@MAX_SLEEP_TIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8180_hw_sleep(%struct.net_device* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.r8180_priv*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.r8180_priv* @ieee80211_priv(%struct.net_device* %11)
  store %struct.r8180_priv* %12, %struct.r8180_priv** %7, align 8
  %13 = load i64, i64* @jiffies, align 8
  store i64 %13, i64* %8, align 8
  %14 = load %struct.r8180_priv*, %struct.r8180_priv** %7, align 8
  %15 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %14, i32 0, i32 0
  %16 = load i64, i64* %9, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = call i64 @MSECS(i32 27)
  %19 = load i64, i64* %6, align 8
  %20 = sub nsw i64 %19, %18
  store i64 %20, i64* %6, align 8
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* %8, align 8
  %23 = icmp sge i64 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %3
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* %8, align 8
  %27 = sub nsw i64 %25, %26
  %28 = load i32, i32* @MIN_SLEEP_TIME, align 4
  %29 = call i64 @MSECS(i32 %28)
  %30 = icmp sle i64 %27, %29
  br i1 %30, label %42, label %31

31:                                               ; preds = %24, %3
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* %6, align 8
  %34 = icmp sgt i64 %32, %33
  br i1 %34, label %35, label %48

35:                                               ; preds = %31
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* %6, align 8
  %38 = sub nsw i64 %36, %37
  %39 = load i32, i32* @MIN_SLEEP_TIME, align 4
  %40 = call i64 @MSECS(i32 %39)
  %41 = icmp slt i64 %38, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %35, %24
  %43 = load %struct.r8180_priv*, %struct.r8180_priv** %7, align 8
  %44 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %43, i32 0, i32 0
  %45 = load i64, i64* %9, align 8
  %46 = call i32 @spin_unlock_irqrestore(i32* %44, i64 %45)
  %47 = call i32 @printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %123

48:                                               ; preds = %35, %31
  %49 = load i64, i64* %6, align 8
  %50 = load i64, i64* %8, align 8
  %51 = icmp sgt i64 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = load i64, i64* %6, align 8
  %54 = load i64, i64* %8, align 8
  %55 = sub nsw i64 %53, %54
  br label %60

56:                                               ; preds = %48
  %57 = load i64, i64* %8, align 8
  %58 = load i64, i64* %6, align 8
  %59 = sub nsw i64 %57, %58
  br label %60

60:                                               ; preds = %56, %52
  %61 = phi i64 [ %55, %52 ], [ %59, %56 ]
  store i64 %61, i64* %10, align 8
  %62 = load i64, i64* %10, align 8
  %63 = call i64 @jiffies_to_msecs(i64 %62)
  %64 = load %struct.r8180_priv*, %struct.r8180_priv** %7, align 8
  %65 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = sext i32 %66 to i64
  %68 = add nsw i64 %67, %63
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %65, align 8
  %70 = load %struct.r8180_priv*, %struct.r8180_priv** %7, align 8
  %71 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %70, i32 0, i32 1
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.r8180_priv*, %struct.r8180_priv** %7, align 8
  %76 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %75, i32 0, i32 1
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 2
  %79 = load i64, i64* %10, align 8
  %80 = call i32 @queue_delayed_work(i32 %74, i32* %78, i64 %79)
  %81 = load i64, i64* %6, align 8
  %82 = load i64, i64* %8, align 8
  %83 = icmp sgt i64 %81, %82
  br i1 %83, label %84, label %91

84:                                               ; preds = %60
  %85 = load i64, i64* %6, align 8
  %86 = load i64, i64* %8, align 8
  %87 = sub nsw i64 %85, %86
  %88 = load i32, i32* @MAX_SLEEP_TIME, align 4
  %89 = call i64 @MSECS(i32 %88)
  %90 = icmp sgt i64 %87, %89
  br i1 %90, label %102, label %91

91:                                               ; preds = %84, %60
  %92 = load i64, i64* %6, align 8
  %93 = load i64, i64* %8, align 8
  %94 = icmp slt i64 %92, %93
  br i1 %94, label %95, label %107

95:                                               ; preds = %91
  %96 = load i64, i64* %8, align 8
  %97 = load i64, i64* %6, align 8
  %98 = sub nsw i64 %96, %97
  %99 = load i32, i32* @MAX_SLEEP_TIME, align 4
  %100 = call i64 @MSECS(i32 %99)
  %101 = icmp sgt i64 %98, %100
  br i1 %101, label %102, label %107

102:                                              ; preds = %95, %84
  %103 = load %struct.r8180_priv*, %struct.r8180_priv** %7, align 8
  %104 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %103, i32 0, i32 0
  %105 = load i64, i64* %9, align 8
  %106 = call i32 @spin_unlock_irqrestore(i32* %104, i64 %105)
  br label %123

107:                                              ; preds = %95, %91
  %108 = load %struct.r8180_priv*, %struct.r8180_priv** %7, align 8
  %109 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %108, i32 0, i32 1
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.r8180_priv*, %struct.r8180_priv** %7, align 8
  %114 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %113, i32 0, i32 1
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  %117 = bitcast i32* %116 to i8*
  %118 = call i32 @queue_work(i32 %112, i8* %117)
  %119 = load %struct.r8180_priv*, %struct.r8180_priv** %7, align 8
  %120 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %119, i32 0, i32 0
  %121 = load i64, i64* %9, align 8
  %122 = call i32 @spin_unlock_irqrestore(i32* %120, i64 %121)
  br label %123

123:                                              ; preds = %107, %102, %42
  ret void
}

declare dso_local %struct.r8180_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @MSECS(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i64 @jiffies_to_msecs(i64) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i64) #1

declare dso_local i32 @queue_work(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
