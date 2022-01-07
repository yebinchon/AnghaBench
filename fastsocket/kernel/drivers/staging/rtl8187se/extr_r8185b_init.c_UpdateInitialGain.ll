; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8185b_init.c_UpdateInitialGain.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8185b_init.c_UpdateInitialGain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8180_priv = type { i64, i32, i32, i32 }

@eRfOn = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"UpdateInitialGain(): unknown RFChipID: %#X\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @UpdateInitialGain(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.r8180_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call i64 @ieee80211_priv(%struct.net_device* %4)
  %6 = inttoptr i64 %5 to %struct.r8180_priv*
  store %struct.r8180_priv* %6, %struct.r8180_priv** %3, align 8
  %7 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %8 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @eRfOn, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %14 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %17 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 4
  br label %122

18:                                               ; preds = %1
  %19 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %20 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %117 [
    i32 128, label %22
  ]

22:                                               ; preds = %18
  %23 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %24 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %106 [
    i32 1, label %26
    i32 2, label %36
    i32 3, label %46
    i32 4, label %56
    i32 5, label %66
    i32 6, label %76
    i32 7, label %86
    i32 8, label %96
  ]

26:                                               ; preds = %22
  %27 = load %struct.net_device*, %struct.net_device** %2, align 8
  %28 = call i32 @write_phy_ofdm(%struct.net_device* %27, i32 23, i32 38)
  %29 = call i32 @mdelay(i32 1)
  %30 = load %struct.net_device*, %struct.net_device** %2, align 8
  %31 = call i32 @write_phy_ofdm(%struct.net_device* %30, i32 36, i32 134)
  %32 = call i32 @mdelay(i32 1)
  %33 = load %struct.net_device*, %struct.net_device** %2, align 8
  %34 = call i32 @write_phy_ofdm(%struct.net_device* %33, i32 5, i32 250)
  %35 = call i32 @mdelay(i32 1)
  br label %116

36:                                               ; preds = %22
  %37 = load %struct.net_device*, %struct.net_device** %2, align 8
  %38 = call i32 @write_phy_ofdm(%struct.net_device* %37, i32 23, i32 54)
  %39 = call i32 @mdelay(i32 1)
  %40 = load %struct.net_device*, %struct.net_device** %2, align 8
  %41 = call i32 @write_phy_ofdm(%struct.net_device* %40, i32 36, i32 134)
  %42 = call i32 @mdelay(i32 1)
  %43 = load %struct.net_device*, %struct.net_device** %2, align 8
  %44 = call i32 @write_phy_ofdm(%struct.net_device* %43, i32 5, i32 250)
  %45 = call i32 @mdelay(i32 1)
  br label %116

46:                                               ; preds = %22
  %47 = load %struct.net_device*, %struct.net_device** %2, align 8
  %48 = call i32 @write_phy_ofdm(%struct.net_device* %47, i32 23, i32 54)
  %49 = call i32 @mdelay(i32 1)
  %50 = load %struct.net_device*, %struct.net_device** %2, align 8
  %51 = call i32 @write_phy_ofdm(%struct.net_device* %50, i32 36, i32 134)
  %52 = call i32 @mdelay(i32 1)
  %53 = load %struct.net_device*, %struct.net_device** %2, align 8
  %54 = call i32 @write_phy_ofdm(%struct.net_device* %53, i32 5, i32 251)
  %55 = call i32 @mdelay(i32 1)
  br label %116

56:                                               ; preds = %22
  %57 = load %struct.net_device*, %struct.net_device** %2, align 8
  %58 = call i32 @write_phy_ofdm(%struct.net_device* %57, i32 23, i32 70)
  %59 = call i32 @mdelay(i32 1)
  %60 = load %struct.net_device*, %struct.net_device** %2, align 8
  %61 = call i32 @write_phy_ofdm(%struct.net_device* %60, i32 36, i32 134)
  %62 = call i32 @mdelay(i32 1)
  %63 = load %struct.net_device*, %struct.net_device** %2, align 8
  %64 = call i32 @write_phy_ofdm(%struct.net_device* %63, i32 5, i32 251)
  %65 = call i32 @mdelay(i32 1)
  br label %116

