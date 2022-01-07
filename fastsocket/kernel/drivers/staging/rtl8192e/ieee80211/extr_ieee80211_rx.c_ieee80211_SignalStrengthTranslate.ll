; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/ieee80211/extr_ieee80211_rx.c_ieee80211_SignalStrengthTranslate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/ieee80211/extr_ieee80211_rx.c_ieee80211_SignalStrengthTranslate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ieee80211_SignalStrengthTranslate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_SignalStrengthTranslate(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp sge i32 %4, 71
  br i1 %5, label %6, label %14

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  %8 = icmp sle i32 %7, 100
  br i1 %8, label %9, label %14

9:                                                ; preds = %6
  %10 = load i32, i32* %2, align 4
  %11 = sub nsw i32 %10, 70
  %12 = sdiv i32 %11, 3
  %13 = add nsw i32 90, %12
  store i32 %13, i32* %3, align 4
  br label %83

14:                                               ; preds = %6, %1
  %15 = load i32, i32* %2, align 4
  %16 = icmp sge i32 %15, 41
  br i1 %16, label %17, label %25

17:                                               ; preds = %14
  %18 = load i32, i32* %2, align 4
  %19 = icmp sle i32 %18, 70
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = load i32, i32* %2, align 4
  %22 = sub nsw i32 %21, 40
  %23 = sdiv i32 %22, 3
  %24 = add nsw i32 78, %23
  store i32 %24, i32* %3, align 4
  br label %82

25:                                               ; preds = %17, %14
  %26 = load i32, i32* %2, align 4
  %27 = icmp sge i32 %26, 31
  br i1 %27, label %28, label %35

28:                                               ; preds = %25
  %29 = load i32, i32* %2, align 4
  %30 = icmp sle i32 %29, 40
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load i32, i32* %2, align 4
  %33 = sub nsw i32 %32, 30
  %34 = add nsw i32 66, %33
  store i32 %34, i32* %3, align 4
  br label %81

35:                                               ; preds = %28, %25
  %36 = load i32, i32* %2, align 4
  %37 = icmp sge i32 %36, 21
  br i1 %37, label %38, label %45

38:                                               ; preds = %35
  %39 = load i32, i32* %2, align 4
  %40 = icmp sle i32 %39, 30
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load i32, i32* %2, align 4
  %43 = sub nsw i32 %42, 20
  %44 = add nsw i32 54, %43
  store i32 %44, i32* %3, align 4
  br label %80

45:                                               ; preds = %38, %35
  %46 = load i32, i32* %2, align 4
  %47 = icmp sge i32 %46, 5
  br i1 %47, label %48, label %57

48:                                               ; preds = %45
  %49 = load i32, i32* %2, align 4
  %50 = icmp sle i32 %49, 20
  br i1 %50, label %51, label %57

51:                                               ; preds = %48
  %52 = load i32, i32* %2, align 4
  %53 = sub nsw i32 %52, 5
  %54 = mul nsw i32 %53, 2
  %55 = sdiv i32 %54, 3
  %56 = add nsw i32 42, %55
  store i32 %56, i32* %3, align 4
  br label %79

57:                                               ; preds = %48, %45
  %58 = load i32, i32* %2, align 4
  %59 = icmp eq i32 %58, 4
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  store i32 36, i32* %3, align 4
  br label %78

61:                                               ; preds = %57
  %62 = load i32, i32* %2, align 4
  %63 = icmp eq i32 %62, 3
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  store i32 27, i32* %3, align 4
  br label %77

65:                                               ; preds = %61
  %66 = load i32, i32* %2, align 4
  %67 = icmp eq i32 %66, 2
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  store i32 18, i32* %3, align 4
  br label %76

69:                                               ; preds = %65
  %70 = load i32, i32* %2, align 4
  %71 = icmp eq i32 %70, 1
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  store i32 9, i32* %3, align 4
  br label %75

73:                                               ; preds = %69
  %74 = load i32, i32* %2, align 4
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %73, %72
  br label %76

76:                                               ; preds = %75, %68
  br label %77

77:                                               ; preds = %76, %64
  br label %78

78:                                               ; preds = %77, %60
  br label %79

79:                                               ; preds = %78, %51
  br label %80

80:                                               ; preds = %79, %41
  br label %81

81:                                               ; preds = %80, %31
  br label %82

82:                                               ; preds = %81, %20
  br label %83

83:                                               ; preds = %82, %9
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
