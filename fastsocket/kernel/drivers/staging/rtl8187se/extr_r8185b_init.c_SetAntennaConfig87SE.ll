; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8185b_init.c_SetAntennaConfig87SE.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8185b_init.c_SetAntennaConfig87SE.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8180_priv = type { i32 }

@ANTSEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SetAntennaConfig87SE(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.r8180_priv*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call i64 @ieee80211_priv(%struct.net_device* %9)
  %11 = inttoptr i64 %10 to %struct.r8180_priv*
  store %struct.r8180_priv* %11, %struct.r8180_priv** %7, align 8
  store i32 1, i32* %8, align 4
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call i32 @write_phy_cck(%struct.net_device* %12, i32 12, i32 9)
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %44

16:                                               ; preds = %3
  %17 = load i32, i32* %5, align 4
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %31

19:                                               ; preds = %16
  %20 = load %struct.net_device*, %struct.net_device** %4, align 8
  %21 = load i32, i32* @ANTSEL, align 4
  %22 = call i32 @write_nic_byte(%struct.net_device* %20, i32 %21, i32 0)
  %23 = load %struct.net_device*, %struct.net_device** %4, align 8
  %24 = call i32 @write_phy_cck(%struct.net_device* %23, i32 17, i32 187)
  %25 = load %struct.net_device*, %struct.net_device** %4, align 8
  %26 = call i32 @write_phy_cck(%struct.net_device* %25, i32 1, i32 199)
  %27 = load %struct.net_device*, %struct.net_device** %4, align 8
  %28 = call i32 @write_phy_ofdm(%struct.net_device* %27, i32 13, i32 84)
  %29 = load %struct.net_device*, %struct.net_device** %4, align 8
  %30 = call i32 @write_phy_ofdm(%struct.net_device* %29, i32 24, i32 178)
  br label %43

31:                                               ; preds = %16
  %32 = load %struct.net_device*, %struct.net_device** %4, align 8
  %33 = load i32, i32* @ANTSEL, align 4
  %34 = call i32 @write_nic_byte(%struct.net_device* %32, i32 %33, i32 3)
  %35 = load %struct.net_device*, %struct.net_device** %4, align 8
  %36 = call i32 @write_phy_cck(%struct.net_device* %35, i32 17, i32 155)
  %37 = load %struct.net_device*, %struct.net_device** %4, align 8
  %38 = call i32 @write_phy_cck(%struct.net_device* %37, i32 1, i32 199)
  %39 = load %struct.net_device*, %struct.net_device** %4, align 8
  %40 = call i32 @write_phy_ofdm(%struct.net_device* %39, i32 13, i32 92)
  %41 = load %struct.net_device*, %struct.net_device** %4, align 8
  %42 = call i32 @write_phy_ofdm(%struct.net_device* %41, i32 24, i32 178)
  br label %43

43:                                               ; preds = %31, %19
  br label %72

44:                                               ; preds = %3
  %45 = load i32, i32* %5, align 4
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %47, label %59

47:                                               ; preds = %44
  %48 = load %struct.net_device*, %struct.net_device** %4, align 8
  %49 = load i32, i32* @ANTSEL, align 4
  %50 = call i32 @write_nic_byte(%struct.net_device* %48, i32 %49, i32 0)
  %51 = load %struct.net_device*, %struct.net_device** %4, align 8
  %52 = call i32 @write_phy_cck(%struct.net_device* %51, i32 17, i32 187)
  %53 = load %struct.net_device*, %struct.net_device** %4, align 8
  %54 = call i32 @write_phy_cck(%struct.net_device* %53, i32 1, i32 71)
  %55 = load %struct.net_device*, %struct.net_device** %4, align 8
  %56 = call i32 @write_phy_ofdm(%struct.net_device* %55, i32 13, i32 84)
  %57 = load %struct.net_device*, %struct.net_device** %4, align 8
  %58 = call i32 @write_phy_ofdm(%struct.net_device* %57, i32 24, i32 50)
  br label %71

59:                                               ; preds = %44
  %60 = load %struct.net_device*, %struct.net_device** %4, align 8
  %61 = load i32, i32* @ANTSEL, align 4
  %62 = call i32 @write_nic_byte(%struct.net_device* %60, i32 %61, i32 3)
  %63 = load %struct.net_device*, %struct.net_device** %4, align 8
  %64 = call i32 @write_phy_cck(%struct.net_device* %63, i32 17, i32 155)
  %65 = load %struct.net_device*, %struct.net_device** %4, align 8
  %66 = call i32 @write_phy_cck(%struct.net_device* %65, i32 1, i32 71)
  %67 = load %struct.net_device*, %struct.net_device** %4, align 8
  %68 = call i32 @write_phy_ofdm(%struct.net_device* %67, i32 13, i32 92)
  %69 = load %struct.net_device*, %struct.net_device** %4, align 8
  %70 = call i32 @write_phy_ofdm(%struct.net_device* %69, i32 24, i32 50)
  br label %71

71:                                               ; preds = %59, %47
  br label %72

72:                                               ; preds = %71, %43
  %73 = load i32, i32* %5, align 4
  %74 = load %struct.r8180_priv*, %struct.r8180_priv** %7, align 8
  %75 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* %8, align 4
  ret i32 %76
}

declare dso_local i64 @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @write_phy_cck(%struct.net_device*, i32, i32) #1

declare dso_local i32 @write_nic_byte(%struct.net_device*, i32, i32) #1

declare dso_local i32 @write_phy_ofdm(%struct.net_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
