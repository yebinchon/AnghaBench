; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-alias.c_is_escape_site.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-alias.c_is_escape_site.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_TREE = common dso_local global i64 0, align 8
@ESCAPE_TO_PURE_CONST = common dso_local global i32 0, align 4
@ESCAPE_TO_CALL = common dso_local global i32 0, align 4
@ASM_EXPR = common dso_local global i64 0, align 8
@ESCAPE_TO_ASM = common dso_local global i32 0, align 4
@MODIFY_EXPR = common dso_local global i64 0, align 8
@SSA_NAME = common dso_local global i64 0, align 8
@ESCAPE_UNKNOWN = common dso_local global i32 0, align 4
@NOP_EXPR = common dso_local global i64 0, align 8
@CONVERT_EXPR = common dso_local global i64 0, align 8
@VIEW_CONVERT_EXPR = common dso_local global i64 0, align 8
@ESCAPE_BAD_CAST = common dso_local global i32 0, align 4
@NO_ESCAPE = common dso_local global i32 0, align 4
@ESCAPE_STORED_IN_GLOBAL = common dso_local global i32 0, align 4
@RETURN_EXPR = common dso_local global i64 0, align 8
@ESCAPE_TO_RETURN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_escape_site(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %8 = load i64, i64* %3, align 8
  %9 = call i64 @get_call_expr_in(i64 %8)
  store i64 %9, i64* %4, align 8
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* @NULL_TREE, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %21

13:                                               ; preds = %1
  %14 = load i64, i64* %4, align 8
  %15 = call i32 @TREE_SIDE_EFFECTS(i64 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* @ESCAPE_TO_PURE_CONST, align 4
  store i32 %18, i32* %2, align 4
  br label %124

19:                                               ; preds = %13
  %20 = load i32, i32* @ESCAPE_TO_CALL, align 4
  store i32 %20, i32* %2, align 4
  br label %124

21:                                               ; preds = %1
  %22 = load i64, i64* %3, align 8
  %23 = call i64 @TREE_CODE(i64 %22)
  %24 = load i64, i64* @ASM_EXPR, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* @ESCAPE_TO_ASM, align 4
  store i32 %27, i32* %2, align 4
  br label %124

28:                                               ; preds = %21
  %29 = load i64, i64* %3, align 8
  %30 = call i64 @TREE_CODE(i64 %29)
  %31 = load i64, i64* @MODIFY_EXPR, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %112

33:                                               ; preds = %28
  %34 = load i64, i64* %3, align 8
  %35 = call i64 @TREE_OPERAND(i64 %34, i32 0)
  store i64 %35, i64* %5, align 8
  %36 = load i64, i64* %5, align 8
  %37 = call i64 @TREE_CODE(i64 %36)
  %38 = load i64, i64* @SSA_NAME, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load i64, i64* %5, align 8
  %42 = call i64 @get_base_address(i64 %41)
  store i64 %42, i64* %5, align 8
  br label %43

43:                                               ; preds = %40, %33
  %44 = load i64, i64* %5, align 8
  %45 = load i64, i64* @NULL_TREE, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = load i32, i32* @ESCAPE_UNKNOWN, align 4
  store i32 %48, i32* %2, align 4
  br label %124

49:                                               ; preds = %43
  %50 = load i64, i64* %3, align 8
  %51 = call i64 @TREE_OPERAND(i64 %50, i32 1)
  %52 = call i64 @TREE_CODE(i64 %51)
  %53 = load i64, i64* @NOP_EXPR, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %67, label %55

55:                                               ; preds = %49
  %56 = load i64, i64* %3, align 8
  %57 = call i64 @TREE_OPERAND(i64 %56, i32 1)
  %58 = call i64 @TREE_CODE(i64 %57)
  %59 = load i64, i64* @CONVERT_EXPR, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %67, label %61

61:                                               ; preds = %55
  %62 = load i64, i64* %3, align 8
  %63 = call i64 @TREE_OPERAND(i64 %62, i32 1)
  %64 = call i64 @TREE_CODE(i64 %63)
  %65 = load i64, i64* @VIEW_CONVERT_EXPR, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %103

67:                                               ; preds = %61, %55, %49
  %68 = load i64, i64* %3, align 8
  %69 = call i64 @TREE_OPERAND(i64 %68, i32 1)
  %70 = call i64 @TREE_OPERAND(i64 %69, i32 0)
  %71 = call i64 @TREE_TYPE(i64 %70)
  store i64 %71, i64* %6, align 8
  %72 = load i64, i64* %3, align 8
  %73 = call i64 @TREE_OPERAND(i64 %72, i32 1)
  %74 = call i64 @TREE_TYPE(i64 %73)
  store i64 %74, i64* %7, align 8
  %75 = load i64, i64* %6, align 8
  %76 = call i64 @POINTER_TYPE_P(i64 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %67
  %79 = load i64, i64* %7, align 8
  %80 = call i64 @POINTER_TYPE_P(i64 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %78
  %83 = load i32, i32* @ESCAPE_BAD_CAST, align 4
  store i32 %83, i32* %2, align 4
  br label %124

84:                                               ; preds = %78, %67
  %85 = load i64, i64* %6, align 8
  %86 = call i64 @POINTER_TYPE_P(i64 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %102

88:                                               ; preds = %84
  %89 = load i64, i64* %6, align 8
  %90 = call i64 @TYPE_REF_CAN_ALIAS_ALL(i64 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %102, label %92

92:                                               ; preds = %88
  %93 = load i64, i64* %7, align 8
  %94 = call i64 @POINTER_TYPE_P(i64 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %92
  %97 = load i64, i64* %7, align 8
  %98 = call i64 @TYPE_REF_CAN_ALIAS_ALL(i64 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %96
  %101 = load i32, i32* @ESCAPE_BAD_CAST, align 4
  store i32 %101, i32* %2, align 4
  br label %124

102:                                              ; preds = %96, %92, %88, %84
  br label %103

103:                                              ; preds = %102, %61
  %104 = load i64, i64* %5, align 8
  %105 = call i64 @TREE_CODE(i64 %104)
  %106 = load i64, i64* @SSA_NAME, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %110

108:                                              ; preds = %103
  %109 = load i32, i32* @NO_ESCAPE, align 4
  store i32 %109, i32* %2, align 4
  br label %124

110:                                              ; preds = %103
  %111 = load i32, i32* @ESCAPE_STORED_IN_GLOBAL, align 4
  store i32 %111, i32* %2, align 4
  br label %124

112:                                              ; preds = %28
  %113 = load i64, i64* %3, align 8
  %114 = call i64 @TREE_CODE(i64 %113)
  %115 = load i64, i64* @RETURN_EXPR, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %119

117:                                              ; preds = %112
  %118 = load i32, i32* @ESCAPE_TO_RETURN, align 4
  store i32 %118, i32* %2, align 4
  br label %124

119:                                              ; preds = %112
  br label %120

120:                                              ; preds = %119
  br label %121

121:                                              ; preds = %120
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* @NO_ESCAPE, align 4
  store i32 %123, i32* %2, align 4
  br label %124

124:                                              ; preds = %122, %117, %110, %108, %100, %82, %47, %26, %19, %17
  %125 = load i32, i32* %2, align 4
  ret i32 %125
}

declare dso_local i64 @get_call_expr_in(i64) #1

declare dso_local i32 @TREE_SIDE_EFFECTS(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local i64 @get_base_address(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @POINTER_TYPE_P(i64) #1

declare dso_local i64 @TYPE_REF_CAN_ALIAS_ALL(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
