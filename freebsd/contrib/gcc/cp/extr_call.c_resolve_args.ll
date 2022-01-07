; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_call.c_resolve_args.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_call.c_resolve_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@error_mark_node = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"invalid use of void expression\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @resolve_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @resolve_args(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  store i64 %6, i64* %4, align 8
  br label %7

7:                                                ; preds = %35, %1
  %8 = load i64, i64* %4, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %38

10:                                               ; preds = %7
  %11 = load i64, i64* %4, align 8
  %12 = call i64 @TREE_VALUE(i64 %11)
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = call i64 @error_operand_p(i64 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = load i64, i64* @error_mark_node, align 8
  store i64 %17, i64* %2, align 8
  br label %40

18:                                               ; preds = %10
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @TREE_TYPE(i64 %19)
  %21 = call i64 @VOID_TYPE_P(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = call i32 @error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %25 = load i64, i64* @error_mark_node, align 8
  store i64 %25, i64* %2, align 8
  br label %40

26:                                               ; preds = %18
  %27 = load i64, i64* %5, align 8
  %28 = call i64 @invalid_nonstatic_memfn_p(i64 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i64, i64* @error_mark_node, align 8
  store i64 %31, i64* %2, align 8
  br label %40

32:                                               ; preds = %26
  br label %33

33:                                               ; preds = %32
  br label %34

34:                                               ; preds = %33
  br label %35

35:                                               ; preds = %34
  %36 = load i64, i64* %4, align 8
  %37 = call i64 @TREE_CHAIN(i64 %36)
  store i64 %37, i64* %4, align 8
  br label %7

38:                                               ; preds = %7
  %39 = load i64, i64* %3, align 8
  store i64 %39, i64* %2, align 8
  br label %40

40:                                               ; preds = %38, %30, %23, %16
  %41 = load i64, i64* %2, align 8
  ret i64 %41
}

declare dso_local i64 @TREE_VALUE(i64) #1

declare dso_local i64 @error_operand_p(i64) #1

declare dso_local i64 @VOID_TYPE_P(i32) #1

declare dso_local i32 @TREE_TYPE(i64) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i64 @invalid_nonstatic_memfn_p(i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
