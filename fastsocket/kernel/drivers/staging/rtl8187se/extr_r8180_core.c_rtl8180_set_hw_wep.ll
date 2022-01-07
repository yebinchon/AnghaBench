; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_core.c_rtl8180_set_hw_wep.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_core.c_rtl8180_set_hw_wep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8180_priv = type { i32* }

@PGSELECT = common dso_local global i32 0, align 4
@PGSELECT_PG_SHIFT = common dso_local global i32 0, align 4
@KEY0 = common dso_local global i64 0, align 8
@SECURITY = common dso_local global i32 0, align 4
@SECURITY_WEP_TX_ENABLE_SHIFT = common dso_local global i32 0, align 4
@SECURITY_WEP_RX_ENABLE_SHIFT = common dso_local global i32 0, align 4
@SECURITY_ENCRYP_MASK = common dso_local global i32 0, align 4
@SECURITY_ENCRYP_104 = common dso_local global i32 0, align 4
@SECURITY_ENCRYP_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"key %x %x %x %x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8180_set_hw_wep(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.r8180_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.r8180_priv* @ieee80211_priv(%struct.net_device* %7)
  store %struct.r8180_priv* %8, %struct.r8180_priv** %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = load i32, i32* @PGSELECT, align 4
  %11 = call i32 @read_nic_byte(%struct.net_device* %9, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = load i32, i32* @PGSELECT, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @PGSELECT_PG_SHIFT, align 4
  %16 = shl i32 1, %15
  %17 = xor i32 %16, -1
  %18 = and i32 %14, %17
  %19 = call i32 @write_nic_byte(%struct.net_device* %12, i32 %13, i32 %18)
  %20 = load %struct.net_device*, %struct.net_device** %2, align 8
  %21 = load i64, i64* @KEY0, align 8
  %22 = add nsw i64 %21, 4
  %23 = add nsw i64 %22, 4
  %24 = add nsw i64 %23, 4
  %25 = call i32 @read_nic_dword(%struct.net_device* %20, i64 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = and i32 %26, -256
  store i32 %27, i32* %6, align 4
  %28 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %29 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 3
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, 255
  %34 = load i32, i32* %6, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %6, align 4
  %36 = load %struct.net_device*, %struct.net_device** %2, align 8
  %37 = load i64, i64* @KEY0, align 8
  %38 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %39 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @write_nic_dword(%struct.net_device* %36, i64 %37, i32 %42)
  %44 = load %struct.net_device*, %struct.net_device** %2, align 8
  %45 = load i64, i64* @KEY0, align 8
  %46 = add nsw i64 %45, 4
  %47 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %48 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @write_nic_dword(%struct.net_device* %44, i64 %46, i32 %51)
  %53 = load %struct.net_device*, %struct.net_device** %2, align 8
  %54 = load i64, i64* @KEY0, align 8
  %55 = add nsw i64 %54, 4
  %56 = add nsw i64 %55, 4
  %57 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %58 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 2
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @write_nic_dword(%struct.net_device* %53, i64 %56, i32 %61)
  %63 = load %struct.net_device*, %struct.net_device** %2, align 8
  %64 = load i64, i64* @KEY0, align 8
  %65 = add nsw i64 %64, 4
  %66 = add nsw i64 %65, 4
  %67 = add nsw i64 %66, 4
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @write_nic_dword(%struct.net_device* %63, i64 %67, i32 %68)
  %70 = load %struct.net_device*, %struct.net_device** %2, align 8
  %71 = load i32, i32* @SECURITY, align 4
  %72 = call i32 @read_nic_byte(%struct.net_device* %70, i32 %71)
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* @SECURITY_WEP_TX_ENABLE_SHIFT, align 4
  %74 = shl i32 1, %73
  %75 = load i32, i32* %5, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* @SECURITY_WEP_RX_ENABLE_SHIFT, align 4
  %78 = shl i32 1, %77
  %79 = load i32, i32* %5, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %5, align 4
  %81 = load i32, i32* @SECURITY_ENCRYP_MASK, align 4
  %82 = xor i32 %81, -1
  %83 = load i32, i32* %5, align 4
  %84 = and i32 %83, %82
  store i32 %84, i32* %5, align 4
  %85 = load i32, i32* @SECURITY_ENCRYP_104, align 4
  %86 = load i32, i32* @SECURITY_ENCRYP_SHIFT, align 4
  %87 = shl i32 %85, %86
  %88 = load i32, i32* %5, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %5, align 4
  %90 = load %struct.net_device*, %struct.net_device** %2, align 8
  %91 = load i32, i32* @SECURITY, align 4
  %92 = load i32, i32* %5, align 4
  %93 = call i32 @write_nic_byte(%struct.net_device* %90, i32 %91, i32 %92)
  %94 = load %struct.net_device*, %struct.net_device** %2, align 8
  %95 = load i64, i64* @KEY0, align 8
  %96 = add nsw i64 %95, 4
  %97 = add nsw i64 %96, 4
  %98 = add nsw i64 %97, 4
  %99 = call i32 @read_nic_dword(%struct.net_device* %94, i64 %98)
  %100 = load %struct.net_device*, %struct.net_device** %2, align 8
  %101 = load i64, i64* @KEY0, align 8
  %102 = add nsw i64 %101, 4
  %103 = add nsw i64 %102, 4
  %104 = call i32 @read_nic_dword(%struct.net_device* %100, i64 %103)
  %105 = load %struct.net_device*, %struct.net_device** %2, align 8
  %106 = load i64, i64* @KEY0, align 8
  %107 = add nsw i64 %106, 4
  %108 = call i32 @read_nic_dword(%struct.net_device* %105, i64 %107)
  %109 = load %struct.net_device*, %struct.net_device** %2, align 8
  %110 = load i64, i64* @KEY0, align 8
  %111 = call i32 @read_nic_dword(%struct.net_device* %109, i64 %110)
  %112 = call i32 @DMESG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %99, i32 %104, i32 %108, i32 %111)
  ret void
}

declare dso_local %struct.r8180_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @read_nic_byte(%struct.net_device*, i32) #1

declare dso_local i32 @write_nic_byte(%struct.net_device*, i32, i32) #1

declare dso_local i32 @read_nic_dword(%struct.net_device*, i64) #1

declare dso_local i32 @write_nic_dword(%struct.net_device*, i64, i32) #1

declare dso_local i32 @DMESG(i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
