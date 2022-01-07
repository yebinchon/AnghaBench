; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8185b_init.c_RF_WriteReg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8185b_init.c_RF_WriteReg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8180_priv = type { i32, i32 }

@.str = private unnamed_addr constant [48 x i8] c"RF_WriteReg(): invalid RegThreeWireMode(%d) !!!\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"RF_WriteReg(): unknown RFChipID: %#X\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RF_WriteReg(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.r8180_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call i64 @ieee80211_priv(%struct.net_device* %11)
  %13 = inttoptr i64 %12 to %struct.r8180_priv*
  store %struct.r8180_priv* %13, %struct.r8180_priv** %10, align 8
  %14 = load %struct.r8180_priv*, %struct.r8180_priv** %10, align 8
  %15 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %65 [
    i32 131, label %17
    i32 130, label %17
    i32 129, label %17
  ]

17:                                               ; preds = %3, %3, %3
  %18 = load %struct.r8180_priv*, %struct.r8180_priv** %10, align 8
  %19 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %59 [
    i32 128, label %21
    i32 134, label %32
    i32 133, label %41
    i32 132, label %50
  ]

21:                                               ; preds = %17
  %22 = load i32, i32* %6, align 4
  %23 = shl i32 %22, 4
  %24 = load i32, i32* %5, align 4
  %25 = and i32 %24, 15
  %26 = or i32 %23, %25
  store i32 %26, i32* %7, align 4
  store i32 16, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %27 = load %struct.net_device*, %struct.net_device** %4, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @ZEBRA_RFSerialWrite(%struct.net_device* %27, i32 %28, i32 %29, i32 %30)
  br label %64

32:                                               ; preds = %17
  %33 = load i32, i32* %6, align 4
  %34 = shl i32 %33, 4
  %35 = load i32, i32* %5, align 4
  %36 = and i32 %35, 15
  %37 = or i32 %34, %36
  store i32 %37, i32* %7, align 4
  store i32 16, i32* %8, align 4
  %38 = load %struct.net_device*, %struct.net_device** %4, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @HwThreeWire(%struct.net_device* %38, i32* %7, i32 %39, i32 0, i32 1)
  br label %64

41:                                               ; preds = %17
  %42 = load i32, i32* %6, align 4
  %43 = shl i32 %42, 4
  %44 = load i32, i32* %5, align 4
  %45 = and i32 %44, 15
  %46 = or i32 %43, %45
  store i32 %46, i32* %7, align 4
  store i32 16, i32* %8, align 4
  %47 = load %struct.net_device*, %struct.net_device** %4, align 8
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @HwHSSIThreeWire(%struct.net_device* %47, i32* %7, i32 %48, i32 0, i32 1)
  br label %64

50:                                               ; preds = %17
  %51 = load i32, i32* %6, align 4
  %52 = shl i32 %51, 4
  %53 = load i32, i32* %5, align 4
  %54 = and i32 %53, 15
  %55 = or i32 %52, %54
  store i32 %55, i32* %7, align 4
  store i32 16, i32* %8, align 4
  %56 = load %struct.net_device*, %struct.net_device** %4, align 8
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @HwHSSIThreeWire(%struct.net_device* %56, i32* %7, i32 %57, i32 1, i32 1)
  br label %64

59:                                               ; preds = %17
  %60 = load %struct.r8180_priv*, %struct.r8180_priv** %10, align 8
  %61 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @DMESGE(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %62)
  br label %64

64:                                               ; preds = %59, %50, %41, %32, %21
  br label %70

65:                                               ; preds = %3
  %66 = load %struct.r8180_priv*, %struct.r8180_priv** %10, align 8
  %67 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @DMESGE(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  br label %70

70:                                               ; preds = %65, %64
  ret void
}

declare dso_local i64 @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @ZEBRA_RFSerialWrite(%struct.net_device*, i32, i32, i32) #1

declare dso_local i32 @HwThreeWire(%struct.net_device*, i32*, i32, i32, i32) #1

declare dso_local i32 @HwHSSIThreeWire(%struct.net_device*, i32*, i32, i32, i32) #1

declare dso_local i32 @DMESGE(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
