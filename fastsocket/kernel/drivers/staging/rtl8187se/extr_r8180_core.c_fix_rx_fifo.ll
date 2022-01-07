; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_core.c_fix_rx_fifo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_core.c_fix_rx_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8180_priv = type { i32*, i32, i32, i32*, i32, %struct.buffer*, %struct.buffer* }
%struct.buffer = type { i32, %struct.buffer* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fix_rx_fifo(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.r8180_priv*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.buffer*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call i64 @ieee80211_priv(%struct.net_device* %7)
  %9 = inttoptr i64 %8 to %struct.r8180_priv*
  store %struct.r8180_priv* %9, %struct.r8180_priv** %3, align 8
  store i32 8, i32* %6, align 4
  %10 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %11 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %4, align 8
  %13 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %14 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %13, i32 0, i32 5
  %15 = load %struct.buffer*, %struct.buffer** %14, align 8
  store %struct.buffer* %15, %struct.buffer** %5, align 8
  br label %16

16:                                               ; preds = %49, %1
  %17 = load i32*, i32** %4, align 8
  %18 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %19 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %22 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = mul nsw i32 %23, %24
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %20, i64 %26
  %28 = icmp ult i32* %17, %27
  br i1 %28, label %29, label %57

29:                                               ; preds = %16
  %30 = load %struct.buffer*, %struct.buffer** %5, align 8
  %31 = getelementptr inbounds %struct.buffer, %struct.buffer* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32*, i32** %4, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 2
  store i32 %32, i32* %34, align 4
  %35 = load i32*, i32** %4, align 8
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, -4096
  %38 = load i32*, i32** %4, align 8
  store i32 %37, i32* %38, align 4
  %39 = load i32*, i32** %4, align 8
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %42 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %40, %43
  %45 = load i32*, i32** %4, align 8
  store i32 %44, i32* %45, align 4
  %46 = load i32*, i32** %4, align 8
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, -2147483648
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %29
  %50 = load i32, i32* %6, align 4
  %51 = load i32*, i32** %4, align 8
  %52 = sext i32 %50 to i64
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  store i32* %53, i32** %4, align 8
  %54 = load %struct.buffer*, %struct.buffer** %5, align 8
  %55 = getelementptr inbounds %struct.buffer, %struct.buffer* %54, i32 0, i32 1
  %56 = load %struct.buffer*, %struct.buffer** %55, align 8
  store %struct.buffer* %56, %struct.buffer** %5, align 8
  br label %16

57:                                               ; preds = %16
  %58 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %59 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %62 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %61, i32 0, i32 3
  store i32* %60, i32** %62, align 8
  %63 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %64 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %63, i32 0, i32 5
  %65 = load %struct.buffer*, %struct.buffer** %64, align 8
  %66 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %67 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %66, i32 0, i32 6
  store %struct.buffer* %65, %struct.buffer** %67, align 8
  %68 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %69 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %68, i32 0, i32 4
  store i32 1, i32* %69, align 8
  %70 = load %struct.net_device*, %struct.net_device** %2, align 8
  %71 = call i32 @set_nic_rxring(%struct.net_device* %70)
  ret void
}

declare dso_local i64 @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @set_nic_rxring(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
