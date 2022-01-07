; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-ccp.c_get_maxval_strlen.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-ccp.c_get_maxval_strlen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SSA_NAME = common dso_local global i32 0, align 4
@INTEGER_CST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64*, i32, i32)* @get_maxval_strlen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_maxval_strlen(i64 %0, i64* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i64* %1, i64** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load i64, i64* %6, align 8
  %17 = call i32 @TREE_CODE(i64 %16)
  %18 = load i32, i32* @SSA_NAME, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %83

20:                                               ; preds = %4
  %21 = load i32, i32* %9, align 4
  %22 = icmp eq i32 %21, 2
  br i1 %22, label %23, label %35

23:                                               ; preds = %20
  %24 = load i64, i64* %6, align 8
  store i64 %24, i64* %12, align 8
  %25 = load i64, i64* %12, align 8
  %26 = call i32 @TREE_CODE(i64 %25)
  %27 = load i32, i32* @INTEGER_CST, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %33, label %29

29:                                               ; preds = %23
  %30 = load i64, i64* %12, align 8
  %31 = call i64 @tree_int_cst_sgn(i64 %30)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29, %23
  store i32 0, i32* %5, align 4
  br label %140

34:                                               ; preds = %29
  br label %38

35:                                               ; preds = %20
  %36 = load i64, i64* %6, align 8
  %37 = call i64 @c_strlen(i64 %36, i32 1)
  store i64 %37, i64* %12, align 8
  br label %38

38:                                               ; preds = %35, %34
  %39 = load i64, i64* %12, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %38
  store i32 0, i32* %5, align 4
  br label %140

42:                                               ; preds = %38
  %43 = load i64*, i64** %7, align 8
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %80

46:                                               ; preds = %42
  %47 = load i32, i32* %9, align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %71

49:                                               ; preds = %46
  %50 = load i64*, i64** %7, align 8
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @TREE_CODE(i64 %51)
  %53 = load i32, i32* @INTEGER_CST, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %60, label %55

55:                                               ; preds = %49
  %56 = load i64, i64* %12, align 8
  %57 = call i32 @TREE_CODE(i64 %56)
  %58 = load i32, i32* @INTEGER_CST, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %55, %49
  store i32 0, i32* %5, align 4
  br label %140

61:                                               ; preds = %55
  %62 = load i64*, i64** %7, align 8
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %12, align 8
  %65 = call i64 @tree_int_cst_lt(i64 %63, i64 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = load i64, i64* %12, align 8
  %69 = load i64*, i64** %7, align 8
  store i64 %68, i64* %69, align 8
  br label %70

70:                                               ; preds = %67, %61
  store i32 1, i32* %5, align 4
  br label %140

71:                                               ; preds = %46
  %72 = load i64, i64* %12, align 8
  %73 = load i64*, i64** %7, align 8
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @simple_cst_equal(i64 %72, i64 %74)
  %76 = icmp ne i32 %75, 1
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  store i32 0, i32* %5, align 4
  br label %140

78:                                               ; preds = %71
  br label %79

79:                                               ; preds = %78
  br label %80

80:                                               ; preds = %79, %42
  %81 = load i64, i64* %12, align 8
  %82 = load i64*, i64** %7, align 8
  store i64 %81, i64* %82, align 8
  store i32 1, i32* %5, align 4
  br label %140

83:                                               ; preds = %4
  %84 = load i32, i32* %8, align 4
  %85 = load i64, i64* %6, align 8
  %86 = call i32 @SSA_NAME_VERSION(i64 %85)
  %87 = call i64 @bitmap_bit_p(i32 %84, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  store i32 1, i32* %5, align 4
  br label %140

90:                                               ; preds = %83
  %91 = load i32, i32* %8, align 4
  %92 = load i64, i64* %6, align 8
  %93 = call i32 @SSA_NAME_VERSION(i64 %92)
  %94 = call i32 @bitmap_set_bit(i32 %91, i32 %93)
  %95 = load i64, i64* %6, align 8
  store i64 %95, i64* %10, align 8
  %96 = load i64, i64* %10, align 8
  %97 = call i64 @SSA_NAME_DEF_STMT(i64 %96)
  store i64 %97, i64* %11, align 8
  %98 = load i64, i64* %11, align 8
  %99 = call i32 @TREE_CODE(i64 %98)
  switch i32 %99, label %138 [
    i32 129, label %100
    i32 128, label %110
  ]

100:                                              ; preds = %90
  %101 = load i64, i64* %11, align 8
  %102 = call i64 @TREE_OPERAND(i64 %101, i32 1)
  store i64 %102, i64* %13, align 8
  %103 = load i64, i64* %13, align 8
  %104 = call i32 @STRIP_NOPS(i64 %103)
  %105 = load i64, i64* %13, align 8
  %106 = load i64*, i64** %7, align 8
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* %9, align 4
  %109 = call i32 @get_maxval_strlen(i64 %105, i64* %106, i32 %107, i32 %108)
  store i32 %109, i32* %5, align 4
  br label %140

110:                                              ; preds = %90
  store i32 0, i32* %14, align 4
  br label %111

111:                                              ; preds = %134, %110
  %112 = load i32, i32* %14, align 4
  %113 = load i64, i64* %11, align 8
  %114 = call i32 @PHI_NUM_ARGS(i64 %113)
  %115 = icmp slt i32 %112, %114
  br i1 %115, label %116, label %137

116:                                              ; preds = %111
  %117 = load i64, i64* %11, align 8
  %118 = load i32, i32* %14, align 4
  %119 = call i64 @PHI_ARG_DEF(i64 %117, i32 %118)
  store i64 %119, i64* %15, align 8
  %120 = load i64, i64* %15, align 8
  %121 = load i64, i64* %11, align 8
  %122 = call i64 @PHI_RESULT(i64 %121)
  %123 = icmp eq i64 %120, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %116
  br label %134

125:                                              ; preds = %116
  %126 = load i64, i64* %15, align 8
  %127 = load i64*, i64** %7, align 8
  %128 = load i32, i32* %8, align 4
  %129 = load i32, i32* %9, align 4
  %130 = call i32 @get_maxval_strlen(i64 %126, i64* %127, i32 %128, i32 %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %125
  store i32 0, i32* %5, align 4
  br label %140

133:                                              ; preds = %125
  br label %134

134:                                              ; preds = %133, %124
  %135 = load i32, i32* %14, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %14, align 4
  br label %111

137:                                              ; preds = %111
  store i32 1, i32* %5, align 4
  br label %140

138:                                              ; preds = %90
  br label %139

139:                                              ; preds = %138
  store i32 0, i32* %5, align 4
  br label %140

140:                                              ; preds = %139, %137, %132, %100, %89, %80, %77, %70, %60, %41, %33
  %141 = load i32, i32* %5, align 4
  ret i32 %141
}

declare dso_local i32 @TREE_CODE(i64) #1

declare dso_local i64 @tree_int_cst_sgn(i64) #1

declare dso_local i64 @c_strlen(i64, i32) #1

declare dso_local i64 @tree_int_cst_lt(i64, i64) #1

declare dso_local i32 @simple_cst_equal(i64, i64) #1

declare dso_local i64 @bitmap_bit_p(i32, i32) #1

declare dso_local i32 @SSA_NAME_VERSION(i64) #1

declare dso_local i32 @bitmap_set_bit(i32, i32) #1

declare dso_local i64 @SSA_NAME_DEF_STMT(i64) #1

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local i32 @STRIP_NOPS(i64) #1

declare dso_local i32 @PHI_NUM_ARGS(i64) #1

declare dso_local i64 @PHI_ARG_DEF(i64, i32) #1

declare dso_local i64 @PHI_RESULT(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
