; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vme/extr_vme.c_vme_check_window.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vme/extr_vme.c_vme_check_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VME_A16_MAX = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i32 0, align 4
@VME_A24_MAX = common dso_local global i64 0, align 8
@VME_A32_MAX = common dso_local global i64 0, align 8
@VME_CRCSR_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"Invalid address space\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i64)* @vme_check_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vme_check_window(i32 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %67 [
    i32 136, label %9
    i32 135, label %23
    i32 134, label %37
    i32 133, label %51
    i32 132, label %52
    i32 131, label %66
    i32 130, label %66
    i32 129, label %66
    i32 128, label %66
  ]

9:                                                ; preds = %3
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* %6, align 8
  %12 = add i64 %10, %11
  %13 = load i64, i64* @VME_A16_MAX, align 8
  %14 = icmp ugt i64 %12, %13
  br i1 %14, label %19, label %15

15:                                               ; preds = %9
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* @VME_A16_MAX, align 8
  %18 = icmp ugt i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %15, %9
  %20 = load i32, i32* @EFAULT, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %7, align 4
  br label %22

22:                                               ; preds = %19, %15
  br label %71

23:                                               ; preds = %3
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* %6, align 8
  %26 = add i64 %24, %25
  %27 = load i64, i64* @VME_A24_MAX, align 8
  %28 = icmp ugt i64 %26, %27
  br i1 %28, label %33, label %29

29:                                               ; preds = %23
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* @VME_A24_MAX, align 8
  %32 = icmp ugt i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %29, %23
  %34 = load i32, i32* @EFAULT, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %33, %29
  br label %71

37:                                               ; preds = %3
  %38 = load i64, i64* %5, align 8
  %39 = load i64, i64* %6, align 8
  %40 = add i64 %38, %39
  %41 = load i64, i64* @VME_A32_MAX, align 8
  %42 = icmp ugt i64 %40, %41
  br i1 %42, label %47, label %43

43:                                               ; preds = %37
  %44 = load i64, i64* %5, align 8
  %45 = load i64, i64* @VME_A32_MAX, align 8
  %46 = icmp ugt i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %43, %37
  %48 = load i32, i32* @EFAULT, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %47, %43
  br label %71

51:                                               ; preds = %3
  br label %71

52:                                               ; preds = %3
  %53 = load i64, i64* %5, align 8
  %54 = load i64, i64* %6, align 8
  %55 = add i64 %53, %54
  %56 = load i64, i64* @VME_CRCSR_MAX, align 8
  %57 = icmp ugt i64 %55, %56
  br i1 %57, label %62, label %58

58:                                               ; preds = %52
  %59 = load i64, i64* %5, align 8
  %60 = load i64, i64* @VME_CRCSR_MAX, align 8
  %61 = icmp ugt i64 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %58, %52
  %63 = load i32, i32* @EFAULT, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %7, align 4
  br label %65

65:                                               ; preds = %62, %58
  br label %71

66:                                               ; preds = %3, %3, %3, %3
  br label %71

67:                                               ; preds = %3
  %68 = call i32 @printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %7, align 4
  br label %71

71:                                               ; preds = %67, %66, %65, %51, %50, %36, %22
  %72 = load i32, i32* %7, align 4
  ret i32 %72
}

declare dso_local i32 @printk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
