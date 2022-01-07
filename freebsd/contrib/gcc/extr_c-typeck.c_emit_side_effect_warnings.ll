; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-typeck.c_emit_side_effect_warnings.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-typeck.c_emit_side_effect_warnings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@error_mark_node = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"%Hstatement with no effect\00", align 1
@input_location = common dso_local global i32 0, align 4
@warn_unused_value = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @emit_side_effect_warnings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_side_effect_warnings(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = load i64, i64* @error_mark_node, align 8
  %5 = icmp eq i64 %3, %4
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %41

7:                                                ; preds = %1
  %8 = load i64, i64* %2, align 8
  %9 = call i32 @TREE_SIDE_EFFECTS(i64 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %32, label %11

11:                                               ; preds = %7
  %12 = load i64, i64* %2, align 8
  %13 = call i32 @TREE_TYPE(i64 %12)
  %14 = call i32 @VOID_TYPE_P(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %31, label %16

16:                                               ; preds = %11
  %17 = load i64, i64* %2, align 8
  %18 = call i32 @TREE_NO_WARNING(i64 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %31, label %20

20:                                               ; preds = %16
  %21 = load i64, i64* %2, align 8
  %22 = call i64 @EXPR_HAS_LOCATION(i64 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i64, i64* %2, align 8
  %26 = call i32* @EXPR_LOCUS(i64 %25)
  br label %28

27:                                               ; preds = %20
  br label %28

28:                                               ; preds = %27, %24
  %29 = phi i32* [ %26, %24 ], [ @input_location, %27 ]
  %30 = call i32 @warning(i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32* %29)
  br label %31

31:                                               ; preds = %28, %16, %11
  br label %40

32:                                               ; preds = %7
  %33 = load i64, i64* @warn_unused_value, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load i64, i64* %2, align 8
  %37 = load i32, i32* @input_location, align 4
  %38 = call i32 @warn_if_unused_value(i64 %36, i32 %37)
  br label %39

39:                                               ; preds = %35, %32
  br label %40

40:                                               ; preds = %39, %31
  br label %41

41:                                               ; preds = %40, %6
  ret void
}

declare dso_local i32 @TREE_SIDE_EFFECTS(i64) #1

declare dso_local i32 @VOID_TYPE_P(i32) #1

declare dso_local i32 @TREE_TYPE(i64) #1

declare dso_local i32 @TREE_NO_WARNING(i64) #1

declare dso_local i32 @warning(i32, i8*, i32*) #1

declare dso_local i64 @EXPR_HAS_LOCATION(i64) #1

declare dso_local i32* @EXPR_LOCUS(i64) #1

declare dso_local i32 @warn_if_unused_value(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
