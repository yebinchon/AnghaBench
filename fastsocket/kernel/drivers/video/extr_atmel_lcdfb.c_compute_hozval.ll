; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_atmel_lcdfb.c_compute_hozval.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_atmel_lcdfb.c_compute_hozval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ATMEL_LCDC_DISTYPE = common dso_local global i64 0, align 8
@ATMEL_LCDC_DISTYPE_TFT = common dso_local global i64 0, align 8
@ATMEL_LCDC_DISTYPE_STNCOLOR = common dso_local global i64 0, align 8
@ATMEL_LCDC_IFWIDTH = common dso_local global i64 0, align 8
@ATMEL_LCDC_IFWIDTH_4 = common dso_local global i64 0, align 8
@ATMEL_LCDC_IFWIDTH_8 = common dso_local global i64 0, align 8
@ATMEL_LCDC_SCANMOD = common dso_local global i64 0, align 8
@ATMEL_LCDC_SCANMOD_DUAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64)* @compute_hozval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @compute_hozval(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = call i64 (...) @cpu_is_at91sam9261()
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %2
  %10 = call i64 (...) @cpu_is_at91sam9g10()
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %9
  %13 = call i64 (...) @cpu_is_at32ap7000()
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = load i64, i64* %4, align 8
  store i64 %16, i64* %3, align 8
  br label %60

17:                                               ; preds = %12, %9, %2
  %18 = load i64, i64* %4, align 8
  store i64 %18, i64* %6, align 8
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* @ATMEL_LCDC_DISTYPE, align 8
  %21 = and i64 %19, %20
  %22 = load i64, i64* @ATMEL_LCDC_DISTYPE_TFT, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %58

24:                                               ; preds = %17
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* @ATMEL_LCDC_DISTYPE, align 8
  %27 = and i64 %25, %26
  %28 = load i64, i64* @ATMEL_LCDC_DISTYPE_STNCOLOR, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i64, i64* %6, align 8
  %32 = mul i64 %31, 3
  store i64 %32, i64* %6, align 8
  br label %33

33:                                               ; preds = %30, %24
  %34 = load i64, i64* %5, align 8
  %35 = load i64, i64* @ATMEL_LCDC_IFWIDTH, align 8
  %36 = and i64 %34, %35
  %37 = load i64, i64* @ATMEL_LCDC_IFWIDTH_4, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %51, label %39

39:                                               ; preds = %33
  %40 = load i64, i64* %5, align 8
  %41 = load i64, i64* @ATMEL_LCDC_IFWIDTH, align 8
  %42 = and i64 %40, %41
  %43 = load i64, i64* @ATMEL_LCDC_IFWIDTH_8, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %39
  %46 = load i64, i64* %5, align 8
  %47 = load i64, i64* @ATMEL_LCDC_SCANMOD, align 8
  %48 = and i64 %46, %47
  %49 = load i64, i64* @ATMEL_LCDC_SCANMOD_DUAL, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %45, %33
  %52 = load i64, i64* %6, align 8
  %53 = call i64 @DIV_ROUND_UP(i64 %52, i32 4)
  store i64 %53, i64* %6, align 8
  br label %57

54:                                               ; preds = %45, %39
  %55 = load i64, i64* %6, align 8
  %56 = call i64 @DIV_ROUND_UP(i64 %55, i32 8)
  store i64 %56, i64* %6, align 8
  br label %57

57:                                               ; preds = %54, %51
  br label %58

58:                                               ; preds = %57, %17
  %59 = load i64, i64* %6, align 8
  store i64 %59, i64* %3, align 8
  br label %60

60:                                               ; preds = %58, %15
  %61 = load i64, i64* %3, align 8
  ret i64 %61
}

declare dso_local i64 @cpu_is_at91sam9261(...) #1

declare dso_local i64 @cpu_is_at91sam9g10(...) #1

declare dso_local i64 @cpu_is_at32ap7000(...) #1

declare dso_local i64 @DIV_ROUND_UP(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
