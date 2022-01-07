; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmmsta.c_zfComputeBssInfoWeightValue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmmsta.c_zfComputeBssInfoWeightValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @zfComputeBssInfoWeightValue(i32* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  store i64 15, i64* %14, align 8
  store i64 15, i64* %15, align 8
  store i64 30, i64* %16, align 8
  store i64 16, i64* %17, align 8
  store i64 32, i64* %18, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = call i32 @zmw_get_wlan_dev(i32* %19)
  %21 = load i64, i64* %8, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %5
  %24 = load i64, i64* %11, align 8
  %25 = load i64, i64* %12, align 8
  %26 = add nsw i64 %24, %25
  store i64 %26, i64* %6, align 8
  br label %72

27:                                               ; preds = %5
  %28 = load i64, i64* %9, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %27
  %31 = load i64, i64* %10, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %30
  %34 = load i64, i64* %11, align 8
  %35 = icmp slt i64 %34, 18
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load i64, i64* %11, align 8
  %38 = load i64, i64* %13, align 8
  %39 = add nsw i64 %37, %38
  store i64 %39, i64* %6, align 8
  br label %72

40:                                               ; preds = %33
  %41 = load i64, i64* %11, align 8
  %42 = load i64, i64* %14, align 8
  %43 = add nsw i64 %41, %42
  store i64 %43, i64* %6, align 8
  br label %72

44:                                               ; preds = %30, %27
  %45 = load i64, i64* %9, align 8
  %46 = icmp eq i64 %45, 1
  br i1 %46, label %47, label %61

47:                                               ; preds = %44
  %48 = load i64, i64* %10, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %47
  %51 = load i64, i64* %11, align 8
  %52 = icmp slt i64 %51, 23
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load i64, i64* %11, align 8
  %55 = load i64, i64* %15, align 8
  %56 = add nsw i64 %54, %55
  store i64 %56, i64* %6, align 8
  br label %72

57:                                               ; preds = %50
  %58 = load i64, i64* %11, align 8
  %59 = load i64, i64* %16, align 8
  %60 = add nsw i64 %58, %59
  store i64 %60, i64* %6, align 8
  br label %72

61:                                               ; preds = %47, %44
  %62 = load i64, i64* %11, align 8
  %63 = icmp slt i64 %62, 16
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = load i64, i64* %11, align 8
  %66 = load i64, i64* %17, align 8
  %67 = add nsw i64 %65, %66
  store i64 %67, i64* %6, align 8
  br label %72

68:                                               ; preds = %61
  %69 = load i64, i64* %11, align 8
  %70 = load i64, i64* %18, align 8
  %71 = add nsw i64 %69, %70
  store i64 %71, i64* %6, align 8
  br label %72

72:                                               ; preds = %68, %64, %57, %53, %40, %36, %23
  %73 = load i64, i64* %6, align 8
  ret i64 %73
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
