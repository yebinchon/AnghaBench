; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_rtl8225z2.c_DbmToTxPwrIdx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_rtl8225z2.c_DbmToTxPwrIdx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r8180_priv = type { i64 }

@VERSION_8187S_B = common dso_local global i64 0, align 8
@WIRELESS_MODE_G = common dso_local global i64 0, align 8
@WIRELESS_MODE_B = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DbmToTxPwrIdx(%struct.r8180_priv* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.r8180_priv*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.r8180_priv* %0, %struct.r8180_priv** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 1, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = load %struct.r8180_priv*, %struct.r8180_priv** %4, align 8
  %11 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @VERSION_8187S_B, align 8
  %14 = icmp sge i64 %12, %13
  br i1 %14, label %15, label %54

15:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* @WIRELESS_MODE_G, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %33

19:                                               ; preds = %15
  store i32 0, i32* %7, align 4
  %20 = load i32, i32* %6, align 4
  %21 = mul nsw i32 2, %20
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i32 0, i32* %8, align 4
  br label %32

25:                                               ; preds = %19
  %26 = load i32, i32* %9, align 4
  %27 = icmp sgt i32 %26, 40
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 40, i32* %8, align 4
  br label %31

29:                                               ; preds = %25
  %30 = load i32, i32* %9, align 4
  store i32 %30, i32* %8, align 4
  br label %31

31:                                               ; preds = %29, %28
  br label %32

32:                                               ; preds = %31, %24
  br label %53

33:                                               ; preds = %15
  %34 = load i64, i64* %5, align 8
  %35 = load i64, i64* @WIRELESS_MODE_B, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %52

37:                                               ; preds = %33
  store i32 0, i32* %7, align 4
  %38 = load i32, i32* %6, align 4
  %39 = mul nsw i32 4, %38
  %40 = sub nsw i32 %39, 52
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  store i32 0, i32* %8, align 4
  br label %51

44:                                               ; preds = %37
  %45 = load i32, i32* %9, align 4
  %46 = icmp sgt i32 %45, 28
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store i32 28, i32* %8, align 4
  br label %50

48:                                               ; preds = %44
  %49 = load i32, i32* %9, align 4
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %48, %47
  br label %51

51:                                               ; preds = %50, %43
  br label %52

52:                                               ; preds = %51, %33
  br label %53

53:                                               ; preds = %52, %32
  br label %54

54:                                               ; preds = %53, %3
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %69

57:                                               ; preds = %54
  %58 = load i32, i32* %6, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  store i32 0, i32* %8, align 4
  br label %68

61:                                               ; preds = %57
  %62 = load i32, i32* %6, align 4
  %63 = icmp sgt i32 %62, 35
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  store i32 35, i32* %8, align 4
  br label %67

65:                                               ; preds = %61
  %66 = load i32, i32* %6, align 4
  store i32 %66, i32* %8, align 4
  br label %67

67:                                               ; preds = %65, %64
  br label %68

68:                                               ; preds = %67, %60
  br label %69

69:                                               ; preds = %68, %54
  %70 = load i32, i32* %8, align 4
  ret i32 %70
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
