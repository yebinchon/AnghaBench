; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_fold_builtin_atan.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_fold_builtin_atan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REAL_TYPE = common dso_local global i32 0, align 4
@VOID_TYPE = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32 0, align 4
@dconstpi = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @fold_builtin_atan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fold_builtin_atan(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @TREE_VALUE(i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @REAL_TYPE, align 4
  %12 = load i32, i32* @VOID_TYPE, align 4
  %13 = call i32 @validate_arglist(i32 %10, i32 %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @NULL_TREE, align 4
  store i32 %16, i32* %3, align 4
  br label %39

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  %19 = call i64 @real_zerop(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %3, align 4
  br label %39

23:                                               ; preds = %17
  %24 = load i32, i32* %6, align 4
  %25 = call i64 @real_onep(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %23
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @TYPE_MODE(i32 %28)
  %30 = call i32 @real_convert(i32* %7, i32 %29, i32* @dconstpi)
  %31 = call i64 @REAL_EXP(i32* %7)
  %32 = sub nsw i64 %31, 2
  %33 = call i32 @SET_REAL_EXP(i32* %7, i64 %32)
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @build_real(i32 %34, i32 %35)
  store i32 %36, i32* %3, align 4
  br label %39

37:                                               ; preds = %23
  %38 = load i32, i32* @NULL_TREE, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %37, %27, %21, %15
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @TREE_VALUE(i32) #1

declare dso_local i32 @validate_arglist(i32, i32, i32) #1

declare dso_local i64 @real_zerop(i32) #1

declare dso_local i64 @real_onep(i32) #1

declare dso_local i32 @real_convert(i32*, i32, i32*) #1

declare dso_local i32 @TYPE_MODE(i32) #1

declare dso_local i32 @SET_REAL_EXP(i32*, i64) #1

declare dso_local i64 @REAL_EXP(i32*) #1

declare dso_local i32 @build_real(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
