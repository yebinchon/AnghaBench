; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_core.c_free_tx_desc_rings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_core.c_free_tx_desc_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8180_priv = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_tx_desc_rings(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.r8180_priv*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call i64 @ieee80211_priv(%struct.net_device* %6)
  %8 = inttoptr i64 %7 to %struct.r8180_priv*
  store %struct.r8180_priv* %8, %struct.r8180_priv** %3, align 8
  %9 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %10 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %9, i32 0, i32 24
  %11 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  store %struct.pci_dev* %11, %struct.pci_dev** %4, align 8
  %12 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %13 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %5, align 4
  %15 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = mul i64 32, %17
  %19 = add i64 %18, 256
  %20 = trunc i64 %19 to i32
  %21 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %22 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %21, i32 0, i32 23
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %25 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %24, i32 0, i32 22
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @pci_free_consistent(%struct.pci_dev* %15, i32 %20, i32 %23, i32 %26)
  %28 = load %struct.net_device*, %struct.net_device** %2, align 8
  %29 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %30 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %29, i32 0, i32 21
  %31 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %32 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @buffer_free(%struct.net_device* %28, i32* %30, i32 %33, i32 1)
  %35 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = mul i64 32, %37
  %39 = add i64 %38, 256
  %40 = trunc i64 %39 to i32
  %41 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %42 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %41, i32 0, i32 20
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %45 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %44, i32 0, i32 19
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @pci_free_consistent(%struct.pci_dev* %35, i32 %40, i32 %43, i32 %46)
  %48 = load %struct.net_device*, %struct.net_device** %2, align 8
  %49 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %50 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %49, i32 0, i32 18
  %51 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %52 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @buffer_free(%struct.net_device* %48, i32* %50, i32 %53, i32 1)
  %55 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = mul i64 32, %57
  %59 = add i64 %58, 256
  %60 = trunc i64 %59 to i32
  %61 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %62 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %61, i32 0, i32 17
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %65 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %64, i32 0, i32 16
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @pci_free_consistent(%struct.pci_dev* %55, i32 %60, i32 %63, i32 %66)
  %68 = load %struct.net_device*, %struct.net_device** %2, align 8
  %69 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %70 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %69, i32 0, i32 15
  %71 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %72 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @buffer_free(%struct.net_device* %68, i32* %70, i32 %73, i32 1)
  %75 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = mul i64 32, %77
  %79 = add i64 %78, 256
  %80 = trunc i64 %79 to i32
  %81 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %82 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %81, i32 0, i32 14
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %85 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %84, i32 0, i32 13
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @pci_free_consistent(%struct.pci_dev* %75, i32 %80, i32 %83, i32 %86)
  %88 = load %struct.net_device*, %struct.net_device** %2, align 8
  %89 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %90 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %89, i32 0, i32 12
  %91 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %92 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @buffer_free(%struct.net_device* %88, i32* %90, i32 %93, i32 1)
  %95 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %96 = load i32, i32* %5, align 4
  %97 = sext i32 %96 to i64
  %98 = mul i64 32, %97
  %99 = add i64 %98, 256
  %100 = trunc i64 %99 to i32
  %101 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %102 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %101, i32 0, i32 11
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %105 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %104, i32 0, i32 10
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @pci_free_consistent(%struct.pci_dev* %95, i32 %100, i32 %103, i32 %106)
  %108 = load %struct.net_device*, %struct.net_device** %2, align 8
  %109 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %110 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %109, i32 0, i32 9
  %111 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %112 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @buffer_free(%struct.net_device* %108, i32* %110, i32 %113, i32 1)
  %115 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %116 = load i32, i32* %5, align 4
  %117 = sext i32 %116 to i64
  %118 = mul i64 32, %117
  %119 = add i64 %118, 256
  %120 = trunc i64 %119 to i32
  %121 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %122 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %121, i32 0, i32 8
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %125 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %124, i32 0, i32 7
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @pci_free_consistent(%struct.pci_dev* %115, i32 %120, i32 %123, i32 %126)
  %128 = load %struct.net_device*, %struct.net_device** %2, align 8
  %129 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %130 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %129, i32 0, i32 6
  %131 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %132 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @buffer_free(%struct.net_device* %128, i32* %130, i32 %133, i32 1)
  %135 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %136 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  store i32 %137, i32* %5, align 4
  %138 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %139 = load i32, i32* %5, align 4
  %140 = sext i32 %139 to i64
  %141 = mul i64 32, %140
  %142 = add i64 %141, 256
  %143 = trunc i64 %142 to i32
  %144 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %145 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %144, i32 0, i32 5
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %148 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %147, i32 0, i32 4
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @pci_free_consistent(%struct.pci_dev* %138, i32 %143, i32 %146, i32 %149)
  %151 = load %struct.net_device*, %struct.net_device** %2, align 8
  %152 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %153 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %152, i32 0, i32 3
  %154 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %155 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @buffer_free(%struct.net_device* %151, i32* %153, i32 %156, i32 1)
  ret void
}

declare dso_local i64 @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @pci_free_consistent(%struct.pci_dev*, i32, i32, i32) #1

declare dso_local i32 @buffer_free(%struct.net_device*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
