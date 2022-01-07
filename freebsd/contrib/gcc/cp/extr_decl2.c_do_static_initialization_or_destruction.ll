; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_decl2.c_do_static_initialization_or_destruction.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_decl2.c_do_static_initialization_or_destruction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@integer_one_node = common dso_local global i64 0, align 8
@integer_zero_node = common dso_local global i64 0, align 8
@EQ_EXPR = common dso_local global i32 0, align 4
@initialize_p_decl = common dso_local global i32 0, align 4
@priority_decl = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32)* @do_static_initialization_or_destruction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_static_initialization_or_destruction(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_3__*, align 8
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = call i64 (...) @begin_if_stmt()
  store i64 %12, i64* %6, align 8
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i64, i64* @integer_one_node, align 8
  br label %19

17:                                               ; preds = %2
  %18 = load i64, i64* @integer_zero_node, align 8
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i64 [ %16, %15 ], [ %18, %17 ]
  store i64 %20, i64* %7, align 8
  %21 = load i32, i32* @EQ_EXPR, align 4
  %22 = load i32, i32* @initialize_p_decl, align 4
  %23 = load i64, i64* %7, align 8
  %24 = call i64 @cp_build_binary_op(i32 %21, i32 %22, i64 %23)
  store i64 %24, i64* %7, align 8
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* %6, align 8
  %27 = call i32 @finish_if_stmt_cond(i64 %25, i64 %26)
  %28 = load i64, i64* %3, align 8
  store i64 %28, i64* %5, align 8
  br label %29

29:                                               ; preds = %92, %19
  %30 = load i64, i64* %5, align 8
  %31 = call i64 @TREE_VALUE(i64 %30)
  store i64 %31, i64* %8, align 8
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %29
  %35 = load i64, i64* %8, align 8
  %36 = call i32 @TREE_TYPE(i64 %35)
  %37 = call i64 @TYPE_HAS_TRIVIAL_DESTRUCTOR(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i64, i64* %5, align 8
  %41 = call i64 @TREE_CHAIN(i64 %40)
  store i64 %41, i64* %5, align 8
  br label %92

42:                                               ; preds = %34, %29
  %43 = load i64, i64* %8, align 8
  %44 = call i32 @DECL_EFFECTIVE_INIT_PRIORITY(i64 %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = call %struct.TYPE_3__* @get_priority_info(i32 %45)
  store %struct.TYPE_3__* %46, %struct.TYPE_3__** %11, align 8
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  store i32 1, i32* %51, align 4
  br label %55

52:                                               ; preds = %42
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  store i32 1, i32* %54, align 4
  br label %55

55:                                               ; preds = %52, %49
  %56 = call i64 (...) @begin_if_stmt()
  store i64 %56, i64* %9, align 8
  %57 = load i32, i32* @EQ_EXPR, align 4
  %58 = load i32, i32* @priority_decl, align 4
  %59 = load i32, i32* @NULL_TREE, align 4
  %60 = load i32, i32* %10, align 4
  %61 = call i64 @build_int_cst(i32 %59, i32 %60)
  %62 = call i64 @cp_build_binary_op(i32 %57, i32 %58, i64 %61)
  store i64 %62, i64* %7, align 8
  %63 = load i64, i64* %7, align 8
  %64 = load i64, i64* %9, align 8
  %65 = call i32 @finish_if_stmt_cond(i64 %63, i64 %64)
  br label %66

66:                                               ; preds = %84, %55
  %67 = load i64, i64* %5, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %66
  %70 = load i64, i64* %5, align 8
  %71 = call i64 @TREE_VALUE(i64 %70)
  %72 = call i32 @DECL_EFFECTIVE_INIT_PRIORITY(i64 %71)
  %73 = load i32, i32* %10, align 4
  %74 = icmp eq i32 %72, %73
  br label %75

75:                                               ; preds = %69, %66
  %76 = phi i1 [ false, %66 ], [ %74, %69 ]
  br i1 %76, label %77, label %87

77:                                               ; preds = %75
  %78 = load i64, i64* %5, align 8
  %79 = call i64 @TREE_VALUE(i64 %78)
  %80 = load i64, i64* %5, align 8
  %81 = call i32 @TREE_PURPOSE(i64 %80)
  %82 = load i32, i32* %4, align 4
  %83 = call i32 @one_static_initialization_or_destruction(i64 %79, i32 %81, i32 %82)
  br label %84

84:                                               ; preds = %77
  %85 = load i64, i64* %5, align 8
  %86 = call i64 @TREE_CHAIN(i64 %85)
  store i64 %86, i64* %5, align 8
  br label %66

87:                                               ; preds = %75
  %88 = load i64, i64* %9, align 8
  %89 = call i32 @finish_then_clause(i64 %88)
  %90 = load i64, i64* %9, align 8
  %91 = call i32 @finish_if_stmt(i64 %90)
  br label %92

92:                                               ; preds = %87, %39
  %93 = load i64, i64* %5, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %29, label %95

95:                                               ; preds = %92
  %96 = load i64, i64* %6, align 8
  %97 = call i32 @finish_then_clause(i64 %96)
  %98 = load i64, i64* %6, align 8
  %99 = call i32 @finish_if_stmt(i64 %98)
  ret void
}

declare dso_local i64 @begin_if_stmt(...) #1

declare dso_local i64 @cp_build_binary_op(i32, i32, i64) #1

declare dso_local i32 @finish_if_stmt_cond(i64, i64) #1

declare dso_local i64 @TREE_VALUE(i64) #1

declare dso_local i64 @TYPE_HAS_TRIVIAL_DESTRUCTOR(i32) #1

declare dso_local i32 @TREE_TYPE(i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i32 @DECL_EFFECTIVE_INIT_PRIORITY(i64) #1

declare dso_local %struct.TYPE_3__* @get_priority_info(i32) #1

declare dso_local i64 @build_int_cst(i32, i32) #1

declare dso_local i32 @one_static_initialization_or_destruction(i64, i32, i32) #1

declare dso_local i32 @TREE_PURPOSE(i64) #1

declare dso_local i32 @finish_then_clause(i64) #1

declare dso_local i32 @finish_if_stmt(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
