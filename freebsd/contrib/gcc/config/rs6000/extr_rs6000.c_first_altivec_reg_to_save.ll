; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_first_altivec_reg_to_save.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_first_altivec_reg_to_save.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TARGET_ALTIVEC_ABI = common dso_local global i32 0, align 4
@LAST_ALTIVEC_REGNO = common dso_local global i32 0, align 4
@DEFAULT_ABI = common dso_local global i64 0, align 8
@ABI_DARWIN = common dso_local global i64 0, align 8
@current_function_calls_eh_return = common dso_local global i64 0, align 8
@TARGET_ALTIVEC = common dso_local global i32 0, align 4
@FIRST_ALTIVEC_REGNO = common dso_local global i32 0, align 4
@regs_ever_live = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @first_altivec_reg_to_save to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @first_altivec_reg_to_save() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @TARGET_ALTIVEC_ABI, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %0
  %6 = load i32, i32* @LAST_ALTIVEC_REGNO, align 4
  %7 = add nsw i32 %6, 1
  store i32 %7, i32* %1, align 4
  br label %42

8:                                                ; preds = %0
  %9 = load i64, i64* @DEFAULT_ABI, align 8
  %10 = load i64, i64* @ABI_DARWIN, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %21

12:                                               ; preds = %8
  %13 = load i64, i64* @current_function_calls_eh_return, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %12
  %16 = load i32, i32* @TARGET_ALTIVEC, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* @FIRST_ALTIVEC_REGNO, align 4
  %20 = add nsw i32 %19, 20
  store i32 %20, i32* %1, align 4
  br label %42

21:                                               ; preds = %15, %12, %8
  %22 = load i32, i32* @FIRST_ALTIVEC_REGNO, align 4
  %23 = add nsw i32 %22, 20
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %37, %21
  %25 = load i32, i32* %2, align 4
  %26 = load i32, i32* @LAST_ALTIVEC_REGNO, align 4
  %27 = icmp sle i32 %25, %26
  br i1 %27, label %28, label %40

28:                                               ; preds = %24
  %29 = load i64*, i64** @regs_ever_live, align 8
  %30 = load i32, i32* %2, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  br label %40

36:                                               ; preds = %28
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %2, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %2, align 4
  br label %24

40:                                               ; preds = %35, %24
  %41 = load i32, i32* %2, align 4
  store i32 %41, i32* %1, align 4
  br label %42

42:                                               ; preds = %40, %18, %5
  %43 = load i32, i32* %1, align 4
  ret i32 %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
