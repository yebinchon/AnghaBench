; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-typeck.c_c_finish_bc_stmt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-typeck.c_c_finish_bc_stmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cur_stmt_list = common dso_local global i32 0, align 4
@LABEL_DECL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"break statement not within loop or switch\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"continue statement not within a loop\00", align 1
@NULL_TREE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [42 x i8] c"break statement used with OpenMP for loop\00", align 1
@GOTO_EXPR = common dso_local global i32 0, align 4
@void_type_node = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @c_finish_bc_stmt(i64* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i64* %0, i64** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i64*, i64** %4, align 8
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %7, align 8
  %10 = load i32, i32* @cur_stmt_list, align 4
  %11 = call i32 @block_may_fallthru(i32 %10)
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  store i32 %14, i32* %6, align 4
  %15 = load i64, i64* %7, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = call i64 (...) @create_artificial_label()
  store i64 %21, i64* %7, align 8
  %22 = load i64*, i64** %4, align 8
  store i64 %21, i64* %22, align 8
  br label %23

23:                                               ; preds = %20, %17
  br label %51

24:                                               ; preds = %2
  %25 = load i64, i64* %7, align 8
  %26 = call i64 @TREE_CODE(i64 %25)
  %27 = load i64, i64* @LABEL_DECL, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %50

30:                                               ; preds = %24
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @TREE_INT_CST_LOW(i64 %31)
  switch i32 %32, label %47 [
    i32 0, label %33
    i32 1, label %42
  ]

33:                                               ; preds = %30
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = call i32 @error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %40

38:                                               ; preds = %33
  %39 = call i32 @error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %36
  %41 = load i64, i64* @NULL_TREE, align 8
  store i64 %41, i64* %3, align 8
  br label %62

42:                                               ; preds = %30
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @gcc_assert(i32 %43)
  %45 = call i32 @error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %46 = load i64, i64* @NULL_TREE, align 8
  store i64 %46, i64* %3, align 8
  br label %62

47:                                               ; preds = %30
  %48 = call i32 (...) @gcc_unreachable()
  br label %49

49:                                               ; preds = %47
  br label %50

50:                                               ; preds = %49, %29
  br label %51

51:                                               ; preds = %50, %23
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load i64, i64* @NULL_TREE, align 8
  store i64 %55, i64* %3, align 8
  br label %62

56:                                               ; preds = %51
  %57 = load i32, i32* @GOTO_EXPR, align 4
  %58 = load i32, i32* @void_type_node, align 4
  %59 = load i64, i64* %7, align 8
  %60 = call i32 @build1(i32 %57, i32 %58, i64 %59)
  %61 = call i64 @add_stmt(i32 %60)
  store i64 %61, i64* %3, align 8
  br label %62

62:                                               ; preds = %56, %54, %42, %40
  %63 = load i64, i64* %3, align 8
  ret i64 %63
}

declare dso_local i32 @block_may_fallthru(i32) #1

declare dso_local i64 @create_artificial_label(...) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i32 @TREE_INT_CST_LOW(i64) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i64 @add_stmt(i32) #1

declare dso_local i32 @build1(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
