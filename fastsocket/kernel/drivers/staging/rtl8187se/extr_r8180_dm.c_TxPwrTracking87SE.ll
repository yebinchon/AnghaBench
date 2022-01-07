; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_dm.c_TxPwrTracking87SE.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_dm.c_TxPwrTracking87SE.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8180_priv = type { i32, i8*, i8*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@EN_LPF_CAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @TxPwrTracking87SE(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.r8180_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call i64 @ieee80211_priv(%struct.net_device* %9)
  %11 = inttoptr i64 %10 to %struct.r8180_priv*
  store %struct.r8180_priv* %11, %struct.r8180_priv** %3, align 8
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = load i32, i32* @EN_LPF_CAL, align 4
  %14 = call i32 @read_nic_byte(%struct.net_device* %12, i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = and i32 %15, 240
  %17 = ashr i32 %16, 4
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp sgt i32 %18, 12
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %23

21:                                               ; preds = %1
  %22 = load i32, i32* %5, align 4
  br label %23

23:                                               ; preds = %21, %20
  %24 = phi i32 [ 12, %20 ], [ %22, %21 ]
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %27 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %25, %28
  br i1 %29, label %30, label %143

30:                                               ; preds = %23
  store i32 1, i32* %6, align 4
  br label %31

31:                                               ; preds = %131, %30
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %32, 15
  br i1 %33, label %34, label %134

34:                                               ; preds = %31
  %35 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %36 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %35, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  %41 = load i8, i8* %40, align 1
  store i8 %41, i8* %7, align 1
  %42 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %43 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %42, i32 0, i32 2
  %44 = load i8*, i8** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  %48 = load i8, i8* %47, align 1
  store i8 %48, i8* %8, align 1
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %51 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp sgt i32 %49, %52
  br i1 %53, label %54, label %85

54:                                               ; preds = %34
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %57 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = sub nsw i32 %55, %58
  %60 = mul nsw i32 %59, 2
  %61 = load i8, i8* %7, align 1
  %62 = sext i8 %61 to i32
  %63 = add nsw i32 %62, %60
  %64 = trunc i32 %63 to i8
  store i8 %64, i8* %7, align 1
  %65 = load i32, i32* %5, align 4
  %66 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %67 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = sub nsw i32 %65, %68
  %70 = mul nsw i32 %69, 2
  %71 = load i8, i8* %8, align 1
  %72 = sext i8 %71 to i32
  %73 = add nsw i32 %72, %70
  %74 = trunc i32 %73 to i8
  store i8 %74, i8* %8, align 1
  %75 = load i8, i8* %7, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp sgt i32 %76, 35
  br i1 %77, label %78, label %79

78:                                               ; preds = %54
  store i8 35, i8* %7, align 1
  br label %79

79:                                               ; preds = %78, %54
  %80 = load i8, i8* %8, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp sgt i32 %81, 35
  br i1 %82, label %83, label %84

83:                                               ; preds = %79
  store i8 35, i8* %8, align 1
  br label %84

84:                                               ; preds = %83, %79
  br label %116

85:                                               ; preds = %34
  %86 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %87 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %5, align 4
  %90 = sub nsw i32 %88, %89
  %91 = mul nsw i32 %90, 2
  %92 = load i8, i8* %7, align 1
  %93 = sext i8 %92 to i32
  %94 = sub nsw i32 %93, %91
  %95 = trunc i32 %94 to i8
  store i8 %95, i8* %7, align 1
  %96 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %97 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* %5, align 4
  %100 = sub nsw i32 %98, %99
  %101 = mul nsw i32 %100, 2
  %102 = load i8, i8* %8, align 1
  %103 = sext i8 %102 to i32
  %104 = sub nsw i32 %103, %101
  %105 = trunc i32 %104 to i8
  store i8 %105, i8* %8, align 1
  %106 = load i8, i8* %7, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %85
  store i8 0, i8* %7, align 1
  br label %110

110:                                              ; preds = %109, %85
  %111 = load i8, i8* %8, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %110
  store i8 0, i8* %8, align 1
  br label %115

115:                                              ; preds = %114, %110
  br label %116

116:                                              ; preds = %115, %84
  %117 = load i8, i8* %7, align 1
  %118 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %119 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %118, i32 0, i32 1
  %120 = load i8*, i8** %119, align 8
  %121 = load i32, i32* %6, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8, i8* %120, i64 %122
  store i8 %117, i8* %123, align 1
  %124 = load i8, i8* %8, align 1
  %125 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %126 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %125, i32 0, i32 2
  %127 = load i8*, i8** %126, align 8
  %128 = load i32, i32* %6, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8, i8* %127, i64 %129
  store i8 %124, i8* %130, align 1
  br label %131

131:                                              ; preds = %116
  %132 = load i32, i32* %6, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %6, align 4
  br label %31

134:                                              ; preds = %31
  %135 = load %struct.net_device*, %struct.net_device** %2, align 8
  %136 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %137 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %136, i32 0, i32 3
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @rtl8225z2_SetTXPowerLevel(%struct.net_device* %135, i32 %141)
  br label %143

143:                                              ; preds = %134, %23
  %144 = load i32, i32* %5, align 4
  %145 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %146 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %145, i32 0, i32 0
  store i32 %144, i32* %146, align 8
  ret void
}

declare dso_local i64 @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @read_nic_byte(%struct.net_device*, i32) #1

declare dso_local i32 @rtl8225z2_SetTXPowerLevel(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
