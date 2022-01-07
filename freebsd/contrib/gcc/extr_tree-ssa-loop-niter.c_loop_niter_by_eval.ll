; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-niter.c_loop_niter_by_eval.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-niter.c_loop_niter_by_eval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@COND_EXPR = common dso_local global i64 0, align 8
@chrec_dont_know = common dso_local global i64 0, align 8
@EDGE_TRUE_VALUE = common dso_local global i32 0, align 4
@PHI_NODE = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i64 0, align 8
@MAX_ITERATIONS_TO_TRACK = common dso_local global i32 0, align 4
@boolean_type_node = common dso_local global i32 0, align 4
@dump_file = common dso_local global i64 0, align 8
@dump_flags = common dso_local global i32 0, align 4
@TDF_DETAILS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"Proved that loop %d iterates %d times using brute force.\0A\00", align 1
@unsigned_type_node = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @loop_niter_by_eval(%struct.loop* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.loop*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca [2 x i64], align 16
  %10 = alloca [2 x i64], align 16
  %11 = alloca [2 x i64], align 16
  %12 = alloca [2 x i64], align 16
  %13 = alloca [2 x i64], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.loop* %0, %struct.loop** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @last_stmt(i32 %19)
  store i64 %20, i64* %6, align 8
  %21 = load i64, i64* %6, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %2
  %24 = load i64, i64* %6, align 8
  %25 = call i64 @TREE_CODE(i64 %24)
  %26 = load i64, i64* @COND_EXPR, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %23, %2
  %29 = load i64, i64* @chrec_dont_know, align 8
  store i64 %29, i64* %3, align 8
  br label %239

30:                                               ; preds = %23
  %31 = load i64, i64* %6, align 8
  %32 = call i64 @COND_EXPR_COND(i64 %31)
  store i64 %32, i64* %7, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @EDGE_TRUE_VALUE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %30
  %40 = load i64, i64* %7, align 8
  %41 = call i64 @invert_truthvalue(i64 %40)
  store i64 %41, i64* %7, align 8
  br label %42

42:                                               ; preds = %39, %30
  %43 = load i64, i64* %7, align 8
  %44 = call i64 @TREE_CODE(i64 %43)
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %16, align 4
  %46 = load i32, i32* %16, align 4
  switch i32 %46, label %62 [
    i32 133, label %47
    i32 128, label %47
    i32 131, label %47
    i32 132, label %47
    i32 129, label %47
    i32 130, label %47
  ]

47:                                               ; preds = %42, %42, %42, %42, %42, %42
  store i32 0, i32* %15, align 4
  br label %48

48:                                               ; preds = %58, %47
  %49 = load i32, i32* %15, align 4
  %50 = icmp ult i32 %49, 2
  br i1 %50, label %51, label %61

51:                                               ; preds = %48
  %52 = load i64, i64* %7, align 8
  %53 = load i32, i32* %15, align 4
  %54 = call i64 @TREE_OPERAND(i64 %52, i32 %53)
  %55 = load i32, i32* %15, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 %56
  store i64 %54, i64* %57, align 8
  br label %58

58:                                               ; preds = %51
  %59 = load i32, i32* %15, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %15, align 4
  br label %48

61:                                               ; preds = %48
  br label %64

62:                                               ; preds = %42
  %63 = load i64, i64* @chrec_dont_know, align 8
  store i64 %63, i64* %3, align 8
  br label %239

64:                                               ; preds = %61
  store i32 0, i32* %15, align 4
  br label %65

65:                                               ; preds = %86, %64
  %66 = load i32, i32* %15, align 4
  %67 = icmp ult i32 %66, 2
  br i1 %67, label %68, label %89

68:                                               ; preds = %65
  %69 = load %struct.loop*, %struct.loop** %4, align 8
  %70 = load i32, i32* %15, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = call i64 @get_base_for(%struct.loop* %69, i64 %73)
  %75 = load i32, i32* %15, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds [2 x i64], [2 x i64]* %13, i64 0, i64 %76
  store i64 %74, i64* %77, align 8
  %78 = load i32, i32* %15, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds [2 x i64], [2 x i64]* %13, i64 0, i64 %79
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %68
  %84 = load i64, i64* @chrec_dont_know, align 8
  store i64 %84, i64* %3, align 8
  br label %239

85:                                               ; preds = %68
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %15, align 4
  %88 = add i32 %87, 1
  store i32 %88, i32* %15, align 4
  br label %65

89:                                               ; preds = %65
  store i32 0, i32* %15, align 4
  br label %90

90:                                               ; preds = %139, %89
  %91 = load i32, i32* %15, align 4
  %92 = icmp ult i32 %91, 2
  br i1 %92, label %93, label %142

93:                                               ; preds = %90
  %94 = load i32, i32* %15, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds [2 x i64], [2 x i64]* %13, i64 0, i64 %95
  %97 = load i64, i64* %96, align 8
  %98 = call i64 @TREE_CODE(i64 %97)
  %99 = load i64, i64* @PHI_NODE, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %122

101:                                              ; preds = %93
  %102 = load i32, i32* %15, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds [2 x i64], [2 x i64]* %13, i64 0, i64 %103
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.loop*, %struct.loop** %4, align 8
  %107 = call i32 @loop_preheader_edge(%struct.loop* %106)
  %108 = call i64 @PHI_ARG_DEF_FROM_EDGE(i64 %105, i32 %107)
  %109 = load i32, i32* %15, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 %110
  store i64 %108, i64* %111, align 8
  %112 = load i32, i32* %15, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds [2 x i64], [2 x i64]* %13, i64 0, i64 %113
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.loop*, %struct.loop** %4, align 8
  %117 = call i32 @loop_latch_edge(%struct.loop* %116)
  %118 = call i64 @PHI_ARG_DEF_FROM_EDGE(i64 %115, i32 %117)
  %119 = load i32, i32* %15, align 4
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 %120
  store i64 %118, i64* %121, align 8
  br label %138

122:                                              ; preds = %93
  %123 = load i32, i32* %15, align 4
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds [2 x i64], [2 x i64]* %13, i64 0, i64 %124
  %126 = load i64, i64* %125, align 8
  %127 = load i32, i32* %15, align 4
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 %128
  store i64 %126, i64* %129, align 8
  %130 = load i64, i64* @NULL_TREE, align 8
  %131 = load i32, i32* %15, align 4
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 %132
  store i64 %130, i64* %133, align 8
  %134 = load i64, i64* @NULL_TREE, align 8
  %135 = load i32, i32* %15, align 4
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 %136
  store i64 %134, i64* %137, align 8
  br label %138

138:                                              ; preds = %122, %101
  br label %139

139:                                              ; preds = %138
  %140 = load i32, i32* %15, align 4
  %141 = add i32 %140, 1
  store i32 %141, i32* %15, align 4
  br label %90

142:                                              ; preds = %90
  %143 = call i32 (...) @fold_defer_overflow_warnings()
  store i32 0, i32* %14, align 4
  br label %144

144:                                              ; preds = %233, %142
  %145 = load i32, i32* %14, align 4
  %146 = load i32, i32* @MAX_ITERATIONS_TO_TRACK, align 4
  %147 = icmp ult i32 %145, %146
  br i1 %147, label %148, label %236

148:                                              ; preds = %144
  store i32 0, i32* %15, align 4
  br label %149

149:                                              ; preds = %165, %148
  %150 = load i32, i32* %15, align 4
  %151 = icmp ult i32 %150, 2
  br i1 %151, label %152, label %168

152:                                              ; preds = %149
  %153 = load i32, i32* %15, align 4
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 %154
  %156 = load i64, i64* %155, align 8
  %157 = load i32, i32* %15, align 4
  %158 = zext i32 %157 to i64
  %159 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 %158
  %160 = load i64, i64* %159, align 8
  %161 = call i64 @get_val_for(i64 %156, i64 %160)
  %162 = load i32, i32* %15, align 4
  %163 = zext i32 %162 to i64
  %164 = getelementptr inbounds [2 x i64], [2 x i64]* %12, i64 0, i64 %163
  store i64 %161, i64* %164, align 8
  br label %165

165:                                              ; preds = %152
  %166 = load i32, i32* %15, align 4
  %167 = add i32 %166, 1
  store i32 %167, i32* %15, align 4
  br label %149

168:                                              ; preds = %149
  %169 = load i32, i32* %16, align 4
  %170 = load i32, i32* @boolean_type_node, align 4
  %171 = getelementptr inbounds [2 x i64], [2 x i64]* %12, i64 0, i64 0
  %172 = load i64, i64* %171, align 16
  %173 = getelementptr inbounds [2 x i64], [2 x i64]* %12, i64 0, i64 1
  %174 = load i64, i64* %173, align 8
  %175 = call i64 @fold_binary(i32 %169, i32 %170, i64 %172, i64 %174)
  store i64 %175, i64* %8, align 8
  %176 = load i64, i64* %8, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %202

178:                                              ; preds = %168
  %179 = load i64, i64* %8, align 8
  %180 = call i64 @zero_p(i64 %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %202

182:                                              ; preds = %178
  %183 = call i32 (...) @fold_undefer_and_ignore_overflow_warnings()
  %184 = load i64, i64* @dump_file, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %198

186:                                              ; preds = %182
  %187 = load i32, i32* @dump_flags, align 4
  %188 = load i32, i32* @TDF_DETAILS, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %198

191:                                              ; preds = %186
  %192 = load i64, i64* @dump_file, align 8
  %193 = load %struct.loop*, %struct.loop** %4, align 8
  %194 = getelementptr inbounds %struct.loop, %struct.loop* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* %14, align 4
  %197 = call i32 @fprintf(i64 %192, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %195, i32 %196)
  br label %198

198:                                              ; preds = %191, %186, %182
  %199 = load i32, i32* @unsigned_type_node, align 4
  %200 = load i32, i32* %14, align 4
  %201 = call i64 @build_int_cst(i32 %199, i32 %200)
  store i64 %201, i64* %3, align 8
  br label %239

202:                                              ; preds = %178, %168
  store i32 0, i32* %15, align 4
  br label %203

203:                                              ; preds = %229, %202
  %204 = load i32, i32* %15, align 4
  %205 = icmp ult i32 %204, 2
  br i1 %205, label %206, label %232

206:                                              ; preds = %203
  %207 = load i32, i32* %15, align 4
  %208 = zext i32 %207 to i64
  %209 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 %208
  %210 = load i64, i64* %209, align 8
  %211 = load i32, i32* %15, align 4
  %212 = zext i32 %211 to i64
  %213 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 %212
  %214 = load i64, i64* %213, align 8
  %215 = call i64 @get_val_for(i64 %210, i64 %214)
  %216 = load i32, i32* %15, align 4
  %217 = zext i32 %216 to i64
  %218 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 %217
  store i64 %215, i64* %218, align 8
  %219 = load i32, i32* %15, align 4
  %220 = zext i32 %219 to i64
  %221 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 %220
  %222 = load i64, i64* %221, align 8
  %223 = call i32 @is_gimple_min_invariant(i64 %222)
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %228, label %225

225:                                              ; preds = %206
  %226 = call i32 (...) @fold_undefer_and_ignore_overflow_warnings()
  %227 = load i64, i64* @chrec_dont_know, align 8
  store i64 %227, i64* %3, align 8
  br label %239

228:                                              ; preds = %206
  br label %229

229:                                              ; preds = %228
  %230 = load i32, i32* %15, align 4
  %231 = add i32 %230, 1
  store i32 %231, i32* %15, align 4
  br label %203

232:                                              ; preds = %203
  br label %233

233:                                              ; preds = %232
  %234 = load i32, i32* %14, align 4
  %235 = add i32 %234, 1
  store i32 %235, i32* %14, align 4
  br label %144

236:                                              ; preds = %144
  %237 = call i32 (...) @fold_undefer_and_ignore_overflow_warnings()
  %238 = load i64, i64* @chrec_dont_know, align 8
  store i64 %238, i64* %3, align 8
  br label %239

239:                                              ; preds = %236, %225, %198, %83, %62, %28
  %240 = load i64, i64* %3, align 8
  ret i64 %240
}

declare dso_local i64 @last_stmt(i32) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @COND_EXPR_COND(i64) #1

declare dso_local i64 @invert_truthvalue(i64) #1

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local i64 @get_base_for(%struct.loop*, i64) #1

declare dso_local i64 @PHI_ARG_DEF_FROM_EDGE(i64, i32) #1

declare dso_local i32 @loop_preheader_edge(%struct.loop*) #1

declare dso_local i32 @loop_latch_edge(%struct.loop*) #1

declare dso_local i32 @fold_defer_overflow_warnings(...) #1

declare dso_local i64 @get_val_for(i64, i64) #1

declare dso_local i64 @fold_binary(i32, i32, i64, i64) #1

declare dso_local i64 @zero_p(i64) #1

declare dso_local i32 @fold_undefer_and_ignore_overflow_warnings(...) #1

declare dso_local i32 @fprintf(i64, i8*, i32, i32) #1

declare dso_local i64 @build_int_cst(i32, i32) #1

declare dso_local i32 @is_gimple_min_invariant(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
