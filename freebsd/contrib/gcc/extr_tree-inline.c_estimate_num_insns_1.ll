; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-inline.c_estimate_num_insns_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-inline.c_estimate_num_insns_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BUILT_IN_NORMAL = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32* null, align 8
@PARAM_INLINE_CALL_COST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, i32*, i8*)* @estimate_num_insns_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @estimate_num_insns_1(i32** %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store i32** %0, i32*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to i32*
  store i32* %13, i32** %8, align 8
  %14 = load i32**, i32*** %5, align 8
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %9, align 8
  %16 = load i32*, i32** %9, align 8
  %17 = call i64 @IS_TYPE_OR_DECL_P(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32*, i32** %6, align 8
  store i32 0, i32* %20, align 4
  store i32* null, i32** %4, align 8
  br label %138

21:                                               ; preds = %3
  %22 = load i32*, i32** %9, align 8
  %23 = call i64 @CONSTANT_CLASS_P(i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load i32*, i32** %9, align 8
  %27 = call i64 @REFERENCE_CLASS_P(i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25, %21
  store i32* null, i32** %4, align 8
  br label %138

30:                                               ; preds = %25
  br label %31

31:                                               ; preds = %30
  %32 = load i32*, i32** %9, align 8
  %33 = call i32 @TREE_CODE(i32* %32)
  switch i32 %33, label %135 [
    i32 155, label %34
    i32 154, label %34
    i32 250, label %34
    i32 240, label %34
    i32 254, label %34
    i32 214, label %34
    i32 260, label %34
    i32 201, label %34
    i32 258, label %34
    i32 259, label %34
    i32 194, label %34
    i32 229, label %34
    i32 226, label %34
    i32 239, label %34
    i32 256, label %34
    i32 129, label %34
    i32 195, label %34
    i32 132, label %34
    i32 161, label %34
    i32 261, label %34
    i32 241, label %34
    i32 174, label %34
    i32 246, label %34
    i32 160, label %34
    i32 245, label %34
    i32 233, label %34
    i32 159, label %34
    i32 231, label %34
    i32 196, label %34
    i32 227, label %34
    i32 137, label %34
    i32 145, label %34
    i32 144, label %34
    i32 211, label %34
    i32 217, label %34
    i32 166, label %34
    i32 228, label %34
    i32 209, label %34
    i32 180, label %34
    i32 128, label %34
    i32 192, label %34
    i32 185, label %34
    i32 191, label %34
    i32 215, label %35
    i32 212, label %35
    i32 171, label %35
    i32 242, label %35
    i32 136, label %35
    i32 158, label %35
    i32 213, label %37
    i32 200, label %37
    i32 156, label %44
    i32 236, label %52
    i32 238, label %59
    i32 135, label %59
    i32 179, label %59
    i32 203, label %59
    i32 199, label %59
    i32 222, label %59
    i32 225, label %59
    i32 224, label %59
    i32 223, label %59
    i32 198, label %59
    i32 221, label %59
    i32 202, label %59
    i32 204, label %59
    i32 262, label %59
    i32 207, label %59
    i32 162, label %59
    i32 208, label %59
    i32 163, label %59
    i32 134, label %59
    i32 133, label %59
    i32 253, label %59
    i32 251, label %59
    i32 255, label %59
    i32 252, label %59
    i32 151, label %59
    i32 148, label %59
    i32 150, label %59
    i32 147, label %59
    i32 146, label %59
    i32 149, label %59
    i32 205, label %59
    i32 210, label %59
    i32 216, label %59
    i32 218, label %59
    i32 232, label %59
    i32 197, label %59
    i32 181, label %59
    i32 138, label %59
    i32 139, label %59
    i32 140, label %59
    i32 141, label %59
    i32 142, label %59
    i32 143, label %59
    i32 206, label %59
    i32 235, label %59
    i32 237, label %59
    i32 176, label %59
    i32 175, label %59
    i32 178, label %59
    i32 177, label %59
    i32 157, label %59
    i32 257, label %59
    i32 172, label %59
    i32 170, label %59
    i32 169, label %59
    i32 168, label %59
    i32 130, label %59
    i32 234, label %59
    i32 131, label %59
    i32 167, label %59
    i32 153, label %63
    i32 244, label %63
    i32 220, label %63
    i32 165, label %63
    i32 230, label %63
    i32 152, label %63
    i32 243, label %63
    i32 219, label %63
    i32 164, label %63
    i32 173, label %63
    i32 247, label %67
    i32 186, label %131
    i32 189, label %131
    i32 183, label %131
    i32 182, label %131
    i32 184, label %131
    i32 188, label %131
    i32 187, label %131
    i32 190, label %131
    i32 193, label %131
  ]

34:                                               ; preds = %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31
  br label %137

35:                                               ; preds = %31, %31, %31, %31, %31, %31
  %36 = load i32*, i32** %6, align 8
  store i32 0, i32* %36, align 4
  store i32* null, i32** %4, align 8
  br label %138

37:                                               ; preds = %31, %31
  %38 = load i32*, i32** %9, align 8
  %39 = call i32* @TREE_OPERAND(i32* %38, i32 1)
  %40 = call i32 @TREE_CODE(i32* %39)
  %41 = icmp eq i32 %40, 156
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %137

43:                                               ; preds = %37
  br label %44

44:                                               ; preds = %31, %43
  %45 = load i32*, i32** %9, align 8
  %46 = call i32* @TREE_OPERAND(i32* %45, i32 0)
  store i32* %46, i32** %9, align 8
  %47 = load i32*, i32** %9, align 8
  %48 = call i32 @is_gimple_reg(i32* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %137

51:                                               ; preds = %44
  br label %52

52:                                               ; preds = %31, %51
  %53 = load i32*, i32** %9, align 8
  %54 = call i32 @TREE_TYPE(i32* %53)
  %55 = call i32 @estimate_move_cost(i32 %54)
  %56 = load i32*, i32** %8, align 8
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, %55
  store i32 %58, i32* %56, align 4
  br label %137

59:                                               ; preds = %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31
  %60 = load i32*, i32** %8, align 8
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 4
  br label %137

63:                                               ; preds = %31, %31, %31, %31, %31, %31, %31, %31, %31, %31
  %64 = load i32*, i32** %8, align 8
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, 10
  store i32 %66, i32* %64, align 4
  br label %137

67:                                               ; preds = %31
  %68 = load i32*, i32** %9, align 8
  %69 = call i32* @get_callee_fndecl(i32* %68)
  store i32* %69, i32** %10, align 8
  %70 = load i32*, i32** %10, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %87

72:                                               ; preds = %67
  %73 = load i32*, i32** %10, align 8
  %74 = call i32 @DECL_BUILT_IN_CLASS(i32* %73)
  %75 = load i32, i32* @BUILT_IN_NORMAL, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %87

77:                                               ; preds = %72
  %78 = load i32*, i32** %10, align 8
  %79 = call i32 @DECL_FUNCTION_CODE(i32* %78)
  switch i32 %79, label %85 [
    i32 249, label %80
    i32 248, label %83
  ]

80:                                               ; preds = %77
  %81 = load i32*, i32** %6, align 8
  store i32 0, i32* %81, align 4
  %82 = load i32*, i32** @NULL_TREE, align 8
  store i32* %82, i32** %4, align 8
  br label %138

83:                                               ; preds = %77
  %84 = load i32*, i32** @NULL_TREE, align 8
  store i32* %84, i32** %4, align 8
  br label %138

85:                                               ; preds = %77
  br label %86

86:                                               ; preds = %85
  br label %87

87:                                               ; preds = %86, %72, %67
  %88 = load i32*, i32** %10, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %108, label %90

90:                                               ; preds = %87
  %91 = load i32*, i32** %9, align 8
  %92 = call i32* @TREE_OPERAND(i32* %91, i32 1)
  store i32* %92, i32** %11, align 8
  br label %93

93:                                               ; preds = %104, %90
  %94 = load i32*, i32** %11, align 8
  %95 = icmp ne i32* %94, null
  br i1 %95, label %96, label %107

96:                                               ; preds = %93
  %97 = load i32*, i32** %11, align 8
  %98 = call i32* @TREE_VALUE(i32* %97)
  %99 = call i32 @TREE_TYPE(i32* %98)
  %100 = call i32 @estimate_move_cost(i32 %99)
  %101 = load i32*, i32** %8, align 8
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, %100
  store i32 %103, i32* %101, align 4
  br label %104

104:                                              ; preds = %96
  %105 = load i32*, i32** %11, align 8
  %106 = call i32* @TREE_CHAIN(i32* %105)
  store i32* %106, i32** %11, align 8
  br label %93

107:                                              ; preds = %93
  br label %125

108:                                              ; preds = %87
  %109 = load i32*, i32** %10, align 8
  %110 = call i32* @DECL_ARGUMENTS(i32* %109)
  store i32* %110, i32** %11, align 8
  br label %111

111:                                              ; preds = %121, %108
  %112 = load i32*, i32** %11, align 8
  %113 = icmp ne i32* %112, null
  br i1 %113, label %114, label %124

114:                                              ; preds = %111
  %115 = load i32*, i32** %11, align 8
  %116 = call i32 @TREE_TYPE(i32* %115)
  %117 = call i32 @estimate_move_cost(i32 %116)
  %118 = load i32*, i32** %8, align 8
  %119 = load i32, i32* %118, align 4
  %120 = add nsw i32 %119, %117
  store i32 %120, i32* %118, align 4
  br label %121

121:                                              ; preds = %114
  %122 = load i32*, i32** %11, align 8
  %123 = call i32* @TREE_CHAIN(i32* %122)
  store i32* %123, i32** %11, align 8
  br label %111

124:                                              ; preds = %111
  br label %125

125:                                              ; preds = %124, %107
  %126 = load i32, i32* @PARAM_INLINE_CALL_COST, align 4
  %127 = call i32 @PARAM_VALUE(i32 %126)
  %128 = load i32*, i32** %8, align 8
  %129 = load i32, i32* %128, align 4
  %130 = add nsw i32 %129, %127
  store i32 %130, i32* %128, align 4
  br label %137

131:                                              ; preds = %31, %31, %31, %31, %31, %31, %31, %31, %31
  %132 = load i32*, i32** %8, align 8
  %133 = load i32, i32* %132, align 4
  %134 = add nsw i32 %133, 40
  store i32 %134, i32* %132, align 4
  br label %137

135:                                              ; preds = %31
  %136 = call i32 (...) @gcc_unreachable()
  br label %137

137:                                              ; preds = %135, %131, %125, %63, %59, %52, %50, %42, %34
  store i32* null, i32** %4, align 8
  br label %138

138:                                              ; preds = %137, %83, %80, %35, %29, %19
  %139 = load i32*, i32** %4, align 8
  ret i32* %139
}

declare dso_local i64 @IS_TYPE_OR_DECL_P(i32*) #1

declare dso_local i64 @CONSTANT_CLASS_P(i32*) #1

declare dso_local i64 @REFERENCE_CLASS_P(i32*) #1

declare dso_local i32 @TREE_CODE(i32*) #1

declare dso_local i32* @TREE_OPERAND(i32*, i32) #1

declare dso_local i32 @is_gimple_reg(i32*) #1

declare dso_local i32 @estimate_move_cost(i32) #1

declare dso_local i32 @TREE_TYPE(i32*) #1

declare dso_local i32* @get_callee_fndecl(i32*) #1

declare dso_local i32 @DECL_BUILT_IN_CLASS(i32*) #1

declare dso_local i32 @DECL_FUNCTION_CODE(i32*) #1

declare dso_local i32* @TREE_VALUE(i32*) #1

declare dso_local i32* @TREE_CHAIN(i32*) #1

declare dso_local i32* @DECL_ARGUMENTS(i32*) #1

declare dso_local i32 @PARAM_VALUE(i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
