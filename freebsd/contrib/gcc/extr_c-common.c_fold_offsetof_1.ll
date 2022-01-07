; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-common.c_fold_offsetof_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-common.c_fold_offsetof_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PLUS_EXPR = common dso_local global i32 0, align 4
@size_zero_node = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [52 x i8] c"cannot apply %<offsetof%> to static data member %qD\00", align 1
@error_mark_node = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [60 x i8] c"cannot apply %<offsetof%> when %<operator[]%> is overloaded\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"attempt to take address of bit-field structure member %qD\00", align 1
@BITS_PER_UNIT = common dso_local global i32 0, align 4
@MINUS_EXPR = common dso_local global i32 0, align 4
@NEGATE_EXPR = common dso_local global i32 0, align 4
@sizetype = common dso_local global i32 0, align 4
@MULT_EXPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64)* @fold_offsetof_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fold_offsetof_1(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load i32, i32* @PLUS_EXPR, align 4
  store i32 %10, i32* %6, align 4
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* %5, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load i64, i64* %4, align 8
  %16 = call i32 @TREE_CODE(i64 %15)
  %17 = icmp ne i32 %16, 132
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load i64, i64* @size_zero_node, align 8
  store i64 %19, i64* %3, align 8
  br label %140

20:                                               ; preds = %14, %2
  %21 = load i64, i64* %4, align 8
  %22 = call i32 @TREE_CODE(i64 %21)
  switch i32 %22, label %133 [
    i32 132, label %23
    i32 128, label %25
    i32 135, label %29
    i32 130, label %32
    i32 129, label %37
    i32 131, label %37
    i32 134, label %54
    i32 136, label %85
    i32 133, label %122
  ]

23:                                               ; preds = %20
  %24 = load i64, i64* %4, align 8
  store i64 %24, i64* %3, align 8
  br label %140

25:                                               ; preds = %20
  %26 = load i64, i64* %4, align 8
  %27 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i64 %26)
  %28 = load i64, i64* @error_mark_node, align 8
  store i64 %28, i64* %3, align 8
  br label %140

29:                                               ; preds = %20
  %30 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i64, i64* @error_mark_node, align 8
  store i64 %31, i64* %3, align 8
  br label %140

32:                                               ; preds = %20
  %33 = load i64, i64* %4, align 8
  %34 = call i32 @integer_zerop(i64 %33)
  %35 = call i32 @gcc_assert(i32 %34)
  %36 = load i64, i64* @size_zero_node, align 8
  store i64 %36, i64* %3, align 8
  br label %140

37:                                               ; preds = %20, %20
  %38 = load i64, i64* %4, align 8
  %39 = call i64 @TREE_OPERAND(i64 %38, i32 0)
  %40 = load i64, i64* %5, align 8
  %41 = call i64 @fold_offsetof_1(i64 %39, i64 %40)
  store i64 %41, i64* %7, align 8
  %42 = load i64, i64* %7, align 8
  %43 = load i64, i64* @error_mark_node, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %49, label %45

45:                                               ; preds = %37
  %46 = load i64, i64* %7, align 8
  %47 = load i64, i64* @size_zero_node, align 8
  %48 = icmp eq i64 %46, %47
  br label %49

49:                                               ; preds = %45, %37
  %50 = phi i1 [ true, %37 ], [ %48, %45 ]
  %51 = zext i1 %50 to i32
  %52 = call i32 @gcc_assert(i32 %51)
  %53 = load i64, i64* %7, align 8
  store i64 %53, i64* %3, align 8
  br label %140

54:                                               ; preds = %20
  %55 = load i64, i64* %4, align 8
  %56 = call i64 @TREE_OPERAND(i64 %55, i32 0)
  %57 = load i64, i64* %5, align 8
  %58 = call i64 @fold_offsetof_1(i64 %56, i64 %57)
  store i64 %58, i64* %7, align 8
  %59 = load i64, i64* %7, align 8
  %60 = load i64, i64* @error_mark_node, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %54
  %63 = load i64, i64* %7, align 8
  store i64 %63, i64* %3, align 8
  br label %140

64:                                               ; preds = %54
  %65 = load i64, i64* %4, align 8
  %66 = call i64 @TREE_OPERAND(i64 %65, i32 1)
  store i64 %66, i64* %9, align 8
  %67 = load i64, i64* %9, align 8
  %68 = call i32 @DECL_C_BIT_FIELD(i64 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %64
  %71 = load i64, i64* %9, align 8
  %72 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i64 %71)
  %73 = load i64, i64* @error_mark_node, align 8
  store i64 %73, i64* %3, align 8
  br label %140

