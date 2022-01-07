; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_fold_builtin_nan.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_fold_builtin_nan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@POINTER_TYPE = common dso_local global i32 0, align 4
@VOID_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @fold_builtin_nan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fold_builtin_nan(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @POINTER_TYPE, align 4
  %12 = load i32, i32* @VOID_TYPE, align 4
  %13 = call i32 @validate_arglist(i32 %10, i32 %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %35

16:                                               ; preds = %3
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @TREE_VALUE(i32 %17)
  %19 = call i8* @c_getstr(i32 %18)
  store i8* %19, i8** %9, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  br label %35

23:                                               ; preds = %16
  %24 = load i8*, i8** %9, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @TYPE_MODE(i32 %26)
  %28 = call i32 @real_nan(i32* %8, i8* %24, i32 %25, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %35

31:                                               ; preds = %23
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @build_real(i32 %32, i32 %33)
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %31, %30, %22, %15
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i32 @validate_arglist(i32, i32, i32) #1

declare dso_local i8* @c_getstr(i32) #1

declare dso_local i32 @TREE_VALUE(i32) #1

declare dso_local i32 @real_nan(i32*, i8*, i32, i32) #1

declare dso_local i32 @TYPE_MODE(i32) #1

declare dso_local i32 @build_real(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
