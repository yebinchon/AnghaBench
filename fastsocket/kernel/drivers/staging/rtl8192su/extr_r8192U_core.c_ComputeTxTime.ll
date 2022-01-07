; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192U_core.c_ComputeTxTime.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192U_core.c_ComputeTxTime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ComputeTxTime(i32 %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i64 @rtl8192_IsWirelessBMode(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %49

15:                                               ; preds = %4
  %16 = load i64, i64* %7, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %15
  %19 = load i64, i64* %8, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i32, i32* %6, align 4
  %23 = icmp eq i32 %22, 10
  br i1 %23, label %24, label %31

24:                                               ; preds = %21, %18, %15
  %25 = load i32, i32* %5, align 4
  %26 = mul nsw i32 %25, 8
  %27 = load i32, i32* %6, align 4
  %28 = sdiv i32 %27, 10
  %29 = sdiv i32 %26, %28
  %30 = add nsw i32 192, %29
  store i32 %30, i32* %9, align 4
  br label %38

31:                                               ; preds = %21
  %32 = load i32, i32* %5, align 4
  %33 = mul nsw i32 %32, 8
  %34 = load i32, i32* %6, align 4
  %35 = sdiv i32 %34, 10
  %36 = sdiv i32 %33, %35
  %37 = add nsw i32 96, %36
  store i32 %37, i32* %9, align 4
  br label %38

38:                                               ; preds = %31, %24
  %39 = load i32, i32* %5, align 4
  %40 = mul nsw i32 %39, 8
  %41 = load i32, i32* %6, align 4
  %42 = sdiv i32 %41, 10
  %43 = srem i32 %40, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %38
  %46 = load i32, i32* %9, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %9, align 4
  br label %48

48:                                               ; preds = %45, %38
  br label %72

49:                                               ; preds = %4
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @N_DBPSOfRate(i32 %50)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %5, align 4
  %53 = mul nsw i32 8, %52
  %54 = add nsw i32 16, %53
  %55 = add nsw i32 %54, 6
  %56 = load i32, i32* %10, align 4
  %57 = sdiv i32 %55, %56
  %58 = load i32, i32* %5, align 4
  %59 = mul nsw i32 8, %58
  %60 = add nsw i32 16, %59
  %61 = add nsw i32 %60, 6
  %62 = load i32, i32* %10, align 4
  %63 = srem i32 %61, %62
  %64 = icmp ne i32 %63, 0
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i32 1, i32 0
  %67 = add nsw i32 %57, %66
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %11, align 4
  %69 = mul nsw i32 4, %68
  %70 = add nsw i32 20, %69
  %71 = add nsw i32 %70, 6
  store i32 %71, i32* %9, align 4
  br label %72

72:                                               ; preds = %49, %48
  %73 = load i32, i32* %9, align 4
  ret i32 %73
}

declare dso_local i64 @rtl8192_IsWirelessBMode(i32) #1

declare dso_local i32 @N_DBPSOfRate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