74:                                               ; preds = %64
  %75 = load i32, i32* @PLUS_EXPR, align 4
  %76 = load i64, i64* %9, align 8
  %77 = call i64 @DECL_FIELD_OFFSET(i64 %76)
  %78 = load i64, i64* %9, align 8
  %79 = call i32 @DECL_FIELD_BIT_OFFSET(i64 %78)
  %80 = call i32 @tree_low_cst(i32 %79, i32 1)
  %81 = load i32, i32* @BITS_PER_UNIT, align 4
  %82 = sdiv i32 %80, %81
  %83 = call i64 @size_int(i32 %82)
  %84 = call i64 @size_binop(i32 %75, i64 %77, i64 %83)
  store i64 %84, i64* %8, align 8
  br label %135

85:                                               ; preds = %20
  %86 = load i64, i64* %4, align 8
  %87 = call i64 @TREE_OPERAND(i64 %86, i32 0)
  %88 = load i64, i64* %5, align 8
  %89 = call i64 @fold_offsetof_1(i64 %87, i64 %88)
  store i64 %89, i64* %7, align 8
  %90 = load i64, i64* %7, align 8
  %91 = load i64, i64* @error_mark_node, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %85
  %94 = load i64, i64* %7, align 8
  store i64 %94, i64* %3, align 8
  br label %140

95:                                               ; preds = %85
  %96 = load i64, i64* %4, align 8
  %97 = call i64 @TREE_OPERAND(i64 %96, i32 1)
  store i64 %97, i64* %9, align 8
  %98 = load i64, i64* %9, align 8
  %99 = call i32 @TREE_CODE(i64 %98)
  %100 = icmp eq i32 %99, 130
  br i1 %100, label %101, label %112

101:                                              ; preds = %95
  %102 = load i64, i64* %9, align 8
  %103 = call i32 @tree_int_cst_sgn(i64 %102)
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %101
  %106 = load i32, i32* @MINUS_EXPR, align 4
  store i32 %106, i32* %6, align 4
  %107 = load i32, i32* @NEGATE_EXPR, align 4
  %108 = load i64, i64* %9, align 8
  %109 = call i32 @TREE_TYPE(i64 %108)
  %110 = load i64, i64* %9, align 8
  %111 = call i64 @fold_build1(i32 %107, i32 %109, i64 %110)
  store i64 %111, i64* %9, align 8
  br label %112

112:                                              ; preds = %105, %101, %95
  %113 = load i32, i32* @sizetype, align 4
  %114 = load i64, i64* %9, align 8
  %115 = call i64 @convert(i32 %113, i64 %114)
  store i64 %115, i64* %9, align 8
  %116 = load i32, i32* @MULT_EXPR, align 4
  %117 = load i64, i64* %4, align 8
  %118 = call i32 @TREE_TYPE(i64 %117)
  %119 = call i64 @TYPE_SIZE_UNIT(i32 %118)
  %120 = load i64, i64* %9, align 8
  %121 = call i64 @size_binop(i32 %116, i64 %119, i64 %120)
  store i64 %121, i64* %8, align 8
  br label %135

122:                                              ; preds = %20
  %123 = load i64, i64* %4, align 8
  %124 = call i64 @TREE_OPERAND(i64 %123, i32 1)
  store i64 %124, i64* %9, align 8
  %125 = load i64, i64* %9, align 8
  %126 = call i32 @TREE_CODE(i64 %125)
  %127 = icmp eq i32 %126, 128
  %128 = zext i1 %127 to i32
  %129 = call i32 @gcc_assert(i32 %128)
  %130 = load i64, i64* %9, align 8
  %131 = load i64, i64* %5, align 8
  %132 = call i64 @fold_offsetof_1(i64 %130, i64 %131)
  store i64 %132, i64* %3, align 8
  br label %140

133:                                              ; preds = %20
  %134 = call i32 (...) @gcc_unreachable()
  br label %135

135:                                              ; preds = %133, %112, %74
  %136 = load i32, i32* %6, align 4
  %137 = load i64, i64* %7, align 8
  %138 = load i64, i64* %8, align 8
  %139 = call i64 @size_binop(i32 %136, i64 %137, i64 %138)
  store i64 %139, i64* %3, align 8
  br label %140

140:                                              ; preds = %135, %122, %93, %70, %62, %49, %32, %29, %25, %23, %18
  %141 = load i64, i64* %3, align 8
  ret i64 %141
}

declare dso_local i32 @TREE_CODE(i64) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @integer_zerop(i64) #1

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local i32 @DECL_C_BIT_FIELD(i64) #1

declare dso_local i64 @size_binop(i32, i64, i64) #1

declare dso_local i64 @DECL_FIELD_OFFSET(i64) #1

declare dso_local i64 @size_int(i32) #1

declare dso_local i32 @tree_low_cst(i32, i32) #1

declare dso_local i32 @DECL_FIELD_BIT_OFFSET(i64) #1

declare dso_local i32 @tree_int_cst_sgn(i64) #1

declare dso_local i64 @fold_build1(i32, i32, i64) #1

declare dso_local i32 @TREE_TYPE(i64) #1

declare dso_local i64 @convert(i32, i64) #1

declare dso_local i64 @TYPE_SIZE_UNIT(i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
