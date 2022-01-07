; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_fold_real_zero_addition_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_fold_real_zero_addition_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REAL_CST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @fold_real_zero_addition_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fold_real_zero_addition_p(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  %9 = call i32 @real_zerop(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %51

12:                                               ; preds = %3
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @TYPE_MODE(i32 %13)
  %15 = call i64 @HONOR_SNANS(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store i32 0, i32* %4, align 4
  br label %51

18:                                               ; preds = %12
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @TYPE_MODE(i32 %19)
  %21 = call i32 @HONOR_SIGNED_ZEROS(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  store i32 1, i32* %4, align 4
  br label %51

24:                                               ; preds = %18
  %25 = load i32, i32* %6, align 4
  %26 = call i64 @TREE_CODE(i32 %25)
  %27 = load i64, i64* @REAL_CST, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %24
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @TREE_REAL_CST(i32 %30)
  %32 = call i64 @REAL_VALUE_MINUS_ZERO(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %34, %29, %24
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @TYPE_MODE(i32 %43)
  %45 = call i32 @HONOR_SIGN_DEPENDENT_ROUNDING(i32 %44)
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  br label %48

48:                                               ; preds = %42, %39
  %49 = phi i1 [ false, %39 ], [ %47, %42 ]
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %48, %23, %17, %11
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @real_zerop(i32) #1

declare dso_local i64 @HONOR_SNANS(i32) #1

declare dso_local i32 @TYPE_MODE(i32) #1

declare dso_local i32 @HONOR_SIGNED_ZEROS(i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i64 @REAL_VALUE_MINUS_ZERO(i32) #1

declare dso_local i32 @TREE_REAL_CST(i32) #1

declare dso_local i32 @HONOR_SIGN_DEPENDENT_ROUNDING(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