66:                                               ; preds = %22
  %67 = load %struct.net_device*, %struct.net_device** %2, align 8
  %68 = call i32 @write_phy_ofdm(%struct.net_device* %67, i32 23, i32 70)
  %69 = call i32 @mdelay(i32 1)
  %70 = load %struct.net_device*, %struct.net_device** %2, align 8
  %71 = call i32 @write_phy_ofdm(%struct.net_device* %70, i32 36, i32 150)
  %72 = call i32 @mdelay(i32 1)
  %73 = load %struct.net_device*, %struct.net_device** %2, align 8
  %74 = call i32 @write_phy_ofdm(%struct.net_device* %73, i32 5, i32 251)
  %75 = call i32 @mdelay(i32 1)
  br label %116

76:                                               ; preds = %22
  %77 = load %struct.net_device*, %struct.net_device** %2, align 8
  %78 = call i32 @write_phy_ofdm(%struct.net_device* %77, i32 23, i32 86)
  %79 = call i32 @mdelay(i32 1)
  %80 = load %struct.net_device*, %struct.net_device** %2, align 8
  %81 = call i32 @write_phy_ofdm(%struct.net_device* %80, i32 36, i32 150)
  %82 = call i32 @mdelay(i32 1)
  %83 = load %struct.net_device*, %struct.net_device** %2, align 8
  %84 = call i32 @write_phy_ofdm(%struct.net_device* %83, i32 5, i32 252)
  %85 = call i32 @mdelay(i32 1)
  br label %116

86:                                               ; preds = %22
  %87 = load %struct.net_device*, %struct.net_device** %2, align 8
  %88 = call i32 @write_phy_ofdm(%struct.net_device* %87, i32 23, i32 86)
  %89 = call i32 @mdelay(i32 1)
  %90 = load %struct.net_device*, %struct.net_device** %2, align 8
  %91 = call i32 @write_phy_ofdm(%struct.net_device* %90, i32 36, i32 166)
  %92 = call i32 @mdelay(i32 1)
  %93 = load %struct.net_device*, %struct.net_device** %2, align 8
  %94 = call i32 @write_phy_ofdm(%struct.net_device* %93, i32 5, i32 252)
  %95 = call i32 @mdelay(i32 1)
  br label %116

96:                                               ; preds = %22
  %97 = load %struct.net_device*, %struct.net_device** %2, align 8
  %98 = call i32 @write_phy_ofdm(%struct.net_device* %97, i32 23, i32 102)
  %99 = call i32 @mdelay(i32 1)
  %100 = load %struct.net_device*, %struct.net_device** %2, align 8
  %101 = call i32 @write_phy_ofdm(%struct.net_device* %100, i32 36, i32 182)
  %102 = call i32 @mdelay(i32 1)
  %103 = load %struct.net_device*, %struct.net_device** %2, align 8
  %104 = call i32 @write_phy_ofdm(%struct.net_device* %103, i32 5, i32 252)
  %105 = call i32 @mdelay(i32 1)
  br label %116

106:                                              ; preds = %22
  %107 = load %struct.net_device*, %struct.net_device** %2, align 8
  %108 = call i32 @write_phy_ofdm(%struct.net_device* %107, i32 23, i32 38)
  %109 = call i32 @mdelay(i32 1)
  %110 = load %struct.net_device*, %struct.net_device** %2, align 8
  %111 = call i32 @write_phy_ofdm(%struct.net_device* %110, i32 36, i32 134)
  %112 = call i32 @mdelay(i32 1)
  %113 = load %struct.net_device*, %struct.net_device** %2, align 8
  %114 = call i32 @write_phy_ofdm(%struct.net_device* %113, i32 5, i32 250)
  %115 = call i32 @mdelay(i32 1)
  br label %116

116:                                              ; preds = %106, %96, %86, %76, %66, %56, %46, %36, %26
  br label %122

117:                                              ; preds = %18
  %118 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %119 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @DMESG(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %120)
  br label %122

122:                                              ; preds = %12, %117, %116
  ret void
}

declare dso_local i64 @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @write_phy_ofdm(%struct.net_device*, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @DMESG(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
