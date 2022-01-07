; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-cfg.c_verify_stmt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-cfg.c_verify_stmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [32 x i8] c"is not a valid GIMPLE statement\00", align 1
@verify_expr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"statement marked for throw, but doesn%'t\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"statement marked for throw in middle of block\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32)* @verify_stmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_stmt(i64 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i64, i64* %4, align 8
  %8 = call i64 @OMP_DIRECTIVE_P(i64 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %49

11:                                               ; preds = %2
  %12 = load i64, i64* %4, align 8
  %13 = call i32 @is_gimple_stmt(i64 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = call i32 @error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %46

17:                                               ; preds = %11
  %18 = load i32, i32* @verify_expr, align 4
  %19 = call i64 @walk_tree(i64* %4, i32 %18, i32* null, i32* null)
  store i64 %19, i64* %6, align 8
  %20 = load i64, i64* %6, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i64, i64* %6, align 8
  %24 = call i32 @debug_generic_stmt(i64 %23)
  store i32 1, i32* %3, align 4
  br label %49

25:                                               ; preds = %17
  %26 = load i64, i64* %4, align 8
  %27 = call i64 @lookup_stmt_eh_region(i64 %26)
  %28 = icmp sge i64 %27, 0
  br i1 %28, label %29, label %45

29:                                               ; preds = %25
  %30 = load i64, i64* %4, align 8
  %31 = call i32 @tree_could_throw_p(i64 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = call i32 @error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %46

35:                                               ; preds = %29
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %35
  %39 = load i64, i64* %4, align 8
  %40 = call i64 @tree_can_throw_internal(i64 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = call i32 @error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  br label %46

44:                                               ; preds = %38, %35
  br label %45

45:                                               ; preds = %44, %25
  store i32 0, i32* %3, align 4
  br label %49

46:                                               ; preds = %42, %33, %15
  %47 = load i64, i64* %4, align 8
  %48 = call i32 @debug_generic_stmt(i64 %47)
  store i32 1, i32* %3, align 4
  br label %49

49:                                               ; preds = %46, %45, %22, %10
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i64 @OMP_DIRECTIVE_P(i64) #1

declare dso_local i32 @is_gimple_stmt(i64) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i64 @walk_tree(i64*, i32, i32*, i32*) #1

declare dso_local i32 @debug_generic_stmt(i64) #1

declare dso_local i64 @lookup_stmt_eh_region(i64) #1

declare dso_local i32 @tree_could_throw_p(i64) #1

declare dso_local i64 @tree_can_throw_internal(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
