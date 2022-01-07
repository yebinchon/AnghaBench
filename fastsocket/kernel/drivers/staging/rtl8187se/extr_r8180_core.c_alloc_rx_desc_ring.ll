; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_core.c_alloc_rx_desc_ring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_core.c_alloc_rx_desc_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8180_priv = type { i32*, i32, i32, i32, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"RX buffer allocation too large\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"DMA buffer is not aligned\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Failed to kmalloc RX buffer\00", align 1
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"Unable to allocate mem RX buf\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i16 @alloc_rx_desc_ring(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i16, align 2
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.r8180_priv*, align 8
  %14 = alloca %struct.pci_dev*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %17 = load %struct.net_device*, %struct.net_device** %5, align 8
  %18 = call i64 @ieee80211_priv(%struct.net_device* %17)
  %19 = inttoptr i64 %18 to %struct.r8180_priv*
  store %struct.r8180_priv* %19, %struct.r8180_priv** %13, align 8
  %20 = load %struct.r8180_priv*, %struct.r8180_priv** %13, align 8
  %21 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %20, i32 0, i32 4
  %22 = load %struct.pci_dev*, %struct.pci_dev** %21, align 8
  store %struct.pci_dev* %22, %struct.pci_dev** %14, align 8
  store i32 8, i32* %16, align 4
  %23 = load i32, i32* %6, align 4
  %24 = and i32 %23, 4095
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = call i32 @DMESGE(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i16 -1, i16* %4, align 2
  br label %122

29:                                               ; preds = %3
  %30 = load %struct.pci_dev*, %struct.pci_dev** %14, align 8
  %31 = load i32, i32* %16, align 4
  %32 = sext i32 %31 to i64
  %33 = mul i64 4, %32
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = mul i64 %33, %35
  %37 = add i64 %36, 256
  %38 = trunc i64 %37 to i32
  %39 = call i64 @pci_alloc_consistent(%struct.pci_dev* %30, i32 %38, i32* %11)
  %40 = inttoptr i64 %39 to i32*
  store i32* %40, i32** %9, align 8
  %41 = load i32, i32* %11, align 4
  %42 = and i32 %41, 255
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %29
  %45 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %29
  %47 = load i32*, i32** %9, align 8
  %48 = load %struct.r8180_priv*, %struct.r8180_priv** %13, align 8
  %49 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %48, i32 0, i32 0
  store i32* %47, i32** %49, align 8
  %50 = load i32, i32* %11, align 4
  %51 = load %struct.r8180_priv*, %struct.r8180_priv** %13, align 8
  %52 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 8
  %53 = load i32*, i32** %9, align 8
  store i32* %53, i32** %10, align 8
  store i32 0, i32* %8, align 4
  br label %54

54:                                               ; preds = %106, %46
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %109

58:                                               ; preds = %54
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = mul i64 %60, 4
  %62 = trunc i64 %61 to i32
  %63 = load i32, i32* @GFP_ATOMIC, align 4
  %64 = call i8* @kmalloc(i32 %62, i32 %63)
  store i8* %64, i8** %15, align 8
  %65 = icmp eq i8* %64, null
  br i1 %65, label %66, label %68

66:                                               ; preds = %58
  %67 = call i32 @DMESGE(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  store i16 -1, i16* %4, align 2
  br label %122

68:                                               ; preds = %58
  %69 = load %struct.pci_dev*, %struct.pci_dev** %14, align 8
  %70 = load i8*, i8** %15, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = mul i64 %72, 4
  %74 = trunc i64 %73 to i32
  %75 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %76 = call i32 @pci_map_single(%struct.pci_dev* %69, i8* %70, i32 %74, i32 %75)
  store i32 %76, i32* %12, align 4
  %77 = load %struct.r8180_priv*, %struct.r8180_priv** %13, align 8
  %78 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %77, i32 0, i32 3
  %79 = load i8*, i8** %15, align 8
  %80 = load i32, i32* %12, align 4
  %81 = load %struct.r8180_priv*, %struct.r8180_priv** %13, align 8
  %82 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %81, i32 0, i32 2
  %83 = call i32 @buffer_add(i32* %78, i8* %79, i32 %80, i32* %82)
  %84 = icmp eq i32 -1, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %68
  %86 = call i32 @DMESGE(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  store i16 -1, i16* %4, align 2
  br label %122

87:                                               ; preds = %68
  %88 = load i32*, i32** %10, align 8
  store i32 0, i32* %88, align 4
  %89 = load i32*, i32** %10, align 8
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %6, align 4
  %92 = and i32 %91, 4095
  %93 = or i32 %90, %92
  %94 = load i32*, i32** %10, align 8
  store i32 %93, i32* %94, align 4
  %95 = load i32, i32* %12, align 4
  %96 = load i32*, i32** %10, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 2
  store i32 %95, i32* %97, align 4
  %98 = load i32*, i32** %10, align 8
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %99, -2147483648
  %101 = load i32*, i32** %10, align 8
  store i32 %100, i32* %101, align 4
  %102 = load i32*, i32** %10, align 8
  %103 = load i32, i32* %16, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  store i32* %105, i32** %10, align 8
  br label %106

106:                                              ; preds = %87
  %107 = load i32, i32* %8, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %8, align 4
  br label %54

109:                                              ; preds = %54
  %110 = load i32*, i32** %10, align 8
  %111 = load i32, i32* %16, align 4
  %112 = sext i32 %111 to i64
  %113 = sub i64 0, %112
  %114 = getelementptr inbounds i32, i32* %110, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = or i32 %115, 1073741824
  %117 = load i32*, i32** %10, align 8
  %118 = load i32, i32* %16, align 4
  %119 = sext i32 %118 to i64
  %120 = sub i64 0, %119
  %121 = getelementptr inbounds i32, i32* %117, i64 %120
  store i32 %116, i32* %121, align 4
  store i16 0, i16* %4, align 2
  br label %122

122:                                              ; preds = %109, %85, %66, %27
  %123 = load i16, i16* %4, align 2
  ret i16 %123
}

declare dso_local i64 @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @DMESGE(i8*) #1

declare dso_local i64 @pci_alloc_consistent(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @pci_map_single(%struct.pci_dev*, i8*, i32, i32) #1

declare dso_local i32 @buffer_add(i32*, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
