; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-phiopt.c_value_replacement.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-phiopt.c_value_replacement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }

@NE_EXPR = common dso_local global i64 0, align 8
@EQ_EXPR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, %struct.TYPE_8__*, %struct.TYPE_8__*, i32, i32, i32)* @value_replacement to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @value_replacement(i64 %0, i64 %1, %struct.TYPE_8__* %2, %struct.TYPE_8__* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_8__*, align 8
  %18 = alloca %struct.TYPE_8__*, align 8
  %19 = alloca %struct.TYPE_8__*, align 8
  %20 = alloca i32, align 4
  store i64 %0, i64* %9, align 8
  store i64 %1, i64* %10, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %11, align 8
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %21 = load i32, i32* %15, align 4
  %22 = call i32 @TREE_TYPE(i32 %21)
  %23 = call i32 @TYPE_MODE(i32 %22)
  %24 = call i64 @HONOR_SIGNED_ZEROS(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %7
  store i32 0, i32* %8, align 4
  br label %108

27:                                               ; preds = %7
  %28 = load i64, i64* %10, align 8
  %29 = call i32 @empty_block_p(i64 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  store i32 0, i32* %8, align 4
  br label %108

32:                                               ; preds = %27
  %33 = load i64, i64* %9, align 8
  %34 = call i32 @last_stmt(i64 %33)
  %35 = call i32 @COND_EXPR_COND(i32 %34)
  store i32 %35, i32* %16, align 4
  %36 = load i32, i32* %16, align 4
  %37 = call i64 @TREE_CODE(i32 %36)
  %38 = load i64, i64* @NE_EXPR, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %32
  %41 = load i32, i32* %16, align 4
  %42 = call i64 @TREE_CODE(i32 %41)
  %43 = load i64, i64* @EQ_EXPR, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  store i32 0, i32* %8, align 4
  br label %108

46:                                               ; preds = %40, %32
  %47 = load i64, i64* %9, align 8
  %48 = call i32 @extract_true_false_edges_from_block(i64 %47, %struct.TYPE_8__** %17, %struct.TYPE_8__** %18)
  %49 = load i32, i32* %14, align 4
  %50 = load i32, i32* %16, align 4
  %51 = call i32 @TREE_OPERAND(i32 %50, i32 0)
  %52 = call i64 @operand_equal_for_phi_arg_p(i32 %49, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %46
  %55 = load i32, i32* %15, align 4
  %56 = load i32, i32* %16, align 4
  %57 = call i32 @TREE_OPERAND(i32 %56, i32 1)
  %58 = call i64 @operand_equal_for_phi_arg_p(i32 %55, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %72, label %60

60:                                               ; preds = %54, %46
  %61 = load i32, i32* %15, align 4
  %62 = load i32, i32* %16, align 4
  %63 = call i32 @TREE_OPERAND(i32 %62, i32 0)
  %64 = call i64 @operand_equal_for_phi_arg_p(i32 %61, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %107

66:                                               ; preds = %60
  %67 = load i32, i32* %14, align 4
  %68 = load i32, i32* %16, align 4
  %69 = call i32 @TREE_OPERAND(i32 %68, i32 1)
  %70 = call i64 @operand_equal_for_phi_arg_p(i32 %67, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %107

72:                                               ; preds = %66, %54
  %73 = load i32, i32* %16, align 4
  %74 = call i64 @TREE_CODE(i32 %73)
  %75 = load i64, i64* @NE_EXPR, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  br label %81

79:                                               ; preds = %72
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  br label %81

81:                                               ; preds = %79, %77
  %82 = phi %struct.TYPE_8__* [ %78, %77 ], [ %80, %79 ]
  store %struct.TYPE_8__* %82, %struct.TYPE_8__** %19, align 8
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* %10, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %81
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = call %struct.TYPE_8__* @single_succ_edge(i64 %91)
  store %struct.TYPE_8__* %92, %struct.TYPE_8__** %19, align 8
  br label %93

93:                                               ; preds = %88, %81
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %96 = icmp eq %struct.TYPE_8__* %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %93
  %98 = load i32, i32* %14, align 4
  store i32 %98, i32* %20, align 4
  br label %101

99:                                               ; preds = %93
  %100 = load i32, i32* %15, align 4
  store i32 %100, i32* %20, align 4
  br label %101

101:                                              ; preds = %99, %97
  %102 = load i64, i64* %9, align 8
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %104 = load i32, i32* %13, align 4
  %105 = load i32, i32* %20, align 4
  %106 = call i32 @replace_phi_edge_with_variable(i64 %102, %struct.TYPE_8__* %103, i32 %104, i32 %105)
  store i32 1, i32* %8, align 4
  br label %108

107:                                              ; preds = %66, %60
  store i32 0, i32* %8, align 4
  br label %108

108:                                              ; preds = %107, %101, %45, %31, %26
  %109 = load i32, i32* %8, align 4
  ret i32 %109
}

declare dso_local i64 @HONOR_SIGNED_ZEROS(i32) #1

declare dso_local i32 @TYPE_MODE(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @empty_block_p(i64) #1

declare dso_local i32 @COND_EXPR_COND(i32) #1

declare dso_local i32 @last_stmt(i64) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @extract_true_false_edges_from_block(i64, %struct.TYPE_8__**, %struct.TYPE_8__**) #1

declare dso_local i64 @operand_equal_for_phi_arg_p(i32, i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local %struct.TYPE_8__* @single_succ_edge(i64) #1

declare dso_local i32 @replace_phi_edge_with_variable(i64, %struct.TYPE_8__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
