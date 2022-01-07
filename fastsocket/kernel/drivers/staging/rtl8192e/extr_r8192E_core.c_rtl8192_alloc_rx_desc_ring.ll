; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r8192E_core.c_rtl8192_alloc_rx_desc_ring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r8192E_core.c_rtl8192_alloc_rx_desc_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i32, i32, i32, %struct.sk_buff**, %struct.TYPE_4__*, i64, i32 }
%struct.sk_buff = type { i32, i64 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@COMP_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Cannot allocate RX ring\0A\00", align 1
@ENOMEM = common dso_local global i16 0, align 2
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.net_device*)* @rtl8192_alloc_rx_desc_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i16 @rtl8192_alloc_rx_desc_ring(%struct.net_device* %0) #0 {
  %2 = alloca i16, align 2
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.r8192_priv*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %9)
  store %struct.r8192_priv* %10, %struct.r8192_priv** %4, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %5, align 8
  %11 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %12 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %15 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sext i32 %16 to i64
  %18 = mul i64 16, %17
  %19 = trunc i64 %18 to i32
  %20 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %21 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %20, i32 0, i32 6
  %22 = call %struct.TYPE_4__* @pci_alloc_consistent(i32 %13, i32 %19, i32* %21)
  %23 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %24 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %23, i32 0, i32 4
  store %struct.TYPE_4__* %22, %struct.TYPE_4__** %24, align 8
  %25 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %26 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %25, i32 0, i32 4
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = icmp ne %struct.TYPE_4__* %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %1
  %30 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %31 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %30, i32 0, i32 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = ptrtoint %struct.TYPE_4__* %32 to i64
  %34 = and i64 %33, 255
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %29, %1
  %37 = load i32, i32* @COMP_ERR, align 4
  %38 = call i32 @RT_TRACE(i32 %37, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %39 = load i16, i16* @ENOMEM, align 2
  %40 = sext i16 %39 to i32
  %41 = sub nsw i32 0, %40
  %42 = trunc i32 %41 to i16
  store i16 %42, i16* %2, align 2
  br label %118

43:                                               ; preds = %29
  %44 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %45 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %44, i32 0, i32 4
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %48 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sext i32 %49 to i64
  %51 = mul i64 16, %50
  %52 = trunc i64 %51 to i32
  %53 = call i32 @memset(%struct.TYPE_4__* %46, i32 0, i32 %52)
  %54 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %55 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %54, i32 0, i32 5
  store i64 0, i64* %55, align 8
  store i32 0, i32* %6, align 4
  br label %56

56:                                               ; preds = %112, %43
  %57 = load i32, i32* %6, align 4
  %58 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %59 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %62, label %115

62:                                               ; preds = %56
  %63 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %64 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call %struct.sk_buff* @dev_alloc_skb(i32 %65)
  store %struct.sk_buff* %66, %struct.sk_buff** %7, align 8
  %67 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %68 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %67, i32 0, i32 4
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i64 %71
  store %struct.TYPE_4__* %72, %struct.TYPE_4__** %5, align 8
  %73 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %74 = icmp ne %struct.sk_buff* %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %62
  store i16 0, i16* %2, align 2
  br label %118

76:                                               ; preds = %62
  %77 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %78 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %79 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %78, i32 0, i32 3
  %80 = load %struct.sk_buff**, %struct.sk_buff*** %79, align 8
  %81 = load i32, i32* %6, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %80, i64 %82
  store %struct.sk_buff* %77, %struct.sk_buff** %83, align 8
  %84 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %85 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = inttoptr i64 %86 to i32*
  store i32* %87, i32** %8, align 8
  %88 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %89 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %92 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %95 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %98 = call i32 @pci_map_single(i32 %90, i32 %93, i32 %96, i32 %97)
  %99 = load i32*, i32** %8, align 8
  store i32 %98, i32* %99, align 4
  %100 = load i32*, i32** %8, align 8
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @cpu_to_le32(i32 %101)
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 3
  store i32 %102, i32* %104, align 4
  %105 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %106 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 2
  store i32 %107, i32* %109, align 4
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  store i32 1, i32* %111, align 4
  br label %112

112:                                              ; preds = %76
  %113 = load i32, i32* %6, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %6, align 4
  br label %56

115:                                              ; preds = %56
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 1
  store i32 1, i32* %117, align 4
  store i16 0, i16* %2, align 2
  br label %118

118:                                              ; preds = %115, %75, %36
  %119 = load i16, i16* %2, align 2
  ret i16 %119
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local %struct.TYPE_4__* @pci_alloc_consistent(i32, i32, i32*) #1

declare dso_local i32 @RT_TRACE(i32, i8*) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i32 @pci_map_single(i32, i32, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
