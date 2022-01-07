; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_dm.c_DIG_Zebra.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_dm.c_DIG_Zebra.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8180_priv = type { i32, i32, i32, i32, i32, i32, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DIG_Zebra(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.r8180_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = call %struct.r8180_priv* @ieee80211_priv(%struct.net_device* %11)
  store %struct.r8180_priv* %12, %struct.r8180_priv** %3, align 8
  store i32 7, i32* %8, align 4
  store i32 4, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %13 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %14 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = and i32 %15, 65535
  store i32 %16, i32* %4, align 4
  %17 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %18 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = ashr i32 %19, 16
  %21 = and i32 %20, 65535
  store i32 %21, i32* %5, align 4
  store i32 21, i32* %6, align 4
  %22 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %23 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %22, i32 0, i32 7
  %24 = load i64, i64* %23, align 8
  %25 = trunc i64 %24 to i32
  %26 = shl i32 %25, 8
  store i32 %26, i32* %7, align 4
  %27 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %28 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %1
  %32 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %33 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %32, i32 0, i32 1
  store i32 4, i32* %33, align 4
  br label %34

34:                                               ; preds = %31, %1
  store i32 32, i32* %6, align 4
  %35 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %36 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = sub nsw i32 2000, %37
  store i32 %38, i32* %10, align 4
  %39 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %40 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %39, i32 0, i32 2
  store i32 0, i32* %40, align 8
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %34
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %10, align 4
  %46 = mul nsw i32 %44, %45
  %47 = sdiv i32 %46, 2000
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %10, align 4
  %50 = mul nsw i32 %48, %49
  %51 = sdiv i32 %50, 2000
  store i32 %51, i32* %7, align 4
  br label %53

52:                                               ; preds = %34
  br label %53

53:                                               ; preds = %52, %43
  store i32 8, i32* %8, align 4
  %54 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %55 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp sgt i32 %57, %58
  br i1 %59, label %60, label %113

60:                                               ; preds = %53
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp sgt i32 %61, %62
  br i1 %63, label %64, label %99

64:                                               ; preds = %60
  %65 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %66 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 8
  %69 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %70 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = icmp sgt i32 %71, 1
  br i1 %72, label %73, label %98

73:                                               ; preds = %64
  %74 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %75 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %93

79:                                               ; preds = %73
  %80 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %81 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %84 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %83, i32 0, i32 5
  store i32 %82, i32* %84, align 4
  %85 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %86 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, 1
  %89 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %90 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  %91 = load %struct.net_device*, %struct.net_device** %2, align 8
  %92 = call i32 @UpdateInitialGain(%struct.net_device* %91)
  br label %93

93:                                               ; preds = %79, %73
  %94 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %95 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %94, i32 0, i32 4
  store i32 0, i32* %95, align 8
  %96 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %97 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %96, i32 0, i32 6
  store i32 0, i32* %97, align 8
  br label %98

98:                                               ; preds = %93, %64
  br label %110

99:                                               ; preds = %60
  %100 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %101 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 8
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %99
  %105 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %106 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 8
  %108 = add nsw i32 %107, -1
  store i32 %108, i32* %106, align 8
  br label %109

109:                                              ; preds = %104, %99
  br label %110

110:                                              ; preds = %109, %98
  %111 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %112 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %111, i32 0, i32 6
  store i32 0, i32* %112, align 8
  br label %158

113:                                              ; preds = %53
  %114 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %115 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 8
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %113
  %119 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %120 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 8
  %122 = add nsw i32 %121, -1
  store i32 %122, i32* %120, align 8
  br label %123

123:                                              ; preds = %118, %113
  %124 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %125 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %124, i32 0, i32 6
  %126 = load i32, i32* %125, align 8
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %125, align 8
  %128 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %129 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %128, i32 0, i32 6
  %130 = load i32, i32* %129, align 8
  %131 = icmp sgt i32 %130, 9
  br i1 %131, label %132, label %157

132:                                              ; preds = %123
  %133 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %134 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* %9, align 4
  %137 = icmp sgt i32 %135, %136
  br i1 %137, label %138, label %152

138:                                              ; preds = %132
  %139 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %140 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %143 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %142, i32 0, i32 5
  store i32 %141, i32* %143, align 4
  %144 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %145 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = sub nsw i32 %146, 1
  %148 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %149 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %148, i32 0, i32 1
  store i32 %147, i32* %149, align 4
  %150 = load %struct.net_device*, %struct.net_device** %2, align 8
  %151 = call i32 @UpdateInitialGain(%struct.net_device* %150)
  br label %152

152:                                              ; preds = %138, %132
  %153 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %154 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %153, i32 0, i32 4
  store i32 0, i32* %154, align 8
  %155 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %156 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %155, i32 0, i32 6
  store i32 0, i32* %156, align 8
  br label %157

157:                                              ; preds = %152, %123
  br label %158

158:                                              ; preds = %157, %110
  ret void
}

declare dso_local %struct.r8180_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @UpdateInitialGain(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
