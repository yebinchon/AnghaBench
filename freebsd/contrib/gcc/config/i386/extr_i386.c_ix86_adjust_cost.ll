; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_adjust_cost.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_adjust_cost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ix86_tune = common dso_local global i32 0, align 4
@TYPE_FMOV = common dso_local global i32 0, align 4
@MEMORY_STORE = common dso_local global i32 0, align 4
@NULL_RTX = common dso_local global i32 0, align 4
@MEM = common dso_local global i32 0, align 4
@MEMORY_LOAD = common dso_local global i32 0, align 4
@MEMORY_BOTH = common dso_local global i32 0, align 4
@TYPE_IMOV = common dso_local global i32 0, align 4
@TYPE_PUSH = common dso_local global i32 0, align 4
@TYPE_POP = common dso_local global i32 0, align 4
@UNIT_INTEGER = common dso_local global i32 0, align 4
@UNIT_UNKNOWN = common dso_local global i32 0, align 4
@TARGET_ATHLON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @ix86_adjust_cost to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ix86_adjust_cost(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i64 @REG_NOTE_KIND(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %250

22:                                               ; preds = %4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @recog_memoized(i32 %23)
  store i32 %24, i32* %15, align 4
  %25 = load i32, i32* %15, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @recog_memoized(i32 %28)
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27, %22
  %32 = load i32, i32* %9, align 4
  store i32 %32, i32* %5, align 4
  br label %250

33:                                               ; preds = %27
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @get_attr_type(i32 %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @get_attr_type(i32 %36)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* @ix86_tune, align 4
  switch i32 %38, label %247 [
    i32 129, label %39
    i32 128, label %74
    i32 131, label %145
    i32 134, label %204
    i32 130, label %204
    i32 135, label %204
    i32 133, label %204
    i32 132, label %204
  ]

39:                                               ; preds = %33
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @ix86_agi_dependent(i32 %40, i32 %41, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load i32, i32* %9, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %9, align 4
  br label %48

48:                                               ; preds = %45, %39
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @ix86_flags_dependent(i32 %49, i32 %50, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  store i32 0, i32* %9, align 4
  br label %55

55:                                               ; preds = %54, %48
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* @TYPE_FMOV, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %73

59:                                               ; preds = %55
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @get_attr_memory(i32 %60)
  %62 = load i32, i32* @MEMORY_STORE, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %73

64:                                               ; preds = %59
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @ix86_agi_dependent(i32 %65, i32 %66, i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %64
  %71 = load i32, i32* %9, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %9, align 4
  br label %73

73:                                               ; preds = %70, %64, %59, %55
  br label %248

74:                                               ; preds = %33
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @get_attr_memory(i32 %75)
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @get_attr_fp_int_src(i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %74
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, 5
  store i32 %82, i32* %9, align 4
  br label %83

83:                                               ; preds = %80, %74
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* @TYPE_FMOV, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %113

87:                                               ; preds = %83
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @single_set(i32 %88)
  store i32 %89, i32* %13, align 4
  %90 = load i32, i32* @NULL_RTX, align 4
  %91 = icmp ne i32 %89, %90
  br i1 %91, label %92, label %113

92:                                               ; preds = %87
  %93 = load i32, i32* %6, align 4
  %94 = call i32 @single_set(i32 %93)
  store i32 %94, i32* %14, align 4
  %95 = load i32, i32* @NULL_RTX, align 4
  %96 = icmp ne i32 %94, %95
  br i1 %96, label %97, label %113

97:                                               ; preds = %92
  %98 = load i32, i32* %13, align 4
  %99 = call i32 @SET_DEST(i32 %98)
  %100 = load i32, i32* %14, align 4
  %101 = call i32 @SET_SRC(i32 %100)
  %102 = call i32 @rtx_equal_p(i32 %99, i32 %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %113

104:                                              ; preds = %97
  %105 = load i32, i32* %14, align 4
  %106 = call i32 @SET_DEST(i32 %105)
  %107 = call i32 @GET_CODE(i32 %106)
  %108 = load i32, i32* @MEM, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %104
  %111 = load i32, i32* %9, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %9, align 4
  br label %113

113:                                              ; preds = %110, %104, %97, %92, %87, %83
  %114 = load i32, i32* %12, align 4
  %115 = load i32, i32* @MEMORY_LOAD, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %121, label %117

117:                                              ; preds = %113
  %118 = load i32, i32* %12, align 4
  %119 = load i32, i32* @MEMORY_BOTH, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %144

121:                                              ; preds = %117, %113
  %122 = load i32, i32* %6, align 4
  %123 = load i32, i32* %8, align 4
  %124 = load i32, i32* %10, align 4
  %125 = call i32 @ix86_agi_dependent(i32 %122, i32 %123, i32 %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %144, label %127

127:                                              ; preds = %121
  %128 = load i32, i32* %11, align 4
  %129 = load i32, i32* @TYPE_IMOV, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %135, label %131

131:                                              ; preds = %127
  %132 = load i32, i32* %11, align 4
  %133 = load i32, i32* @TYPE_FMOV, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %131, %127
  store i32 1, i32* %9, align 4
  br label %143

136:                                              ; preds = %131
  %137 = load i32, i32* %9, align 4
  %138 = icmp sgt i32 %137, 1
  br i1 %138, label %139, label %142

139:                                              ; preds = %136
  %140 = load i32, i32* %9, align 4
  %141 = add nsw i32 %140, -1
  store i32 %141, i32* %9, align 4
  br label %142

142:                                              ; preds = %139, %136
  br label %143

143:                                              ; preds = %142, %135
  br label %144

144:                                              ; preds = %143, %121, %117
  br label %248

145:                                              ; preds = %33
  %146 = load i32, i32* %6, align 4
  %147 = call i32 @get_attr_memory(i32 %146)
  store i32 %147, i32* %12, align 4
  %148 = load i32, i32* %10, align 4
  %149 = load i32, i32* @TYPE_PUSH, align 4
  %150 = icmp eq i32 %148, %149
  br i1 %150, label %155, label %151

151:                                              ; preds = %145
  %152 = load i32, i32* %10, align 4
  %153 = load i32, i32* @TYPE_POP, align 4
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %155, label %164

155:                                              ; preds = %151, %145
  %156 = load i32, i32* %11, align 4
  %157 = load i32, i32* @TYPE_PUSH, align 4
  %158 = icmp eq i32 %156, %157
  br i1 %158, label %163, label %159

159:                                              ; preds = %155
  %160 = load i32, i32* %11, align 4
  %161 = load i32, i32* @TYPE_POP, align 4
  %162 = icmp eq i32 %160, %161
  br i1 %162, label %163, label %164

163:                                              ; preds = %159, %155
  store i32 1, i32* %5, align 4
  br label %250

164:                                              ; preds = %159, %151
  %165 = load i32, i32* %8, align 4
  %166 = call i32 @get_attr_fp_int_src(i32 %165)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %164
  %169 = load i32, i32* %9, align 4
  %170 = add nsw i32 %169, 5
  store i32 %170, i32* %9, align 4
  br label %171

171:                                              ; preds = %168, %164
  %172 = load i32, i32* %12, align 4
  %173 = load i32, i32* @MEMORY_LOAD, align 4
  %174 = icmp eq i32 %172, %173
  br i1 %174, label %179, label %175

175:                                              ; preds = %171
  %176 = load i32, i32* %12, align 4
  %177 = load i32, i32* @MEMORY_BOTH, align 4
  %178 = icmp eq i32 %176, %177
  br i1 %178, label %179, label %203

179:                                              ; preds = %175, %171
  %180 = load i32, i32* %6, align 4
  %181 = load i32, i32* %8, align 4
  %182 = load i32, i32* %10, align 4
  %183 = call i32 @ix86_agi_dependent(i32 %180, i32 %181, i32 %182)
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %203, label %185

185:                                              ; preds = %179
  %186 = load i32, i32* %11, align 4
  %187 = load i32, i32* @TYPE_IMOV, align 4
  %188 = icmp eq i32 %186, %187
  br i1 %188, label %193, label %189

189:                                              ; preds = %185
  %190 = load i32, i32* %11, align 4
  %191 = load i32, i32* @TYPE_FMOV, align 4
  %192 = icmp eq i32 %190, %191
  br i1 %192, label %193, label %194

193:                                              ; preds = %189, %185
  store i32 1, i32* %9, align 4
  br label %202

194:                                              ; preds = %189
  %195 = load i32, i32* %9, align 4
  %196 = icmp sgt i32 %195, 2
  br i1 %196, label %197, label %200

197:                                              ; preds = %194
  %198 = load i32, i32* %9, align 4
  %199 = sub nsw i32 %198, 2
  store i32 %199, i32* %9, align 4
  br label %201

200:                                              ; preds = %194
  store i32 1, i32* %9, align 4
  br label %201

201:                                              ; preds = %200, %197
  br label %202

202:                                              ; preds = %201, %193
  br label %203

203:                                              ; preds = %202, %179, %175
  br label %248

204:                                              ; preds = %33, %33, %33, %33, %33
  %205 = load i32, i32* %6, align 4
  %206 = call i32 @get_attr_memory(i32 %205)
  store i32 %206, i32* %12, align 4
  %207 = load i32, i32* %12, align 4
  %208 = load i32, i32* @MEMORY_LOAD, align 4
  %209 = icmp eq i32 %207, %208
  br i1 %209, label %214, label %210

210:                                              ; preds = %204
  %211 = load i32, i32* %12, align 4
  %212 = load i32, i32* @MEMORY_BOTH, align 4
  %213 = icmp eq i32 %211, %212
  br i1 %213, label %214, label %246

214:                                              ; preds = %210, %204
  %215 = load i32, i32* %6, align 4
  %216 = load i32, i32* %8, align 4
  %217 = load i32, i32* %10, align 4
  %218 = call i32 @ix86_agi_dependent(i32 %215, i32 %216, i32 %217)
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %246, label %220

220:                                              ; preds = %214
  %221 = load i32, i32* %6, align 4
  %222 = call i32 @get_attr_unit(i32 %221)
  store i32 %222, i32* %16, align 4
  store i32 3, i32* %17, align 4
  %223 = load i32, i32* %16, align 4
  %224 = load i32, i32* @UNIT_INTEGER, align 4
  %225 = icmp eq i32 %223, %224
  br i1 %225, label %230, label %226

226:                                              ; preds = %220
  %227 = load i32, i32* %16, align 4
  %228 = load i32, i32* @UNIT_UNKNOWN, align 4
  %229 = icmp eq i32 %227, %228
  br i1 %229, label %230, label %231

230:                                              ; preds = %226, %220
  store i32 3, i32* %17, align 4
  br label %236

231:                                              ; preds = %226
  %232 = load i32, i32* @TARGET_ATHLON, align 4
  %233 = icmp ne i32 %232, 0
  %234 = zext i1 %233 to i64
  %235 = select i1 %233, i32 2, i32 0
  store i32 %235, i32* %17, align 4
  br label %236

236:                                              ; preds = %231, %230
  %237 = load i32, i32* %9, align 4
  %238 = load i32, i32* %17, align 4
  %239 = icmp sge i32 %237, %238
  br i1 %239, label %240, label %244

240:                                              ; preds = %236
  %241 = load i32, i32* %17, align 4
  %242 = load i32, i32* %9, align 4
  %243 = sub nsw i32 %242, %241
  store i32 %243, i32* %9, align 4
  br label %245

244:                                              ; preds = %236
  store i32 0, i32* %9, align 4
  br label %245

245:                                              ; preds = %244, %240
  br label %246

246:                                              ; preds = %245, %214, %210
  br label %247

247:                                              ; preds = %33, %246
  br label %248

248:                                              ; preds = %247, %203, %144, %73
  %249 = load i32, i32* %9, align 4
  store i32 %249, i32* %5, align 4
  br label %250

250:                                              ; preds = %248, %163, %31, %21
  %251 = load i32, i32* %5, align 4
  ret i32 %251
}

declare dso_local i64 @REG_NOTE_KIND(i32) #1

declare dso_local i32 @recog_memoized(i32) #1

declare dso_local i32 @get_attr_type(i32) #1

declare dso_local i32 @ix86_agi_dependent(i32, i32, i32) #1

declare dso_local i32 @ix86_flags_dependent(i32, i32, i32) #1

declare dso_local i32 @get_attr_memory(i32) #1

declare dso_local i32 @get_attr_fp_int_src(i32) #1

declare dso_local i32 @single_set(i32) #1

declare dso_local i32 @rtx_equal_p(i32, i32) #1

declare dso_local i32 @SET_DEST(i32) #1

declare dso_local i32 @SET_SRC(i32) #1

declare dso_local i32 @GET_CODE(i32) #1

declare dso_local i32 @get_attr_unit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
