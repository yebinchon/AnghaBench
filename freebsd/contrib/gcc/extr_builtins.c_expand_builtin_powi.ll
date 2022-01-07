; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_expand_builtin_powi.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_expand_builtin_powi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@REAL_TYPE = common dso_local global i32 0, align 4
@INTEGER_TYPE = common dso_local global i32 0, align 4
@VOID_TYPE = common dso_local global i32 0, align 4
@INTEGER_CST = common dso_local global i64 0, align 8
@optimize_size = common dso_local global i32 0, align 4
@POWI_MAX_MULTS = common dso_local global i64 0, align 8
@VOIDmode = common dso_local global i32 0, align 4
@INT_TYPE_SIZE = common dso_local global i32 0, align 4
@MODE_INT = common dso_local global i32 0, align 4
@NULL_RTX = common dso_local global i32 0, align 4
@powi_optab = common dso_local global %struct.TYPE_4__* null, align 8
@LCT_CONST_MAKE_BLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @expand_builtin_powi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @expand_builtin_powi(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @TREE_OPERAND(i32 %16, i32 1)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @REAL_TYPE, align 4
  %20 = load i32, i32* @INTEGER_TYPE, align 4
  %21 = load i32, i32* @VOID_TYPE, align 4
  %22 = call i32 @validate_arglist(i32 %18, i32 %19, i32 %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %132

25:                                               ; preds = %3
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @TREE_VALUE(i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @TREE_CHAIN(i32 %28)
  %30 = call i32 @TREE_VALUE(i32 %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @TREE_TYPE(i32 %31)
  %33 = call i32 @TYPE_MODE(i32 %32)
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %10, align 4
  %35 = call i64 @TREE_CODE(i32 %34)
  %36 = load i64, i64* @INTEGER_CST, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %79

38:                                               ; preds = %25
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @TREE_CONSTANT_OVERFLOW(i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %79, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @TREE_INT_CST_LOW(i32 %43)
  store i32 %44, i32* %15, align 4
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @TREE_INT_CST_HIGH(i32 %45)
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %42
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @TREE_INT_CST_HIGH(i32 %49)
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %52, label %78

52:                                               ; preds = %48, %42
  %53 = load i32, i32* %15, align 4
  %54 = icmp sge i32 %53, -1
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i32, i32* %15, align 4
  %57 = icmp sle i32 %56, 2
  br i1 %57, label %66, label %58

58:                                               ; preds = %55, %52
  %59 = load i32, i32* @optimize_size, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %78, label %61

61:                                               ; preds = %58
  %62 = load i32, i32* %15, align 4
  %63 = call i64 @powi_cost(i32 %62)
  %64 = load i64, i64* @POWI_MAX_MULTS, align 8
  %65 = icmp sle i64 %63, %64
  br i1 %65, label %66, label %78

66:                                               ; preds = %61, %55
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* @VOIDmode, align 4
  %70 = call i32 @expand_expr(i32 %67, i32 %68, i32 %69, i32 0)
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* %11, align 4
  %73 = call i32 @force_reg(i32 %71, i32 %72)
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* %15, align 4
  %77 = call i32 @expand_powi(i32 %74, i32 %75, i32 %76)
  store i32 %77, i32* %4, align 4
  br label %132

78:                                               ; preds = %61, %58, %48
  br label %79

79:                                               ; preds = %78, %38, %25
  %80 = load i32, i32* @INT_TYPE_SIZE, align 4
  %81 = load i32, i32* @MODE_INT, align 4
  %82 = call i32 @mode_for_size(i32 %80, i32 %81, i32 0)
  store i32 %82, i32* %14, align 4
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* @NULL_RTX, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %79
  %87 = load i32, i32* %13, align 4
  %88 = call i32 @gen_reg_rtx(i32 %87)
  store i32 %88, i32* %6, align 4
  br label %89

89:                                               ; preds = %86, %79
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* %13, align 4
  %93 = call i32 @expand_expr(i32 %90, i32 %91, i32 %92, i32 0)
  store i32 %93, i32* %11, align 4
  %94 = load i32, i32* %11, align 4
  %95 = call i32 @GET_MODE(i32 %94)
  %96 = load i32, i32* %13, align 4
  %97 = icmp ne i32 %95, %96
  br i1 %97, label %98, label %102

98:                                               ; preds = %89
  %99 = load i32, i32* %13, align 4
  %100 = load i32, i32* %11, align 4
  %101 = call i32 @convert_to_mode(i32 %99, i32 %100, i32 0)
  store i32 %101, i32* %11, align 4
  br label %102

102:                                              ; preds = %98, %89
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* %14, align 4
  %105 = call i32 @expand_expr(i32 %103, i32 0, i32 %104, i32 0)
  store i32 %105, i32* %12, align 4
  %106 = load i32, i32* %12, align 4
  %107 = call i32 @GET_MODE(i32 %106)
  %108 = load i32, i32* %14, align 4
  %109 = icmp ne i32 %107, %108
  br i1 %109, label %110, label %114

110:                                              ; preds = %102
  %111 = load i32, i32* %14, align 4
  %112 = load i32, i32* %12, align 4
  %113 = call i32 @convert_to_mode(i32 %111, i32 %112, i32 0)
  store i32 %113, i32* %12, align 4
  br label %114

114:                                              ; preds = %110, %102
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** @powi_optab, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %116, align 8
  %118 = load i32, i32* %13, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %6, align 4
  %124 = load i32, i32* @LCT_CONST_MAKE_BLOCK, align 4
  %125 = load i32, i32* %13, align 4
  %126 = load i32, i32* %11, align 4
  %127 = load i32, i32* %13, align 4
  %128 = load i32, i32* %12, align 4
  %129 = load i32, i32* %14, align 4
  %130 = call i32 @emit_library_call_value(i32 %122, i32 %123, i32 %124, i32 %125, i32 2, i32 %126, i32 %127, i32 %128, i32 %129)
  store i32 %130, i32* %6, align 4
  %131 = load i32, i32* %6, align 4
  store i32 %131, i32* %4, align 4
  br label %132

132:                                              ; preds = %114, %66, %24
  %133 = load i32, i32* %4, align 4
  ret i32 %133
}

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i32 @validate_arglist(i32, i32, i32, i32) #1

declare dso_local i32 @TREE_VALUE(i32) #1

declare dso_local i32 @TREE_CHAIN(i32) #1

declare dso_local i32 @TYPE_MODE(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @TREE_CONSTANT_OVERFLOW(i32) #1

declare dso_local i32 @TREE_INT_CST_LOW(i32) #1

declare dso_local i32 @TREE_INT_CST_HIGH(i32) #1

declare dso_local i64 @powi_cost(i32) #1

declare dso_local i32 @expand_expr(i32, i32, i32, i32) #1

declare dso_local i32 @force_reg(i32, i32) #1

declare dso_local i32 @expand_powi(i32, i32, i32) #1

declare dso_local i32 @mode_for_size(i32, i32, i32) #1

declare dso_local i32 @gen_reg_rtx(i32) #1

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i32 @convert_to_mode(i32, i32, i32) #1

declare dso_local i32 @emit_library_call_value(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
