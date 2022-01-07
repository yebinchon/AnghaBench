; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-common.c_c_alignof_expr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-common.c_c_alignof_expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@COMPONENT_REF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"%<__alignof%> applied to a bit-field\00", align 1
@size_one_node = common dso_local global i32 0, align 4
@FIELD_DECL = common dso_local global i64 0, align 8
@INDIRECT_REF = common dso_local global i64 0, align 8
@NOP_EXPR = common dso_local global i64 0, align 8
@CONVERT_EXPR = common dso_local global i64 0, align 8
@POINTER_TYPE = common dso_local global i64 0, align 8
@size_type_node = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c_alignof_expr(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i64 @VAR_OR_FUNCTION_DECL_P(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @DECL_ALIGN_UNIT(i32 %13)
  %15 = call i32 @size_int(i32 %14)
  store i32 %15, i32* %4, align 4
  br label %102

16:                                               ; preds = %1
  %17 = load i32, i32* %3, align 4
  %18 = call i64 @TREE_CODE(i32 %17)
  %19 = load i64, i64* @COMPONENT_REF, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %16
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @TREE_OPERAND(i32 %22, i32 1)
  %24 = call i64 @DECL_C_BIT_FIELD(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = call i32 @error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @size_one_node, align 4
  store i32 %28, i32* %4, align 4
  br label %101

29:                                               ; preds = %21, %16
  %30 = load i32, i32* %3, align 4
  %31 = call i64 @TREE_CODE(i32 %30)
  %32 = load i64, i64* @COMPONENT_REF, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %45

34:                                               ; preds = %29
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @TREE_OPERAND(i32 %35, i32 1)
  %37 = call i64 @TREE_CODE(i32 %36)
  %38 = load i64, i64* @FIELD_DECL, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %34
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @TREE_OPERAND(i32 %41, i32 1)
  %43 = call i32 @DECL_ALIGN_UNIT(i32 %42)
  %44 = call i32 @size_int(i32 %43)
  store i32 %44, i32* %4, align 4
  br label %100

45:                                               ; preds = %34, %29
  %46 = load i32, i32* %3, align 4
  %47 = call i64 @TREE_CODE(i32 %46)
  %48 = load i64, i64* @INDIRECT_REF, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %96

50:                                               ; preds = %45
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @TREE_OPERAND(i32 %51, i32 0)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @TREE_TYPE(i32 %54)
  %56 = call i32 @TREE_TYPE(i32 %55)
  %57 = call i32 @TYPE_ALIGN(i32 %56)
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %90, %50
  %59 = load i32, i32* %5, align 4
  %60 = call i64 @TREE_CODE(i32 %59)
  %61 = load i64, i64* @NOP_EXPR, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %68, label %63

63:                                               ; preds = %58
  %64 = load i32, i32* %5, align 4
  %65 = call i64 @TREE_CODE(i32 %64)
  %66 = load i64, i64* @CONVERT_EXPR, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %63, %58
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @TREE_OPERAND(i32 %69, i32 0)
  %71 = call i32 @TREE_TYPE(i32 %70)
  %72 = call i64 @TREE_CODE(i32 %71)
  %73 = load i64, i64* @POINTER_TYPE, align 8
  %74 = icmp eq i64 %72, %73
  br label %75

75:                                               ; preds = %68, %63
  %76 = phi i1 [ false, %63 ], [ %74, %68 ]
  br i1 %76, label %77, label %91

77:                                               ; preds = %75
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @TREE_OPERAND(i32 %78, i32 0)
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* %5, align 4
  %81 = call i32 @TREE_TYPE(i32 %80)
  %82 = call i32 @TREE_TYPE(i32 %81)
  %83 = call i32 @TYPE_ALIGN(i32 %82)
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* %7, align 4
  %86 = icmp sgt i32 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %77
  %88 = load i32, i32* %5, align 4
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %8, align 4
  store i32 %89, i32* %7, align 4
  br label %90

90:                                               ; preds = %87, %77
  br label %58

91:                                               ; preds = %75
  %92 = load i32, i32* %6, align 4
  %93 = call i32 @TREE_TYPE(i32 %92)
  %94 = call i32 @TREE_TYPE(i32 %93)
  %95 = call i32 @c_alignof(i32 %94)
  store i32 %95, i32* %2, align 4
  br label %106

96:                                               ; preds = %45
  %97 = load i32, i32* %3, align 4
  %98 = call i32 @TREE_TYPE(i32 %97)
  %99 = call i32 @c_alignof(i32 %98)
  store i32 %99, i32* %2, align 4
  br label %106

100:                                              ; preds = %40
  br label %101

101:                                              ; preds = %100, %26
  br label %102

102:                                              ; preds = %101, %12
  %103 = load i32, i32* @size_type_node, align 4
  %104 = load i32, i32* %4, align 4
  %105 = call i32 @fold_convert(i32 %103, i32 %104)
  store i32 %105, i32* %2, align 4
  br label %106

106:                                              ; preds = %102, %96, %91
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local i64 @VAR_OR_FUNCTION_DECL_P(i32) #1

declare dso_local i32 @size_int(i32) #1

declare dso_local i32 @DECL_ALIGN_UNIT(i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i64 @DECL_C_BIT_FIELD(i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @TYPE_ALIGN(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @c_alignof(i32) #1

declare dso_local i32 @fold_convert(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
