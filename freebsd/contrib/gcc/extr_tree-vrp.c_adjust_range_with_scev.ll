; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-vrp.c_adjust_range_with_scev.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-vrp.c_adjust_range_with_scev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i64, i64, i64, i32 }
%struct.loop = type { i32 }

@VR_ANTI_RANGE = common dso_local global i64 0, align 8
@POLYNOMIAL_CHREC = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i64 0, align 8
@EV_DIR_UNKNOWN = common dso_local global i32 0, align 4
@current_loops = common dso_local global %struct.TYPE_6__* null, align 8
@VR_VARYING = common dso_local global i64 0, align 8
@VR_UNDEFINED = common dso_local global i64 0, align 8
@EV_DIR_DECREASES = common dso_local global i32 0, align 4
@VR_RANGE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, %struct.loop*, i64, i64)* @adjust_range_with_scev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adjust_range_with_scev(%struct.TYPE_5__* %0, %struct.loop* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.loop*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store %struct.loop* %1, %struct.loop** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @VR_ANTI_RANGE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  br label %222

24:                                               ; preds = %4
  %25 = load %struct.loop*, %struct.loop** %6, align 8
  %26 = load %struct.loop*, %struct.loop** %6, align 8
  %27 = load i64, i64* %8, align 8
  %28 = call i32 @analyze_scalar_evolution(%struct.loop* %26, i64 %27)
  %29 = call i64 @instantiate_parameters(%struct.loop* %25, i32 %28)
  store i64 %29, i64* %11, align 8
  %30 = load i64, i64* %11, align 8
  %31 = call i64 @TREE_CODE(i64 %30)
  %32 = load i64, i64* @POLYNOMIAL_CHREC, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %24
  br label %222

35:                                               ; preds = %24
  %36 = load i64, i64* %11, align 8
  %37 = load %struct.loop*, %struct.loop** %6, align 8
  %38 = getelementptr inbounds %struct.loop, %struct.loop* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @initial_condition_in_loop_num(i64 %36, i32 %39)
  store i64 %40, i64* %9, align 8
  %41 = load i64, i64* %11, align 8
  %42 = load %struct.loop*, %struct.loop** %6, align 8
  %43 = getelementptr inbounds %struct.loop, %struct.loop* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @evolution_part_in_loop_num(i64 %41, i32 %44)
  store i64 %45, i64* %10, align 8
  %46 = load i64, i64* %10, align 8
  %47 = load i64, i64* @NULL_TREE, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %57, label %49

49:                                               ; preds = %35
  %50 = load i64, i64* %10, align 8
  %51 = call i64 @is_gimple_min_invariant(i64 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load i64, i64* %9, align 8
  %55 = call i32 @valid_value_p(i64 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %53, %49, %35
  br label %222

58:                                               ; preds = %53
  %59 = load i64, i64* %11, align 8
  %60 = call i32 @scev_direction(i64 %59)
  store i32 %60, i32* %17, align 4
  %61 = load i32, i32* %17, align 4
  %62 = load i32, i32* @EV_DIR_UNKNOWN, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %77, label %64

64:                                               ; preds = %58
  %65 = load i64, i64* %9, align 8
  %66 = load i64, i64* %10, align 8
  %67 = load i64, i64* %7, align 8
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current_loops, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load i64, i64* %11, align 8
  %72 = call i64 @CHREC_VARIABLE(i64 %71)
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @scev_probably_wraps_p(i64 %65, i64 %66, i64 %67, i32 %74, i32 1)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %64, %58
  br label %222

78:                                               ; preds = %64
  %79 = load i64, i64* %8, align 8
  %80 = call i64 @TREE_TYPE(i64 %79)
  store i64 %80, i64* %16, align 8
  %81 = load i64, i64* %16, align 8
  %82 = call i64 @POINTER_TYPE_P(i64 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %78
  %85 = load i64, i64* %9, align 8
  %86 = call i64 @is_gimple_min_invariant(i64 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %84
  br label %222

89:                                               ; preds = %84, %78
  %90 = load i64, i64* %16, align 8
  %91 = call i64 @POINTER_TYPE_P(i64 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %89
  %94 = load i64, i64* %16, align 8
  %95 = call i64 @TYPE_MIN_VALUE(i64 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %93, %89
  %98 = load i64, i64* %16, align 8
  %99 = load i64, i64* %16, align 8
  %100 = call i64 @lower_bound_in_type(i64 %98, i64 %99)
  store i64 %100, i64* %12, align 8
  br label %104

101:                                              ; preds = %93
  %102 = load i64, i64* %16, align 8
  %103 = call i64 @TYPE_MIN_VALUE(i64 %102)
  store i64 %103, i64* %12, align 8
  br label %104

104:                                              ; preds = %101, %97
  %105 = load i64, i64* %16, align 8
  %106 = call i64 @POINTER_TYPE_P(i64 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %112, label %108

108:                                              ; preds = %104
  %109 = load i64, i64* %16, align 8
  %110 = call i64 @TYPE_MAX_VALUE(i64 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %116, label %112

112:                                              ; preds = %108, %104
  %113 = load i64, i64* %16, align 8
  %114 = load i64, i64* %16, align 8
  %115 = call i64 @upper_bound_in_type(i64 %113, i64 %114)
  store i64 %115, i64* %13, align 8
  br label %119

116:                                              ; preds = %108
  %117 = load i64, i64* %16, align 8
  %118 = call i64 @TYPE_MAX_VALUE(i64 %117)
  store i64 %118, i64* %13, align 8
  br label %119

119:                                              ; preds = %116, %112
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @VR_VARYING, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %131, label %125

125:                                              ; preds = %119
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @VR_UNDEFINED, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %156

131:                                              ; preds = %125, %119
  %132 = load i64, i64* %12, align 8
  store i64 %132, i64* %14, align 8
  %133 = load i64, i64* %13, align 8
  store i64 %133, i64* %15, align 8
  %134 = load i32, i32* %17, align 4
  %135 = load i32, i32* @EV_DIR_DECREASES, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %139

137:                                              ; preds = %131
  %138 = load i64, i64* %9, align 8
  store i64 %138, i64* %15, align 8
  br label %141

139:                                              ; preds = %131
  %140 = load i64, i64* %9, align 8
  store i64 %140, i64* %14, align 8
  br label %141

141:                                              ; preds = %139, %137
  %142 = load i64, i64* %14, align 8
  %143 = load i64, i64* %15, align 8
  %144 = call i32 @compare_values(i64 %142, i64 %143)
  %145 = icmp eq i32 %144, 1
  br i1 %145, label %146, label %147

146:                                              ; preds = %141
  br label %222

147:                                              ; preds = %141
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %149 = load i64, i64* @VR_RANGE, align 8
  %150 = load i64, i64* %14, align 8
  %151 = load i64, i64* %15, align 8
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @set_value_range(%struct.TYPE_5__* %148, i64 %149, i64 %150, i64 %151, i32 %154)
  br label %222

156:                                              ; preds = %125
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @VR_RANGE, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %221

162:                                              ; preds = %156
  %163 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  store i64 %165, i64* %14, align 8
  %166 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 2
  %168 = load i64, i64* %167, align 8
  store i64 %168, i64* %15, align 8
  %169 = load i32, i32* %17, align 4
  %170 = load i32, i32* @EV_DIR_DECREASES, align 4
  %171 = icmp eq i32 %169, %170
  br i1 %171, label %172, label %192

172:                                              ; preds = %162
  %173 = load i64, i64* %9, align 8
  %174 = load i64, i64* %15, align 8
  %175 = call i32 @compare_values(i64 %173, i64 %174)
  %176 = icmp eq i32 %175, -1
  br i1 %176, label %177, label %185

177:                                              ; preds = %172
  %178 = load i64, i64* %9, align 8
  store i64 %178, i64* %15, align 8
  %179 = load i64, i64* %14, align 8
  %180 = load i64, i64* %15, align 8
  %181 = call i32 @compare_values(i64 %179, i64 %180)
  %182 = icmp eq i32 %181, 1
  br i1 %182, label %183, label %184

183:                                              ; preds = %177
  br label %222

184:                                              ; preds = %177
  br label %185

185:                                              ; preds = %184, %172
  %186 = load i64, i64* %14, align 8
  %187 = call i64 @is_negative_overflow_infinity(i64 %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %191

189:                                              ; preds = %185
  %190 = load i64, i64* %12, align 8
  store i64 %190, i64* %14, align 8
  br label %191

191:                                              ; preds = %189, %185
  br label %212

192:                                              ; preds = %162
  %193 = load i64, i64* %9, align 8
  %194 = load i64, i64* %14, align 8
  %195 = call i32 @compare_values(i64 %193, i64 %194)
  %196 = icmp eq i32 %195, 1
  br i1 %196, label %197, label %205

197:                                              ; preds = %192
  %198 = load i64, i64* %9, align 8
  store i64 %198, i64* %14, align 8
  %199 = load i64, i64* %14, align 8
  %200 = load i64, i64* %15, align 8
  %201 = call i32 @compare_values(i64 %199, i64 %200)
  %202 = icmp eq i32 %201, 1
  br i1 %202, label %203, label %204

203:                                              ; preds = %197
  br label %222

204:                                              ; preds = %197
  br label %205

205:                                              ; preds = %204, %192
  %206 = load i64, i64* %15, align 8
  %207 = call i64 @is_positive_overflow_infinity(i64 %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %211

209:                                              ; preds = %205
  %210 = load i64, i64* %13, align 8
  store i64 %210, i64* %15, align 8
  br label %211

211:                                              ; preds = %209, %205
  br label %212

212:                                              ; preds = %211, %191
  %213 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %214 = load i64, i64* @VR_RANGE, align 8
  %215 = load i64, i64* %14, align 8
  %216 = load i64, i64* %15, align 8
  %217 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %217, i32 0, i32 3
  %219 = load i32, i32* %218, align 8
  %220 = call i32 @set_value_range(%struct.TYPE_5__* %213, i64 %214, i64 %215, i64 %216, i32 %219)
  br label %221

221:                                              ; preds = %212, %156
  br label %222

222:                                              ; preds = %23, %34, %57, %77, %88, %146, %183, %203, %221, %147
  ret void
}

declare dso_local i64 @instantiate_parameters(%struct.loop*, i32) #1

declare dso_local i32 @analyze_scalar_evolution(%struct.loop*, i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @initial_condition_in_loop_num(i64, i32) #1

declare dso_local i64 @evolution_part_in_loop_num(i64, i32) #1

declare dso_local i64 @is_gimple_min_invariant(i64) #1

declare dso_local i32 @valid_value_p(i64) #1

declare dso_local i32 @scev_direction(i64) #1

declare dso_local i64 @scev_probably_wraps_p(i64, i64, i64, i32, i32) #1

declare dso_local i64 @CHREC_VARIABLE(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @POINTER_TYPE_P(i64) #1

declare dso_local i64 @TYPE_MIN_VALUE(i64) #1

declare dso_local i64 @lower_bound_in_type(i64, i64) #1

declare dso_local i64 @TYPE_MAX_VALUE(i64) #1

declare dso_local i64 @upper_bound_in_type(i64, i64) #1

declare dso_local i32 @compare_values(i64, i64) #1

declare dso_local i32 @set_value_range(%struct.TYPE_5__*, i64, i64, i64, i32) #1

declare dso_local i64 @is_negative_overflow_infinity(i64) #1

declare dso_local i64 @is_positive_overflow_infinity(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
