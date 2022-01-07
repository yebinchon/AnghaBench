; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-scalar-evolution.c_follow_ssa_edge_in_rhs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-scalar-evolution.c_follow_ssa_edge_in_rhs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop = type { i32 }

@t_false = common dso_local global i32 0, align 4
@t_true = common dso_local global i32 0, align 4
@t_dont_know = common dso_local global i32 0, align 4
@chrec_dont_know = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.loop*, i32, i32, i32, i32*, i32)* @follow_ssa_edge_in_rhs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @follow_ssa_edge_in_rhs(%struct.loop* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca %struct.loop*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.loop* %0, %struct.loop** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %19 = load i32, i32* @t_false, align 4
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @TREE_TYPE(i32 %20)
  store i32 %21, i32* %16, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @TREE_CODE(i32 %22)
  switch i32 %23, label %277 [
    i32 130, label %24
    i32 132, label %40
    i32 128, label %42
    i32 129, label %50
    i32 131, label %212
    i32 133, label %260
  ]

24:                                               ; preds = %6
  %25 = load %struct.loop*, %struct.loop** %7, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @TREE_OPERAND(i32 %27, i32 0)
  %29 = load i32, i32* %10, align 4
  %30 = load i32*, i32** %11, align 8
  %31 = load i32, i32* %12, align 4
  %32 = call i32 @follow_ssa_edge_in_rhs(%struct.loop* %25, i32 %26, i32 %28, i32 %29, i32* %30, i32 %31)
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @TREE_TYPE(i32 %33)
  %35 = load i32*, i32** %11, align 8
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @chrec_convert(i32 %34, i32 %36, i32 %37)
  %39 = load i32*, i32** %11, align 8
  store i32 %38, i32* %39, align 4
  br label %279

40:                                               ; preds = %6
  %41 = load i32, i32* @t_false, align 4
  store i32 %41, i32* %13, align 4
  br label %279

42:                                               ; preds = %6
  %43 = load %struct.loop*, %struct.loop** %7, align 8
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @SSA_NAME_DEF_STMT(i32 %44)
  %46 = load i32, i32* %10, align 4
  %47 = load i32*, i32** %11, align 8
  %48 = load i32, i32* %12, align 4
  %49 = call i32 @follow_ssa_edge(%struct.loop* %43, i32 %45, i32 %46, i32* %47, i32 %48)
  store i32 %49, i32* %13, align 4
  br label %279

50:                                               ; preds = %6
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @TREE_OPERAND(i32 %51, i32 0)
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @TREE_OPERAND(i32 %53, i32 1)
  store i32 %54, i32* %15, align 4
  %55 = load i32, i32* %14, align 4
  %56 = call i32 @STRIP_TYPE_NOPS(i32 %55)
  %57 = load i32, i32* %15, align 4
  %58 = call i32 @STRIP_TYPE_NOPS(i32 %57)
  %59 = load i32, i32* %14, align 4
  %60 = call i32 @TREE_CODE(i32 %59)
  %61 = icmp eq i32 %60, 128
  br i1 %61, label %62, label %171

62:                                               ; preds = %50
  %63 = load i32, i32* %15, align 4
  %64 = call i32 @TREE_CODE(i32 %63)
  %65 = icmp eq i32 %64, 128
  br i1 %65, label %66, label %137

66:                                               ; preds = %62
  %67 = load i32*, i32** %11, align 8
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %17, align 4
  %69 = load %struct.loop*, %struct.loop** %7, align 8
  %70 = load i32, i32* %14, align 4
  %71 = call i32 @SSA_NAME_DEF_STMT(i32 %70)
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* %12, align 4
  %74 = call i32 @follow_ssa_edge(%struct.loop* %69, i32 %71, i32 %72, i32* %17, i32 %73)
  store i32 %74, i32* %13, align 4
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* @t_true, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %90

78:                                               ; preds = %66
  %79 = load %struct.loop*, %struct.loop** %7, align 8
  %80 = getelementptr inbounds %struct.loop, %struct.loop* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %16, align 4
  %83 = load i32, i32* %17, align 4
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @chrec_convert(i32 %82, i32 %83, i32 %84)
  %86 = load i32, i32* %15, align 4
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @add_to_evolution(i32 %81, i32 %85, i32 129, i32 %86, i32 %87)
  %89 = load i32*, i32** %11, align 8
  store i32 %88, i32* %89, align 4
  br label %136

90:                                               ; preds = %66
  %91 = load i32, i32* %13, align 4
  %92 = load i32, i32* @t_false, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %127

94:                                               ; preds = %90
  %95 = load %struct.loop*, %struct.loop** %7, align 8
  %96 = load i32, i32* %15, align 4
  %97 = call i32 @SSA_NAME_DEF_STMT(i32 %96)
  %98 = load i32, i32* %10, align 4
  %99 = load i32*, i32** %11, align 8
  %100 = load i32, i32* %12, align 4
  %101 = call i32 @follow_ssa_edge(%struct.loop* %95, i32 %97, i32 %98, i32* %99, i32 %100)
  store i32 %101, i32* %13, align 4
  %102 = load i32, i32* %13, align 4
  %103 = load i32, i32* @t_true, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %118

105:                                              ; preds = %94
  %106 = load %struct.loop*, %struct.loop** %7, align 8
  %107 = getelementptr inbounds %struct.loop, %struct.loop* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %16, align 4
  %110 = load i32*, i32** %11, align 8
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %8, align 4
  %113 = call i32 @chrec_convert(i32 %109, i32 %111, i32 %112)
  %114 = load i32, i32* %14, align 4
  %115 = load i32, i32* %8, align 4
  %116 = call i32 @add_to_evolution(i32 %108, i32 %113, i32 129, i32 %114, i32 %115)
  %117 = load i32*, i32** %11, align 8
  store i32 %116, i32* %117, align 4
  br label %126

118:                                              ; preds = %94
  %119 = load i32, i32* %13, align 4
  %120 = load i32, i32* @t_dont_know, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %118
  %123 = load i32, i32* @chrec_dont_know, align 4
  %124 = load i32*, i32** %11, align 8
  store i32 %123, i32* %124, align 4
  br label %125

125:                                              ; preds = %122, %118
  br label %126

126:                                              ; preds = %125, %105
  br label %135

127:                                              ; preds = %90
  %128 = load i32, i32* %13, align 4
  %129 = load i32, i32* @t_dont_know, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %134

131:                                              ; preds = %127
  %132 = load i32, i32* @chrec_dont_know, align 4
  %133 = load i32*, i32** %11, align 8
  store i32 %132, i32* %133, align 4
  br label %134

134:                                              ; preds = %131, %127
  br label %135

135:                                              ; preds = %134, %126
  br label %136

136:                                              ; preds = %135, %78
  br label %170

137:                                              ; preds = %62
  %138 = load %struct.loop*, %struct.loop** %7, align 8
  %139 = load i32, i32* %14, align 4
  %140 = call i32 @SSA_NAME_DEF_STMT(i32 %139)
  %141 = load i32, i32* %10, align 4
  %142 = load i32*, i32** %11, align 8
  %143 = load i32, i32* %12, align 4
  %144 = call i32 @follow_ssa_edge(%struct.loop* %138, i32 %140, i32 %141, i32* %142, i32 %143)
  store i32 %144, i32* %13, align 4
  %145 = load i32, i32* %13, align 4
  %146 = load i32, i32* @t_true, align 4
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %148, label %161

148:                                              ; preds = %137
  %149 = load %struct.loop*, %struct.loop** %7, align 8
  %150 = getelementptr inbounds %struct.loop, %struct.loop* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* %16, align 4
  %153 = load i32*, i32** %11, align 8
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* %8, align 4
  %156 = call i32 @chrec_convert(i32 %152, i32 %154, i32 %155)
  %157 = load i32, i32* %15, align 4
  %158 = load i32, i32* %8, align 4
  %159 = call i32 @add_to_evolution(i32 %151, i32 %156, i32 129, i32 %157, i32 %158)
  %160 = load i32*, i32** %11, align 8
  store i32 %159, i32* %160, align 4
  br label %169

161:                                              ; preds = %137
  %162 = load i32, i32* %13, align 4
  %163 = load i32, i32* @t_dont_know, align 4
  %164 = icmp eq i32 %162, %163
  br i1 %164, label %165, label %168

165:                                              ; preds = %161
  %166 = load i32, i32* @chrec_dont_know, align 4
  %167 = load i32*, i32** %11, align 8
  store i32 %166, i32* %167, align 4
  br label %168

168:                                              ; preds = %165, %161
  br label %169

169:                                              ; preds = %168, %148
  br label %170

170:                                              ; preds = %169, %136
  br label %211

171:                                              ; preds = %50
  %172 = load i32, i32* %15, align 4
  %173 = call i32 @TREE_CODE(i32 %172)
  %174 = icmp eq i32 %173, 128
  br i1 %174, label %175, label %208

175:                                              ; preds = %171
  %176 = load %struct.loop*, %struct.loop** %7, align 8
  %177 = load i32, i32* %15, align 4
  %178 = call i32 @SSA_NAME_DEF_STMT(i32 %177)
  %179 = load i32, i32* %10, align 4
  %180 = load i32*, i32** %11, align 8
  %181 = load i32, i32* %12, align 4
  %182 = call i32 @follow_ssa_edge(%struct.loop* %176, i32 %178, i32 %179, i32* %180, i32 %181)
  store i32 %182, i32* %13, align 4
  %183 = load i32, i32* %13, align 4
  %184 = load i32, i32* @t_true, align 4
  %185 = icmp eq i32 %183, %184
  br i1 %185, label %186, label %199

186:                                              ; preds = %175
  %187 = load %struct.loop*, %struct.loop** %7, align 8
  %188 = getelementptr inbounds %struct.loop, %struct.loop* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* %16, align 4
  %191 = load i32*, i32** %11, align 8
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* %8, align 4
  %194 = call i32 @chrec_convert(i32 %190, i32 %192, i32 %193)
  %195 = load i32, i32* %14, align 4
  %196 = load i32, i32* %8, align 4
  %197 = call i32 @add_to_evolution(i32 %189, i32 %194, i32 129, i32 %195, i32 %196)
  %198 = load i32*, i32** %11, align 8
  store i32 %197, i32* %198, align 4
  br label %207

199:                                              ; preds = %175
  %200 = load i32, i32* %13, align 4
  %201 = load i32, i32* @t_dont_know, align 4
  %202 = icmp eq i32 %200, %201
  br i1 %202, label %203, label %206

203:                                              ; preds = %199
  %204 = load i32, i32* @chrec_dont_know, align 4
  %205 = load i32*, i32** %11, align 8
  store i32 %204, i32* %205, align 4
  br label %206

206:                                              ; preds = %203, %199
  br label %207

207:                                              ; preds = %206, %186
  br label %210

208:                                              ; preds = %171
  %209 = load i32, i32* @t_false, align 4
  store i32 %209, i32* %13, align 4
  br label %210

210:                                              ; preds = %208, %207
  br label %211

211:                                              ; preds = %210, %170
  br label %279

212:                                              ; preds = %6
  %213 = load i32, i32* %9, align 4
  %214 = call i32 @TREE_OPERAND(i32 %213, i32 0)
  store i32 %214, i32* %14, align 4
  %215 = load i32, i32* %9, align 4
  %216 = call i32 @TREE_OPERAND(i32 %215, i32 1)
  store i32 %216, i32* %15, align 4
  %217 = load i32, i32* %14, align 4
  %218 = call i32 @STRIP_TYPE_NOPS(i32 %217)
  %219 = load i32, i32* %15, align 4
  %220 = call i32 @STRIP_TYPE_NOPS(i32 %219)
  %221 = load i32, i32* %14, align 4
  %222 = call i32 @TREE_CODE(i32 %221)
  %223 = icmp eq i32 %222, 128
  br i1 %223, label %224, label %257

224:                                              ; preds = %212
  %225 = load %struct.loop*, %struct.loop** %7, align 8
  %226 = load i32, i32* %14, align 4
  %227 = call i32 @SSA_NAME_DEF_STMT(i32 %226)
  %228 = load i32, i32* %10, align 4
  %229 = load i32*, i32** %11, align 8
  %230 = load i32, i32* %12, align 4
  %231 = call i32 @follow_ssa_edge(%struct.loop* %225, i32 %227, i32 %228, i32* %229, i32 %230)
  store i32 %231, i32* %13, align 4
  %232 = load i32, i32* %13, align 4
  %233 = load i32, i32* @t_true, align 4
  %234 = icmp eq i32 %232, %233
  br i1 %234, label %235, label %248

235:                                              ; preds = %224
  %236 = load %struct.loop*, %struct.loop** %7, align 8
  %237 = getelementptr inbounds %struct.loop, %struct.loop* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = load i32, i32* %16, align 4
  %240 = load i32*, i32** %11, align 8
  %241 = load i32, i32* %240, align 4
  %242 = load i32, i32* %8, align 4
  %243 = call i32 @chrec_convert(i32 %239, i32 %241, i32 %242)
  %244 = load i32, i32* %15, align 4
  %245 = load i32, i32* %8, align 4
  %246 = call i32 @add_to_evolution(i32 %238, i32 %243, i32 131, i32 %244, i32 %245)
  %247 = load i32*, i32** %11, align 8
  store i32 %246, i32* %247, align 4
  br label %256

248:                                              ; preds = %224
  %249 = load i32, i32* %13, align 4
  %250 = load i32, i32* @t_dont_know, align 4
  %251 = icmp eq i32 %249, %250
  br i1 %251, label %252, label %255

252:                                              ; preds = %248
  %253 = load i32, i32* @chrec_dont_know, align 4
  %254 = load i32*, i32** %11, align 8
  store i32 %253, i32* %254, align 4
  br label %255

255:                                              ; preds = %252, %248
  br label %256

256:                                              ; preds = %255, %235
  br label %259

257:                                              ; preds = %212
  %258 = load i32, i32* @t_false, align 4
  store i32 %258, i32* %13, align 4
  br label %259

259:                                              ; preds = %257, %256
  br label %279

260:                                              ; preds = %6
  %261 = load i32, i32* %9, align 4
  %262 = call i32 @ASSERT_EXPR_VAR(i32 %261)
  store i32 %262, i32* %18, align 4
  %263 = load i32, i32* %18, align 4
  %264 = call i32 @TREE_CODE(i32 %263)
  %265 = icmp eq i32 %264, 128
  br i1 %265, label %266, label %274

266:                                              ; preds = %260
  %267 = load %struct.loop*, %struct.loop** %7, align 8
  %268 = load i32, i32* %18, align 4
  %269 = call i32 @SSA_NAME_DEF_STMT(i32 %268)
  %270 = load i32, i32* %10, align 4
  %271 = load i32*, i32** %11, align 8
  %272 = load i32, i32* %12, align 4
  %273 = call i32 @follow_ssa_edge(%struct.loop* %267, i32 %269, i32 %270, i32* %271, i32 %272)
  store i32 %273, i32* %13, align 4
  br label %276

274:                                              ; preds = %260
  %275 = load i32, i32* @t_false, align 4
  store i32 %275, i32* %13, align 4
  br label %276

276:                                              ; preds = %274, %266
  br label %279

277:                                              ; preds = %6
  %278 = load i32, i32* @t_false, align 4
  store i32 %278, i32* %13, align 4
  br label %279

279:                                              ; preds = %277, %276, %259, %211, %42, %40, %24
  %280 = load i32, i32* %13, align 4
  ret i32 %280
}

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i32 @chrec_convert(i32, i32, i32) #1

declare dso_local i32 @follow_ssa_edge(%struct.loop*, i32, i32, i32*, i32) #1

declare dso_local i32 @SSA_NAME_DEF_STMT(i32) #1

declare dso_local i32 @STRIP_TYPE_NOPS(i32) #1

declare dso_local i32 @add_to_evolution(i32, i32, i32, i32, i32) #1

declare dso_local i32 @ASSERT_EXPR_VAR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
