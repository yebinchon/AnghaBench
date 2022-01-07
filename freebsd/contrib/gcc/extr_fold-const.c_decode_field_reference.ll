; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_decode_field_reference.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_decode_field_reference.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 (i64, i32)* }

@NOP_EXPR = common dso_local global i64 0, align 8
@CONVERT_EXPR = common dso_local global i64 0, align 8
@NON_LVALUE_EXPR = common dso_local global i64 0, align 8
@BIT_AND_EXPR = common dso_local global i64 0, align 8
@INTEGER_CST = common dso_local global i64 0, align 8
@PLACEHOLDER_EXPR = common dso_local global i64 0, align 8
@lang_hooks = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@LSHIFT_EXPR = common dso_local global i32 0, align 4
@RSHIFT_EXPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64*, i64*, i32*, i32*, i32*, i64*, i64*)* @decode_field_reference to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @decode_field_reference(i64 %0, i64* %1, i64* %2, i32* %3, i32* %4, i32* %5, i64* %6, i64* %7) #0 {
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  store i64 %0, i64* %10, align 8
  store i64* %1, i64** %11, align 8
  store i64* %2, i64** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i64* %6, i64** %16, align 8
  store i64* %7, i64** %17, align 8
  store i64 0, i64* %18, align 8
  store i64 0, i64* %19, align 8
  %25 = load i64, i64* %10, align 8
  %26 = call i64 @TREE_TYPE(i64 %25)
  %27 = call i32 @INTEGRAL_TYPE_P(i64 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %8
  store i64 0, i64* %9, align 8
  br label %156

30:                                               ; preds = %8
  %31 = load i64, i64* %10, align 8
  %32 = call i64 @TREE_CODE(i64 %31)
  %33 = load i64, i64* @NOP_EXPR, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %45, label %35

35:                                               ; preds = %30
  %36 = load i64, i64* %10, align 8
  %37 = call i64 @TREE_CODE(i64 %36)
  %38 = load i64, i64* @CONVERT_EXPR, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %45, label %40

40:                                               ; preds = %35
  %41 = load i64, i64* %10, align 8
  %42 = call i64 @TREE_CODE(i64 %41)
  %43 = load i64, i64* @NON_LVALUE_EXPR, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %40, %35, %30
  %46 = load i64, i64* %10, align 8
  %47 = call i64 @TREE_TYPE(i64 %46)
  store i64 %47, i64* %18, align 8
  br label %48

48:                                               ; preds = %45, %40
  %49 = load i64, i64* %10, align 8
  %50 = call i32 @STRIP_NOPS(i64 %49)
  %51 = load i64, i64* %10, align 8
  %52 = call i64 @TREE_CODE(i64 %51)
  %53 = load i64, i64* @BIT_AND_EXPR, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %70

55:                                               ; preds = %48
  %56 = load i64, i64* %10, align 8
  %57 = call i64 @TREE_OPERAND(i64 %56, i32 1)
  store i64 %57, i64* %19, align 8
  %58 = load i64, i64* %10, align 8
  %59 = call i64 @TREE_OPERAND(i64 %58, i32 0)
  store i64 %59, i64* %10, align 8
  %60 = load i64, i64* %10, align 8
  %61 = call i32 @STRIP_NOPS(i64 %60)
  %62 = load i64, i64* %19, align 8
  %63 = call i32 @STRIP_NOPS(i64 %62)
  %64 = load i64, i64* %19, align 8
  %65 = call i64 @TREE_CODE(i64 %64)
  %66 = load i64, i64* @INTEGER_CST, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %55
  store i64 0, i64* %9, align 8
  br label %156

69:                                               ; preds = %55
  br label %70

70:                                               ; preds = %69, %48
  %71 = load i64, i64* %10, align 8
  %72 = load i64*, i64** %11, align 8
  %73 = load i64*, i64** %12, align 8
  %74 = load i32*, i32** %13, align 8
  %75 = load i32*, i32** %14, align 8
  %76 = load i32*, i32** %15, align 8
  %77 = call i64 @get_inner_reference(i64 %71, i64* %72, i64* %73, i64* %22, i32* %74, i32* %75, i32* %76, i32 0)
  store i64 %77, i64* %21, align 8
  %78 = load i64, i64* %21, align 8
  %79 = load i64, i64* %10, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %70
  %82 = load i64, i64* %19, align 8
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %96, label %84

84:                                               ; preds = %81, %70
  %85 = load i64*, i64** %11, align 8
  %86 = load i64, i64* %85, align 8
  %87 = icmp slt i64 %86, 0
  br i1 %87, label %96, label %88

88:                                               ; preds = %84
  %89 = load i64, i64* %22, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %96, label %91

91:                                               ; preds = %88
  %92 = load i64, i64* %21, align 8
  %93 = call i64 @TREE_CODE(i64 %92)
  %94 = load i64, i64* @PLACEHOLDER_EXPR, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %91, %88, %84, %81
  store i64 0, i64* %9, align 8
  br label %156

97:                                               ; preds = %91
  %98 = load i64, i64* %18, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %110

100:                                              ; preds = %97
  %101 = load i64*, i64** %11, align 8
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* %18, align 8
  %104 = call i64 @TYPE_PRECISION(i64 %103)
  %105 = icmp eq i64 %102, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %100
  %107 = load i64, i64* %18, align 8
  %108 = call i32 @TYPE_UNSIGNED(i64 %107)
  %109 = load i32*, i32** %14, align 8
  store i32 %108, i32* %109, align 4
  br label %110

110:                                              ; preds = %106, %100, %97
  %111 = load i64 (i64, i32)*, i64 (i64, i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lang_hooks, i32 0, i32 0, i32 0), align 8
  %112 = load i64*, i64** %11, align 8
  %113 = load i64, i64* %112, align 8
  %114 = call i64 %111(i64 %113, i32 1)
  store i64 %114, i64* %23, align 8
  %115 = load i64, i64* %23, align 8
  %116 = call i64 @TYPE_PRECISION(i64 %115)
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %24, align 4
  %118 = load i64, i64* %23, align 8
  %119 = call i64 @build_int_cst(i64 %118, i32 -1)
  store i64 %119, i64* %20, align 8
  %120 = load i64, i64* %20, align 8
  %121 = call i64 @force_fit_type(i64 %120, i32 0, i32 0, i32 0)
  store i64 %121, i64* %20, align 8
  %122 = load i32, i32* @LSHIFT_EXPR, align 4
  %123 = load i64, i64* %20, align 8
  %124 = load i32, i32* %24, align 4
  %125 = zext i32 %124 to i64
  %126 = load i64*, i64** %11, align 8
  %127 = load i64, i64* %126, align 8
  %128 = sub nsw i64 %125, %127
  %129 = call i32 @size_int(i64 %128)
  %130 = call i64 @const_binop(i32 %122, i64 %123, i32 %129, i32 0)
  store i64 %130, i64* %20, align 8
  %131 = load i32, i32* @RSHIFT_EXPR, align 4
  %132 = load i64, i64* %20, align 8
  %133 = load i32, i32* %24, align 4
  %134 = zext i32 %133 to i64
  %135 = load i64*, i64** %11, align 8
  %136 = load i64, i64* %135, align 8
  %137 = sub nsw i64 %134, %136
  %138 = call i32 @size_int(i64 %137)
  %139 = call i64 @const_binop(i32 %131, i64 %132, i32 %138, i32 0)
  store i64 %139, i64* %20, align 8
  %140 = load i64, i64* %19, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %150

142:                                              ; preds = %110
  %143 = load i64, i64* @BIT_AND_EXPR, align 8
  %144 = load i64, i64* %23, align 8
  %145 = load i64, i64* %23, align 8
  %146 = load i64, i64* %19, align 8
  %147 = call i32 @fold_convert(i64 %145, i64 %146)
  %148 = load i64, i64* %20, align 8
  %149 = call i64 @fold_build2(i64 %143, i64 %144, i32 %147, i64 %148)
  store i64 %149, i64* %20, align 8
  br label %150

150:                                              ; preds = %142, %110
  %151 = load i64, i64* %20, align 8
  %152 = load i64*, i64** %16, align 8
  store i64 %151, i64* %152, align 8
  %153 = load i64, i64* %19, align 8
  %154 = load i64*, i64** %17, align 8
  store i64 %153, i64* %154, align 8
  %155 = load i64, i64* %21, align 8
  store i64 %155, i64* %9, align 8
  br label %156

156:                                              ; preds = %150, %96, %68, %29
  %157 = load i64, i64* %9, align 8
  ret i64 %157
}

declare dso_local i32 @INTEGRAL_TYPE_P(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i32 @STRIP_NOPS(i64) #1

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local i64 @get_inner_reference(i64, i64*, i64*, i64*, i32*, i32*, i32*, i32) #1

declare dso_local i64 @TYPE_PRECISION(i64) #1

declare dso_local i32 @TYPE_UNSIGNED(i64) #1

declare dso_local i64 @build_int_cst(i64, i32) #1

declare dso_local i64 @force_fit_type(i64, i32, i32, i32) #1

declare dso_local i64 @const_binop(i32, i64, i32, i32) #1

declare dso_local i32 @size_int(i64) #1

declare dso_local i64 @fold_build2(i64, i64, i32, i64) #1

declare dso_local i32 @fold_convert(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
