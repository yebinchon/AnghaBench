; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/ieee80211/extr_rtl819x_HTProc.c_HTGetHighestMCSRate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/ieee80211/extr_rtl819x_HTProc.c_HTGetHighestMCSRate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_device = type { i32 }

@IEEE80211_DL_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"pMCSRateSet or pMCSFilter can't be null in HTGetHighestMCSRate()\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @HTGetHighestMCSRate(%struct.ieee80211_device* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [16 x i32], align 16
  store %struct.ieee80211_device* %0, %struct.ieee80211_device** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %11, align 4
  %13 = load i32*, i32** %6, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32*, i32** %7, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %15, %3
  %19 = load i32, i32* @IEEE80211_DL_ERR, align 4
  %20 = call i32 @IEEE80211_DEBUG(i32 %19, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %115

21:                                               ; preds = %15
  store i32 0, i32* %8, align 4
  br label %22

22:                                               ; preds = %40, %21
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %23, 16
  br i1 %24, label %25, label %43

25:                                               ; preds = %22
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %7, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %30, %35
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 %38
  store i32 %36, i32* %39, align 4
  br label %40

40:                                               ; preds = %25
  %41 = load i32, i32* %8, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %8, align 4
  br label %22

43:                                               ; preds = %22
  store i32 0, i32* %8, align 4
  br label %44

44:                                               ; preds = %55, %43
  %45 = load i32, i32* %8, align 4
  %46 = icmp slt i32 %45, 16
  br i1 %46, label %47, label %58

47:                                               ; preds = %44
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %58

54:                                               ; preds = %47
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %8, align 4
  br label %44

58:                                               ; preds = %53, %44
  %59 = load i32, i32* %8, align 4
  %60 = icmp eq i32 %59, 16
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  store i32 0, i32* %4, align 4
  br label %115

62:                                               ; preds = %58
  store i32 0, i32* %8, align 4
  br label %63

63:                                               ; preds = %109, %62
  %64 = load i32, i32* %8, align 4
  %65 = icmp slt i32 %64, 16
  br i1 %65, label %66, label %112

66:                                               ; preds = %63
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %108

72:                                               ; preds = %66
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 %74
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %77

77:                                               ; preds = %104, %72
  %78 = load i32, i32* %9, align 4
  %79 = icmp slt i32 %78, 8
  br i1 %79, label %80, label %107

80:                                               ; preds = %77
  %81 = load i32, i32* %10, align 4
  %82 = srem i32 %81, 2
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %101

84:                                               ; preds = %80
  %85 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %86 = load i32, i32* %8, align 4
  %87 = mul nsw i32 8, %86
  %88 = load i32, i32* %9, align 4
  %89 = add nsw i32 %87, %88
  %90 = call i64 @HTMcsToDataRate(%struct.ieee80211_device* %85, i32 %89)
  %91 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %92 = load i32, i32* %11, align 4
  %93 = call i64 @HTMcsToDataRate(%struct.ieee80211_device* %91, i32 %92)
  %94 = icmp sgt i64 %90, %93
  br i1 %94, label %95, label %100

95:                                               ; preds = %84
  %96 = load i32, i32* %8, align 4
  %97 = mul nsw i32 8, %96
  %98 = load i32, i32* %9, align 4
  %99 = add nsw i32 %97, %98
  store i32 %99, i32* %11, align 4
  br label %100

100:                                              ; preds = %95, %84
  br label %101

101:                                              ; preds = %100, %80
  %102 = load i32, i32* %10, align 4
  %103 = ashr i32 %102, 1
  store i32 %103, i32* %10, align 4
  br label %104

104:                                              ; preds = %101
  %105 = load i32, i32* %9, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %9, align 4
  br label %77

107:                                              ; preds = %77
  br label %108

108:                                              ; preds = %107, %66
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %8, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %8, align 4
  br label %63

112:                                              ; preds = %63
  %113 = load i32, i32* %11, align 4
  %114 = or i32 %113, 128
  store i32 %114, i32* %4, align 4
  br label %115

115:                                              ; preds = %112, %61, %18
  %116 = load i32, i32* %4, align 4
  ret i32 %116
}

declare dso_local i32 @IEEE80211_DEBUG(i32, i8*) #1

declare dso_local i64 @HTMcsToDataRate(%struct.ieee80211_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
