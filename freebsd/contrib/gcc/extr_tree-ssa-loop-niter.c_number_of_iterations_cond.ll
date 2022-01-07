; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-niter.c_number_of_iterations_cond.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-niter.c_number_of_iterations_cond.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i8* }
%struct.tree_niter_desc = type { i8*, i32, i8*, i8*, i32, i8* }

@boolean_true_node = common dso_local global i8* null, align 8
@boolean_false_node = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i8* null, align 8
@ERROR_MARK = common dso_local global i32 0, align 4
@GE_EXPR = common dso_local global i32 0, align 4
@GT_EXPR = common dso_local global i32 0, align 4
@MINUS_EXPR = common dso_local global i32 0, align 4
@boolean_type_node = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_11__*, i32, %struct.TYPE_11__*, %struct.tree_niter_desc*, i32)* @number_of_iterations_cond to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @number_of_iterations_cond(i32 %0, %struct.TYPE_11__* %1, i32 %2, %struct.TYPE_11__* %3, %struct.tree_niter_desc* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca %struct.tree_niter_desc*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** %11, align 8
  store %struct.tree_niter_desc* %4, %struct.tree_niter_desc** %12, align 8
  store i32 %5, i32* %13, align 4
  %15 = load i8*, i8** @boolean_true_node, align 8
  %16 = load %struct.tree_niter_desc*, %struct.tree_niter_desc** %12, align 8
  %17 = getelementptr inbounds %struct.tree_niter_desc, %struct.tree_niter_desc* %16, i32 0, i32 5
  store i8* %15, i8** %17, align 8
  %18 = load i32, i32* @boolean_false_node, align 4
  %19 = load %struct.tree_niter_desc*, %struct.tree_niter_desc** %12, align 8
  %20 = getelementptr inbounds %struct.tree_niter_desc, %struct.tree_niter_desc* %19, i32 0, i32 4
  store i32 %18, i32* %20, align 8
  %21 = load i8*, i8** @NULL_TREE, align 8
  %22 = load %struct.tree_niter_desc*, %struct.tree_niter_desc** %12, align 8
  %23 = getelementptr inbounds %struct.tree_niter_desc, %struct.tree_niter_desc* %22, i32 0, i32 0
  store i8* %21, i8** %23, align 8
  %24 = load i8*, i8** @boolean_true_node, align 8
  %25 = load %struct.tree_niter_desc*, %struct.tree_niter_desc** %12, align 8
  %26 = getelementptr inbounds %struct.tree_niter_desc, %struct.tree_niter_desc* %25, i32 0, i32 3
  store i8* %24, i8** %26, align 8
  %27 = load i8*, i8** @NULL_TREE, align 8
  %28 = load %struct.tree_niter_desc*, %struct.tree_niter_desc** %12, align 8
  %29 = getelementptr inbounds %struct.tree_niter_desc, %struct.tree_niter_desc* %28, i32 0, i32 2
  store i8* %27, i8** %29, align 8
  %30 = load i32, i32* @ERROR_MARK, align 4
  %31 = load %struct.tree_niter_desc*, %struct.tree_niter_desc** %12, align 8
  %32 = getelementptr inbounds %struct.tree_niter_desc, %struct.tree_niter_desc* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* @GE_EXPR, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %49, label %36

36:                                               ; preds = %6
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @GT_EXPR, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %49, label %40

40:                                               ; preds = %36
  %41 = load i32, i32* %10, align 4
  %42 = icmp eq i32 %41, 128
  br i1 %42, label %43, label %55

43:                                               ; preds = %40
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 2
  %46 = load i8*, i8** %45, align 8
  %47 = call i64 @zero_p(i8* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %43, %36, %6
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %52 = call i32 @SWAP(%struct.TYPE_11__* %50, %struct.TYPE_11__* %51)
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @swap_tree_comparison(i32 %53)
  store i32 %54, i32* %10, align 4
  br label %55

55:                                               ; preds = %49, %43, %40
  %56 = load i32, i32* %13, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %55
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  store i32 0, i32* %60, align 8
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  store i32 0, i32* %62, align 8
  br label %63

63:                                               ; preds = %58, %55
  %64 = load i32, i32* %8, align 4
  %65 = call i64 @POINTER_TYPE_P(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %63
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  store i32 1, i32* %69, align 8
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  store i32 1, i32* %71, align 8
  br label %72

72:                                               ; preds = %67, %63
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 2
  %75 = load i8*, i8** %74, align 8
  %76 = call i64 @zero_p(i8* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %84, label %78

78:                                               ; preds = %72
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  store i32 1, i32* %14, align 4
  br label %98

84:                                               ; preds = %78, %72
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 2
  %87 = load i8*, i8** %86, align 8
  %88 = call i64 @zero_p(i8* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %96, label %90

90:                                               ; preds = %84
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  store i32 1, i32* %14, align 4
  br label %97

96:                                               ; preds = %90, %84
  store i32 0, i32* %14, align 4
  br label %97

97:                                               ; preds = %96, %95
  br label %98

98:                                               ; preds = %97, %83
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 2
  %101 = load i8*, i8** %100, align 8
  %102 = call i64 @zero_p(i8* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %133, label %104

104:                                              ; preds = %98
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 2
  %107 = load i8*, i8** %106, align 8
  %108 = call i64 @zero_p(i8* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %133, label %110

110:                                              ; preds = %104
  %111 = load i32, i32* %10, align 4
  %112 = icmp ne i32 %111, 128
  br i1 %112, label %113, label %114

113:                                              ; preds = %110
  store i32 0, i32* %7, align 4
  br label %225

114:                                              ; preds = %110
  %115 = load i32, i32* @MINUS_EXPR, align 4
  %116 = load i32, i32* %8, align 4
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 2
  %119 = load i8*, i8** %118, align 8
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 2
  %122 = load i8*, i8** %121, align 8
  %123 = call i8* @fold_binary_to_constant(i32 %115, i32 %116, i8* %119, i8* %122)
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 2
  store i8* %123, i8** %125, align 8
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 0
  store i32 0, i32* %127, align 8
  %128 = load i8*, i8** @NULL_TREE, align 8
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 2
  store i8* %128, i8** %130, align 8
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 0
  store i32 1, i32* %132, align 8
  br label %133

133:                                              ; preds = %114, %104, %98
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 2
  %136 = load i8*, i8** %135, align 8
  %137 = call i64 @zero_p(i8* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %146

139:                                              ; preds = %133
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 2
  %142 = load i8*, i8** %141, align 8
  %143 = call i64 @zero_p(i8* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %139
  store i32 0, i32* %7, align 4
  br label %225

146:                                              ; preds = %139, %133
  %147 = load i32, i32* %10, align 4
  %148 = icmp ne i32 %147, 128
  br i1 %148, label %149, label %175

149:                                              ; preds = %146
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 2
  %152 = load i8*, i8** %151, align 8
  %153 = icmp ne i8* %152, null
  br i1 %153, label %154, label %161

154:                                              ; preds = %149
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 2
  %157 = load i8*, i8** %156, align 8
  %158 = call i64 @tree_int_cst_sign_bit(i8* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %154
  store i32 0, i32* %7, align 4
  br label %225

161:                                              ; preds = %154, %149
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 2
  %164 = load i8*, i8** %163, align 8
  %165 = call i64 @zero_p(i8* %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %174, label %167

167:                                              ; preds = %161
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 2
  %170 = load i8*, i8** %169, align 8
  %171 = call i64 @tree_int_cst_sign_bit(i8* %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %174, label %173

173:                                              ; preds = %167
  store i32 0, i32* %7, align 4
  br label %225

174:                                              ; preds = %167, %161
  br label %175

175:                                              ; preds = %174, %146
  %176 = load i32, i32* %10, align 4
  %177 = load i32, i32* @boolean_type_node, align 4
  %178 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %182 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = call i8* @fold_build2(i32 %176, i32 %177, i32 %180, i32 %183)
  %185 = call i64 @zero_p(i8* %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %193

187:                                              ; preds = %175
  %188 = load i32, i32* %8, align 4
  %189 = call i32 @unsigned_type_for(i32 %188)
  %190 = call i8* @build_int_cst(i32 %189, i32 0)
  %191 = load %struct.tree_niter_desc*, %struct.tree_niter_desc** %12, align 8
  %192 = getelementptr inbounds %struct.tree_niter_desc, %struct.tree_niter_desc* %191, i32 0, i32 0
  store i8* %190, i8** %192, align 8
  store i32 1, i32* %7, align 4
  br label %225

193:                                              ; preds = %175
  %194 = load i32, i32* %10, align 4
  switch i32 %194, label %223 [
    i32 128, label %195
    i32 129, label %209
    i32 130, label %216
  ]

195:                                              ; preds = %193
  %196 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %197 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %196, i32 0, i32 2
  %198 = load i8*, i8** %197, align 8
  %199 = call i64 @zero_p(i8* %198)
  %200 = call i32 @gcc_assert(i64 %199)
  %201 = load i32, i32* %8, align 4
  %202 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %203 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %204 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.tree_niter_desc*, %struct.tree_niter_desc** %12, align 8
  %207 = load i32, i32* %14, align 4
  %208 = call i32 @number_of_iterations_ne(i32 %201, %struct.TYPE_11__* %202, i32 %205, %struct.tree_niter_desc* %206, i32 %207)
  store i32 %208, i32* %7, align 4
  br label %225

209:                                              ; preds = %193
  %210 = load i32, i32* %8, align 4
  %211 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %212 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %213 = load %struct.tree_niter_desc*, %struct.tree_niter_desc** %12, align 8
  %214 = load i32, i32* %14, align 4
  %215 = call i32 @number_of_iterations_lt(i32 %210, %struct.TYPE_11__* %211, %struct.TYPE_11__* %212, %struct.tree_niter_desc* %213, i32 %214)
  store i32 %215, i32* %7, align 4
  br label %225

216:                                              ; preds = %193
  %217 = load i32, i32* %8, align 4
  %218 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %219 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %220 = load %struct.tree_niter_desc*, %struct.tree_niter_desc** %12, align 8
  %221 = load i32, i32* %14, align 4
  %222 = call i32 @number_of_iterations_le(i32 %217, %struct.TYPE_11__* %218, %struct.TYPE_11__* %219, %struct.tree_niter_desc* %220, i32 %221)
  store i32 %222, i32* %7, align 4
  br label %225

223:                                              ; preds = %193
  %224 = call i32 (...) @gcc_unreachable()
  br label %225

225:                                              ; preds = %113, %145, %160, %173, %187, %195, %209, %216, %223
  %226 = load i32, i32* %7, align 4
  ret i32 %226
}

declare dso_local i64 @zero_p(i8*) #1

declare dso_local i32 @SWAP(%struct.TYPE_11__*, %struct.TYPE_11__*) #1

declare dso_local i32 @swap_tree_comparison(i32) #1

declare dso_local i64 @POINTER_TYPE_P(i32) #1

declare dso_local i8* @fold_binary_to_constant(i32, i32, i8*, i8*) #1

declare dso_local i64 @tree_int_cst_sign_bit(i8*) #1

declare dso_local i8* @fold_build2(i32, i32, i32, i32) #1

declare dso_local i8* @build_int_cst(i32, i32) #1

declare dso_local i32 @unsigned_type_for(i32) #1

declare dso_local i32 @gcc_assert(i64) #1

declare dso_local i32 @number_of_iterations_ne(i32, %struct.TYPE_11__*, i32, %struct.tree_niter_desc*, i32) #1

declare dso_local i32 @number_of_iterations_lt(i32, %struct.TYPE_11__*, %struct.TYPE_11__*, %struct.tree_niter_desc*, i32) #1

declare dso_local i32 @number_of_iterations_le(i32, %struct.TYPE_11__*, %struct.TYPE_11__*, %struct.tree_niter_desc*, i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
