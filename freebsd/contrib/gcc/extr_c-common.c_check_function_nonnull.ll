; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-common.c_check_function_nonnull.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-common.c_check_function_nonnull.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"nonnull\00", align 1
@check_nonnull_arg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64)* @check_function_nonnull to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_function_nonnull(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load i64, i64* %3, align 8
  store i64 %9, i64* %5, align 8
  br label %10

10:                                               ; preds = %48, %2
  %11 = load i64, i64* %5, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %51

13:                                               ; preds = %10
  %14 = load i64, i64* %5, align 8
  %15 = call i32 @TREE_PURPOSE(i64 %14)
  %16 = call i64 @is_attribute_p(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %47

18:                                               ; preds = %13
  %19 = load i64, i64* %5, align 8
  %20 = call i64 @TREE_VALUE(i64 %19)
  store i64 %20, i64* %6, align 8
  %21 = load i64, i64* %4, align 8
  store i64 %21, i64* %7, align 8
  store i32 1, i32* %8, align 4
  br label %22

22:                                               ; preds = %41, %18
  %23 = load i64, i64* %7, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  br label %46

26:                                               ; preds = %22
  %27 = load i64, i64* %6, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = load i64, i64* %6, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i64 @nonnull_check_p(i64 %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %29, %26
  %35 = load i32, i32* @check_nonnull_arg, align 4
  %36 = load i64, i64* %7, align 8
  %37 = call i64 @TREE_VALUE(i64 %36)
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @check_function_arguments_recurse(i32 %35, i32* null, i64 %37, i32 %38)
  br label %40

40:                                               ; preds = %34, %29
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %8, align 4
  %44 = load i64, i64* %7, align 8
  %45 = call i64 @TREE_CHAIN(i64 %44)
  store i64 %45, i64* %7, align 8
  br label %22

46:                                               ; preds = %25
  br label %47

47:                                               ; preds = %46, %13
  br label %48

48:                                               ; preds = %47
  %49 = load i64, i64* %5, align 8
  %50 = call i64 @TREE_CHAIN(i64 %49)
  store i64 %50, i64* %5, align 8
  br label %10

51:                                               ; preds = %10
  ret void
}

declare dso_local i64 @is_attribute_p(i8*, i32) #1

declare dso_local i32 @TREE_PURPOSE(i64) #1

declare dso_local i64 @TREE_VALUE(i64) #1

declare dso_local i64 @nonnull_check_p(i64, i32) #1

declare dso_local i32 @check_function_arguments_recurse(i32, i32*, i64, i32) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
