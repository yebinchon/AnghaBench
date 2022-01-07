; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8185b_init.c_MgntActSet_RF_State.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8185b_init.c_MgntActSet_RF_State.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8180_priv = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [48 x i8] c"MgntActSet_RF_State(): Wait too long to set RF\0A\00", align 1
@RF_CHANGE_BY_HW = common dso_local global i32 0, align 4
@RF_CHANGE_BY_IPS = common dso_local global i32 0, align 4
@disas_lv_ss = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @MgntActSet_RF_State(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.r8180_priv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.net_device*, %struct.net_device** %5, align 8
  %15 = call i64 @ieee80211_priv(%struct.net_device* %14)
  %16 = inttoptr i64 %15 to %struct.r8180_priv*
  store %struct.r8180_priv* %16, %struct.r8180_priv** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  br label %17

17:                                               ; preds = %3, %53
  %18 = load %struct.r8180_priv*, %struct.r8180_priv** %8, align 8
  %19 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %18, i32 0, i32 2
  %20 = load i64, i64* %13, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.r8180_priv*, %struct.r8180_priv** %8, align 8
  %23 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %46

26:                                               ; preds = %17
  %27 = load %struct.r8180_priv*, %struct.r8180_priv** %8, align 8
  %28 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %27, i32 0, i32 2
  %29 = load i64, i64* %13, align 8
  %30 = call i32 @spin_unlock_irqrestore(i32* %28, i64 %29)
  br label %31

31:                                               ; preds = %44, %26
  %32 = load %struct.r8180_priv*, %struct.r8180_priv** %8, align 8
  %33 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %31
  %37 = load i32, i32* %12, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %12, align 4
  %39 = call i32 @udelay(i32 1000)
  %40 = load i32, i32* %12, align 4
  %41 = icmp sgt i32 %40, 1000
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = call i32 @printk(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %148

44:                                               ; preds = %36
  br label %31

45:                                               ; preds = %31
  br label %53

46:                                               ; preds = %17
  %47 = load %struct.r8180_priv*, %struct.r8180_priv** %8, align 8
  %48 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %47, i32 0, i32 0
  store i32 1, i32* %48, align 4
  %49 = load %struct.r8180_priv*, %struct.r8180_priv** %8, align 8
  %50 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %49, i32 0, i32 2
  %51 = load i64, i64* %13, align 8
  %52 = call i32 @spin_unlock_irqrestore(i32* %50, i64 %51)
  br label %54

53:                                               ; preds = %45
  br label %17

54:                                               ; preds = %46
  %55 = load %struct.r8180_priv*, %struct.r8180_priv** %8, align 8
  %56 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %6, align 4
  switch i32 %58, label %110 [
    i32 129, label %59
    i32 130, label %88
    i32 128, label %104
  ]

59:                                               ; preds = %54
  %60 = load i32, i32* %7, align 4
  %61 = xor i32 %60, -1
  %62 = load %struct.r8180_priv*, %struct.r8180_priv** %8, align 8
  %63 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, %61
  store i32 %65, i32* %63, align 4
  %66 = load %struct.r8180_priv*, %struct.r8180_priv** %8, align 8
  %67 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %86, label %70

70:                                               ; preds = %59
  %71 = load %struct.r8180_priv*, %struct.r8180_priv** %8, align 8
  %72 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %71, i32 0, i32 3
  store i32 0, i32* %72, align 4
  store i32 1, i32* %9, align 4
  %73 = load i32, i32* %11, align 4
  %74 = icmp eq i32 %73, 130
  br i1 %74, label %75, label %85

75:                                               ; preds = %70
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* @RF_CHANGE_BY_HW, align 4
  %78 = icmp sge i32 %76, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %75
  %80 = load %struct.r8180_priv*, %struct.r8180_priv** %8, align 8
  %81 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %79
  store i32 1, i32* %10, align 4
  br label %85

85:                                               ; preds = %84, %79, %75, %70
  br label %87

86:                                               ; preds = %59
  br label %87

87:                                               ; preds = %86, %85
  br label %111

88:                                               ; preds = %54
  %89 = load %struct.r8180_priv*, %struct.r8180_priv** %8, align 8
  %90 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @RF_CHANGE_BY_IPS, align 4
  %93 = icmp sgt i32 %91, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %88
  %95 = load %struct.net_device*, %struct.net_device** %5, align 8
  %96 = load i32, i32* @disas_lv_ss, align 4
  %97 = call i32 @MgntDisconnect(%struct.net_device* %95, i32 %96)
  br label %98

98:                                               ; preds = %94, %88
  %99 = load i32, i32* %7, align 4
  %100 = load %struct.r8180_priv*, %struct.r8180_priv** %8, align 8
  %101 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = or i32 %102, %99
  store i32 %103, i32* %101, align 4
  store i32 1, i32* %9, align 4
  br label %111

104:                                              ; preds = %54
  %105 = load i32, i32* %7, align 4
  %106 = load %struct.r8180_priv*, %struct.r8180_priv** %8, align 8
  %107 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = or i32 %108, %105
  store i32 %109, i32* %107, align 4
  store i32 1, i32* %9, align 4
  br label %111

110:                                              ; preds = %54
  br label %111

111:                                              ; preds = %110, %104, %98, %87
  %112 = load i32, i32* %9, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %135

114:                                              ; preds = %111
  %115 = load %struct.net_device*, %struct.net_device** %5, align 8
  %116 = load i32, i32* %6, align 4
  %117 = call i32 @SetRFPowerState(%struct.net_device* %115, i32 %116)
  %118 = load i32, i32* %6, align 4
  %119 = icmp eq i32 %118, 129
  br i1 %119, label %120, label %127

120:                                              ; preds = %114
  %121 = load %struct.net_device*, %struct.net_device** %5, align 8
  %122 = call i32 @HalEnableRx8185Dummy(%struct.net_device* %121)
  %123 = load i32, i32* %10, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %120
  br label %126

126:                                              ; preds = %125, %120
  br label %134

127:                                              ; preds = %114
  %128 = load i32, i32* %6, align 4
  %129 = icmp eq i32 %128, 130
  br i1 %129, label %130, label %133

130:                                              ; preds = %127
  %131 = load %struct.net_device*, %struct.net_device** %5, align 8
  %132 = call i32 @HalDisableRx8185Dummy(%struct.net_device* %131)
  br label %133

133:                                              ; preds = %130, %127
  br label %134

134:                                              ; preds = %133, %126
  br label %136

135:                                              ; preds = %111
  br label %136

136:                                              ; preds = %135, %134
  %137 = load %struct.r8180_priv*, %struct.r8180_priv** %8, align 8
  %138 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %137, i32 0, i32 2
  %139 = load i64, i64* %13, align 8
  %140 = call i32 @spin_lock_irqsave(i32* %138, i64 %139)
  %141 = load %struct.r8180_priv*, %struct.r8180_priv** %8, align 8
  %142 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %141, i32 0, i32 0
  store i32 0, i32* %142, align 4
  %143 = load %struct.r8180_priv*, %struct.r8180_priv** %8, align 8
  %144 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %143, i32 0, i32 2
  %145 = load i64, i64* %13, align 8
  %146 = call i32 @spin_unlock_irqrestore(i32* %144, i64 %145)
  %147 = load i32, i32* %9, align 4
  store i32 %147, i32* %4, align 4
  br label %148

148:                                              ; preds = %136, %42
  %149 = load i32, i32* %4, align 4
  ret i32 %149
}

declare dso_local i64 @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @MgntDisconnect(%struct.net_device*, i32) #1

declare dso_local i32 @SetRFPowerState(%struct.net_device*, i32) #1

declare dso_local i32 @HalEnableRx8185Dummy(%struct.net_device*) #1

declare dso_local i32 @HalDisableRx8185Dummy(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
