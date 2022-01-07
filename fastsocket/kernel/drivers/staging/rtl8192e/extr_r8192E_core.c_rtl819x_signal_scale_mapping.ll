; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r8192E_core.c_rtl819x_signal_scale_mapping.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r8192E_core.c_rtl819x_signal_scale_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @rtl819x_signal_scale_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rtl819x_signal_scale_mapping(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = icmp sge i64 %4, 61
  br i1 %5, label %6, label %14

6:                                                ; preds = %1
  %7 = load i64, i64* %2, align 8
  %8 = icmp sle i64 %7, 100
  br i1 %8, label %9, label %14

9:                                                ; preds = %6
  %10 = load i64, i64* %2, align 8
  %11 = sub nsw i64 %10, 60
  %12 = sdiv i64 %11, 4
  %13 = add nsw i64 90, %12
  store i64 %13, i64* %3, align 8
  br label %83

14:                                               ; preds = %6, %1
  %15 = load i64, i64* %2, align 8
  %16 = icmp sge i64 %15, 41
  br i1 %16, label %17, label %25

17:                                               ; preds = %14
  %18 = load i64, i64* %2, align 8
  %19 = icmp sle i64 %18, 60
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = load i64, i64* %2, align 8
  %22 = sub nsw i64 %21, 40
  %23 = sdiv i64 %22, 2
  %24 = add nsw i64 78, %23
  store i64 %24, i64* %3, align 8
  br label %82

25:                                               ; preds = %17, %14
  %26 = load i64, i64* %2, align 8
  %27 = icmp sge i64 %26, 31
  br i1 %27, label %28, label %35

28:                                               ; preds = %25
  %29 = load i64, i64* %2, align 8
  %30 = icmp sle i64 %29, 40
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load i64, i64* %2, align 8
  %33 = sub nsw i64 %32, 30
  %34 = add nsw i64 66, %33
  store i64 %34, i64* %3, align 8
  br label %81

35:                                               ; preds = %28, %25
  %36 = load i64, i64* %2, align 8
  %37 = icmp sge i64 %36, 21
  br i1 %37, label %38, label %45

38:                                               ; preds = %35
  %39 = load i64, i64* %2, align 8
  %40 = icmp sle i64 %39, 30
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load i64, i64* %2, align 8
  %43 = sub nsw i64 %42, 20
  %44 = add nsw i64 54, %43
  store i64 %44, i64* %3, align 8
  br label %80

45:                                               ; preds = %38, %35
  %46 = load i64, i64* %2, align 8
  %47 = icmp sge i64 %46, 5
  br i1 %47, label %48, label %57

48:                                               ; preds = %45
  %49 = load i64, i64* %2, align 8
  %50 = icmp sle i64 %49, 20
  br i1 %50, label %51, label %57

51:                                               ; preds = %48
  %52 = load i64, i64* %2, align 8
  %53 = sub nsw i64 %52, 5
  %54 = mul nsw i64 %53, 2
  %55 = sdiv i64 %54, 3
  %56 = add nsw i64 42, %55
  store i64 %56, i64* %3, align 8
  br label %79

57:                                               ; preds = %48, %45
  %58 = load i64, i64* %2, align 8
  %59 = icmp eq i64 %58, 4
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  store i64 36, i64* %3, align 8
  br label %78

61:                                               ; preds = %57
  %62 = load i64, i64* %2, align 8
  %63 = icmp eq i64 %62, 3
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  store i64 27, i64* %3, align 8
  br label %77

65:                                               ; preds = %61
  %66 = load i64, i64* %2, align 8
  %67 = icmp eq i64 %66, 2
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  store i64 18, i64* %3, align 8
  br label %76

69:                                               ; preds = %65
  %70 = load i64, i64* %2, align 8
  %71 = icmp eq i64 %70, 1
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  store i64 9, i64* %3, align 8
  br label %75

73:                                               ; preds = %69
  %74 = load i64, i64* %2, align 8
  store i64 %74, i64* %3, align 8
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
  %84 = load i64, i64* %3, align 8
  ret i64 %84
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
