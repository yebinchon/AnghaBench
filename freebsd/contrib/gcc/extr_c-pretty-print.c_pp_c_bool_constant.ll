; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-pretty-print.c_pp_c_bool_constant.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-pretty-print.c_pp_c_bool_constant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@boolean_false_node = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"false\00", align 1
@flag_isoc99 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"_False\00", align 1
@boolean_true_node = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"_True\00", align 1
@INTEGER_CST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64)* @pp_c_bool_constant to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pp_c_bool_constant(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @boolean_false_node, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %26

8:                                                ; preds = %2
  %9 = call i64 (...) @c_dialect_cxx()
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @pp_c_identifier(i32* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %25

14:                                               ; preds = %8
  %15 = load i64, i64* @flag_isoc99, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @pp_c_identifier(i32* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %24

20:                                               ; preds = %14
  %21 = load i32*, i32** %3, align 8
  %22 = load i64, i64* %4, align 8
  %23 = call i32 @pp_unsupported_tree(i32* %21, i64 %22)
  br label %24

24:                                               ; preds = %20, %17
  br label %25

25:                                               ; preds = %24, %11
  br label %63

26:                                               ; preds = %2
  %27 = load i64, i64* %4, align 8
  %28 = load i64, i64* @boolean_true_node, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %48

30:                                               ; preds = %26
  %31 = call i64 (...) @c_dialect_cxx()
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @pp_c_identifier(i32* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %47

36:                                               ; preds = %30
  %37 = load i64, i64* @flag_isoc99, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32*, i32** %3, align 8
  %41 = call i32 @pp_c_identifier(i32* %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  br label %46

42:                                               ; preds = %36
  %43 = load i32*, i32** %3, align 8
  %44 = load i64, i64* %4, align 8
  %45 = call i32 @pp_unsupported_tree(i32* %43, i64 %44)
  br label %46

46:                                               ; preds = %42, %39
  br label %47

47:                                               ; preds = %46, %33
  br label %62

48:                                               ; preds = %26
  %49 = load i64, i64* %4, align 8
  %50 = call i64 @TREE_CODE(i64 %49)
  %51 = load i64, i64* @INTEGER_CST, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load i32*, i32** %3, align 8
  %55 = load i64, i64* %4, align 8
  %56 = call i32 @pp_c_integer_constant(i32* %54, i64 %55)
  br label %61

57:                                               ; preds = %48
  %58 = load i32*, i32** %3, align 8
  %59 = load i64, i64* %4, align 8
  %60 = call i32 @pp_unsupported_tree(i32* %58, i64 %59)
  br label %61

61:                                               ; preds = %57, %53
  br label %62

62:                                               ; preds = %61, %47
  br label %63

63:                                               ; preds = %62, %25
  ret void
}

declare dso_local i64 @c_dialect_cxx(...) #1

declare dso_local i32 @pp_c_identifier(i32*, i8*) #1

declare dso_local i32 @pp_unsupported_tree(i32*, i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i32 @pp_c_integer_constant(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
