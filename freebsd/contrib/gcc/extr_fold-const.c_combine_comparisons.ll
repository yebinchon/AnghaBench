; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_combine_comparisons.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_combine_comparisons.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_TREE = common dso_local global i32 0, align 4
@COMPCODE_UNORD = common dso_local global i32 0, align 4
@COMPCODE_LTGT = common dso_local global i32 0, align 4
@COMPCODE_NE = common dso_local global i32 0, align 4
@COMPCODE_ORD = common dso_local global i32 0, align 4
@COMPCODE_TRUE = common dso_local global i32 0, align 4
@flag_trapping_math = common dso_local global i64 0, align 8
@COMPCODE_EQ = common dso_local global i32 0, align 4
@COMPCODE_FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @combine_comparisons(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %21 = load i32, i32* %12, align 4
  %22 = call i32 @TREE_TYPE(i32 %21)
  %23 = call i32 @TYPE_MODE(i32 %22)
  %24 = call i32 @HONOR_NANS(i32 %23)
  store i32 %24, i32* %14, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @comparison_to_compcode(i32 %25)
  store i32 %26, i32* %15, align 4
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @comparison_to_compcode(i32 %27)
  store i32 %28, i32* %16, align 4
  %29 = load i32, i32* %8, align 4
  switch i32 %29, label %38 [
    i32 130, label %30
    i32 131, label %30
    i32 128, label %34
    i32 129, label %34
  ]

30:                                               ; preds = %6, %6
  %31 = load i32, i32* %15, align 4
  %32 = load i32, i32* %16, align 4
  %33 = and i32 %31, %32
  store i32 %33, i32* %17, align 4
  br label %40

34:                                               ; preds = %6, %6
  %35 = load i32, i32* %15, align 4
  %36 = load i32, i32* %16, align 4
  %37 = or i32 %35, %36
  store i32 %37, i32* %17, align 4
  br label %40

38:                                               ; preds = %6
  %39 = load i32, i32* @NULL_TREE, align 4
  store i32 %39, i32* %7, align 4
  br label %176

40:                                               ; preds = %34, %30
  %41 = load i32, i32* %14, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %61, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* @COMPCODE_UNORD, align 4
  %45 = xor i32 %44, -1
  %46 = load i32, i32* %17, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %17, align 4
  %48 = load i32, i32* %17, align 4
  %49 = load i32, i32* @COMPCODE_LTGT, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %43
  %52 = load i32, i32* @COMPCODE_NE, align 4
  store i32 %52, i32* %17, align 4
  br label %60

53:                                               ; preds = %43
  %54 = load i32, i32* %17, align 4
  %55 = load i32, i32* @COMPCODE_ORD, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = load i32, i32* @COMPCODE_TRUE, align 4
  store i32 %58, i32* %17, align 4
  br label %59

59:                                               ; preds = %57, %53
  br label %60

60:                                               ; preds = %59, %51
  br label %155

61:                                               ; preds = %40
  %62 = load i64, i64* @flag_trapping_math, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %154

64:                                               ; preds = %61
  %65 = load i32, i32* %15, align 4
  %66 = load i32, i32* @COMPCODE_UNORD, align 4
  %67 = and i32 %65, %66
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %64
  %70 = load i32, i32* %15, align 4
  %71 = load i32, i32* @COMPCODE_EQ, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %69
  %74 = load i32, i32* %15, align 4
  %75 = load i32, i32* @COMPCODE_ORD, align 4
  %76 = icmp ne i32 %74, %75
  br label %77

77:                                               ; preds = %73, %69, %64
  %78 = phi i1 [ false, %69 ], [ false, %64 ], [ %76, %73 ]
  %79 = zext i1 %78 to i32
  store i32 %79, i32* %18, align 4
  %80 = load i32, i32* %16, align 4
  %81 = load i32, i32* @COMPCODE_UNORD, align 4
  %82 = and i32 %80, %81
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %77
  %85 = load i32, i32* %16, align 4
  %86 = load i32, i32* @COMPCODE_EQ, align 4
  %87 = icmp ne i32 %85, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %84
  %89 = load i32, i32* %16, align 4
  %90 = load i32, i32* @COMPCODE_ORD, align 4
  %91 = icmp ne i32 %89, %90
  br label %92

92:                                               ; preds = %88, %84, %77
  %93 = phi i1 [ false, %84 ], [ false, %77 ], [ %91, %88 ]
  %94 = zext i1 %93 to i32
  store i32 %94, i32* %19, align 4
  %95 = load i32, i32* %17, align 4
  %96 = load i32, i32* @COMPCODE_UNORD, align 4
  %97 = and i32 %95, %96
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %107

99:                                               ; preds = %92
  %100 = load i32, i32* %17, align 4
  %101 = load i32, i32* @COMPCODE_EQ, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %103, label %107

103:                                              ; preds = %99
  %104 = load i32, i32* %17, align 4
  %105 = load i32, i32* @COMPCODE_ORD, align 4
  %106 = icmp ne i32 %104, %105
  br label %107

107:                                              ; preds = %103, %99, %92
  %108 = phi i1 [ false, %99 ], [ false, %92 ], [ %106, %103 ]
  %109 = zext i1 %108 to i32
  store i32 %109, i32* %20, align 4
  %110 = load i32, i32* %8, align 4
  %111 = icmp eq i32 %110, 129
  br i1 %111, label %112, label %117

112:                                              ; preds = %107
  %113 = load i32, i32* %15, align 4
  %114 = load i32, i32* @COMPCODE_UNORD, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %125, label %117

117:                                              ; preds = %112, %107
  %118 = load i32, i32* %8, align 4
  %119 = icmp eq i32 %118, 131
  br i1 %119, label %120, label %126

120:                                              ; preds = %117
  %121 = load i32, i32* %15, align 4
  %122 = load i32, i32* @COMPCODE_UNORD, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %126, label %125

125:                                              ; preds = %120, %112
  store i32 0, i32* %19, align 4
  br label %126

126:                                              ; preds = %125, %120, %117
  %127 = load i32, i32* %19, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %140

129:                                              ; preds = %126
  %130 = load i32, i32* %18, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %140, label %132

132:                                              ; preds = %129
  %133 = load i32, i32* %8, align 4
  %134 = icmp eq i32 %133, 131
  br i1 %134, label %138, label %135

135:                                              ; preds = %132
  %136 = load i32, i32* %8, align 4
  %137 = icmp eq i32 %136, 129
  br i1 %137, label %138, label %140

138:                                              ; preds = %135, %132
  %139 = load i32, i32* @NULL_TREE, align 4
  store i32 %139, i32* %7, align 4
  br label %176

140:                                              ; preds = %135, %129, %126
  %141 = load i32, i32* %18, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %146, label %143

143:                                              ; preds = %140
  %144 = load i32, i32* %19, align 4
  %145 = icmp ne i32 %144, 0
  br label %146

146:                                              ; preds = %143, %140
  %147 = phi i1 [ true, %140 ], [ %145, %143 ]
  %148 = zext i1 %147 to i32
  %149 = load i32, i32* %20, align 4
  %150 = icmp ne i32 %148, %149
  br i1 %150, label %151, label %153

151:                                              ; preds = %146
  %152 = load i32, i32* @NULL_TREE, align 4
  store i32 %152, i32* %7, align 4
  br label %176

153:                                              ; preds = %146
  br label %154

154:                                              ; preds = %153, %61
  br label %155

155:                                              ; preds = %154, %60
  %156 = load i32, i32* %17, align 4
  %157 = load i32, i32* @COMPCODE_TRUE, align 4
  %158 = icmp eq i32 %156, %157
  br i1 %158, label %159, label %162

159:                                              ; preds = %155
  %160 = load i32, i32* %11, align 4
  %161 = call i32 @constant_boolean_node(i32 1, i32 %160)
  store i32 %161, i32* %7, align 4
  br label %176

162:                                              ; preds = %155
  %163 = load i32, i32* %17, align 4
  %164 = load i32, i32* @COMPCODE_FALSE, align 4
  %165 = icmp eq i32 %163, %164
  br i1 %165, label %166, label %169

166:                                              ; preds = %162
  %167 = load i32, i32* %11, align 4
  %168 = call i32 @constant_boolean_node(i32 0, i32 %167)
  store i32 %168, i32* %7, align 4
  br label %176

169:                                              ; preds = %162
  %170 = load i32, i32* %17, align 4
  %171 = call i32 @compcode_to_comparison(i32 %170)
  %172 = load i32, i32* %11, align 4
  %173 = load i32, i32* %12, align 4
  %174 = load i32, i32* %13, align 4
  %175 = call i32 @fold_build2(i32 %171, i32 %172, i32 %173, i32 %174)
  store i32 %175, i32* %7, align 4
  br label %176

176:                                              ; preds = %169, %166, %159, %151, %138, %38
  %177 = load i32, i32* %7, align 4
  ret i32 %177
}

declare dso_local i32 @HONOR_NANS(i32) #1

declare dso_local i32 @TYPE_MODE(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @comparison_to_compcode(i32) #1

declare dso_local i32 @constant_boolean_node(i32, i32) #1

declare dso_local i32 @fold_build2(i32, i32, i32, i32) #1

declare dso_local i32 @compcode_to_comparison(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
