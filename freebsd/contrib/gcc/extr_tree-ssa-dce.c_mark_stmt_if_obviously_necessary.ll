; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-dce.c_mark_stmt_if_obviously_necessary.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-dce.c_mark_stmt_if_obviously_necessary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.TYPE_5__ = type { i32 }

@flag_non_call_exceptions = common dso_local global i64 0, align 8
@EXC_PTR_EXPR = common dso_local global i32 0, align 4
@FILTER_EXPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @mark_stmt_if_obviously_necessary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mark_stmt_if_obviously_necessary(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i64, i64* @flag_non_call_exceptions, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = load i32, i32* %3, align 4
  %11 = call i64 @tree_could_throw_p(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @mark_stmt_necessary(i32 %14, i32 1)
  br label %109

16:                                               ; preds = %9, %2
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @TREE_CODE(i32 %17)
  switch i32 %18, label %86 [
    i32 137, label %19
    i32 132, label %19
    i32 135, label %19
    i32 138, label %22
    i32 130, label %22
    i32 129, label %22
    i32 136, label %25
    i32 131, label %33
    i32 133, label %61
    i32 134, label %70
    i32 128, label %79
  ]

19:                                               ; preds = %16, %16, %16
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @mark_stmt_necessary(i32 %20, i32 0)
  br label %109

22:                                               ; preds = %16, %16, %16
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @mark_stmt_necessary(i32 %23, i32 1)
  br label %109

25:                                               ; preds = %16
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @TREE_SIDE_EFFECTS(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @mark_stmt_necessary(i32 %30, i32 1)
  br label %32

32:                                               ; preds = %29, %25
  br label %109

33:                                               ; preds = %16
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @get_call_expr_in(i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %33
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @TREE_SIDE_EFFECTS(i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @mark_stmt_necessary(i32 %43, i32 1)
  br label %109

45:                                               ; preds = %38, %33
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @TREE_OPERAND(i32 %46, i32 0)
  %48 = call i32 @TREE_CODE(i32 %47)
  %49 = load i32, i32* @EXC_PTR_EXPR, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %57, label %51

51:                                               ; preds = %45
  %52 = load i32, i32* %3, align 4
  %53 = call i32 @TREE_OPERAND(i32 %52, i32 0)
  %54 = call i32 @TREE_CODE(i32 %53)
  %55 = load i32, i32* @FILTER_EXPR, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %51, %45
  %58 = load i32, i32* %3, align 4
  %59 = call i32 @mark_stmt_necessary(i32 %58, i32 1)
  br label %109

60:                                               ; preds = %51
  br label %87

61:                                               ; preds = %16
  %62 = load i32, i32* %3, align 4
  %63 = call i32 @simple_goto_p(i32 %62)
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  %66 = zext i1 %65 to i32
  %67 = call i32 @gcc_assert(i32 %66)
  %68 = load i32, i32* %3, align 4
  %69 = call i32 @mark_stmt_necessary(i32 %68, i32 1)
  br label %109

70:                                               ; preds = %16
  %71 = load i32, i32* %3, align 4
  %72 = call %struct.TYPE_5__* @bb_for_stmt(i32 %71)
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @EDGE_COUNT(i32 %74)
  %76 = icmp eq i32 %75, 2
  %77 = zext i1 %76 to i32
  %78 = call i32 @gcc_assert(i32 %77)
  br label %79

79:                                               ; preds = %16, %70
  %80 = load i32, i32* %4, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %79
  %83 = load i32, i32* %3, align 4
  %84 = call i32 @mark_stmt_necessary(i32 %83, i32 1)
  br label %85

85:                                               ; preds = %82, %79
  br label %87

86:                                               ; preds = %16
  br label %87

87:                                               ; preds = %86, %85, %60
  %88 = load i32, i32* %3, align 4
  %89 = call %struct.TYPE_4__* @stmt_ann(i32 %88)
  store %struct.TYPE_4__* %89, %struct.TYPE_4__** %5, align 8
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %87
  %95 = load i32, i32* %3, align 4
  %96 = call i64 @is_ctrl_altering_stmt(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %94, %87
  %99 = load i32, i32* %3, align 4
  %100 = call i32 @mark_stmt_necessary(i32 %99, i32 1)
  br label %109

101:                                              ; preds = %94
  %102 = load i32, i32* %3, align 4
  %103 = call i64 @is_hidden_global_store(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %101
  %106 = load i32, i32* %3, align 4
  %107 = call i32 @mark_stmt_necessary(i32 %106, i32 1)
  br label %109

108:                                              ; preds = %101
  br label %109

109:                                              ; preds = %108, %105, %98, %61, %57, %42, %32, %22, %19, %13
  ret void
}

declare dso_local i64 @tree_could_throw_p(i32) #1

declare dso_local i32 @mark_stmt_necessary(i32, i32) #1

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @TREE_SIDE_EFFECTS(i32) #1

declare dso_local i32 @get_call_expr_in(i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @simple_goto_p(i32) #1

declare dso_local i32 @EDGE_COUNT(i32) #1

declare dso_local %struct.TYPE_5__* @bb_for_stmt(i32) #1

declare dso_local %struct.TYPE_4__* @stmt_ann(i32) #1

declare dso_local i64 @is_ctrl_altering_stmt(i32) #1

declare dso_local i64 @is_hidden_global_store(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
