; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_calls.c_precompute_register_parameters.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_calls.c_precompute_register_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arg_data = type { i64, i64, i64, i32, i32, i32, i32 }

@PARALLEL = common dso_local global i64 0, align 8
@SUBREG = common dso_local global i64 0, align 8
@BLKmode = common dso_local global i64 0, align 8
@SET = common dso_local global i32 0, align 4
@SMALL_REGISTER_CLASSES = common dso_local global i64 0, align 8
@optimize = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.arg_data*, i32*)* @precompute_register_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @precompute_register_parameters(i32 %0, %struct.arg_data* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.arg_data*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.arg_data* %1, %struct.arg_data** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load i32*, i32** %6, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %267, %3
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %270

14:                                               ; preds = %10
  %15 = load %struct.arg_data*, %struct.arg_data** %5, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %15, i64 %17
  %19 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %266

22:                                               ; preds = %14
  %23 = load %struct.arg_data*, %struct.arg_data** %5, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %23, i64 %25
  %27 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %266, label %30

30:                                               ; preds = %22
  %31 = load i32*, i32** %6, align 8
  store i32 1, i32* %31, align 4
  %32 = load %struct.arg_data*, %struct.arg_data** %5, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %32, i64 %34
  %36 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %61

39:                                               ; preds = %30
  %40 = call i32 (...) @push_temp_slots()
  %41 = load %struct.arg_data*, %struct.arg_data** %5, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %41, i64 %43
  %45 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @expand_normal(i32 %46)
  %48 = load %struct.arg_data*, %struct.arg_data** %5, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %48, i64 %50
  %52 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %51, i32 0, i32 1
  store i64 %47, i64* %52, align 8
  %53 = load %struct.arg_data*, %struct.arg_data** %5, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %53, i64 %55
  %57 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @preserve_temp_slots(i64 %58)
  %60 = call i32 (...) @pop_temp_slots()
  br label %61

61:                                               ; preds = %39, %30
  %62 = load %struct.arg_data*, %struct.arg_data** %5, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %62, i64 %64
  %66 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = call i64 @CONSTANT_P(i64 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %98

70:                                               ; preds = %61
  %71 = load %struct.arg_data*, %struct.arg_data** %5, align 8
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %71, i64 %73
  %75 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @LEGITIMATE_CONSTANT_P(i64 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %98, label %79

79:                                               ; preds = %70
  %80 = load %struct.arg_data*, %struct.arg_data** %5, align 8
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %80, i64 %82
  %84 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.arg_data*, %struct.arg_data** %5, align 8
  %87 = load i32, i32* %7, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %86, i64 %88
  %90 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = call i64 @force_reg(i64 %85, i64 %91)
  %93 = load %struct.arg_data*, %struct.arg_data** %5, align 8
  %94 = load i32, i32* %7, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %93, i64 %95
  %97 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %96, i32 0, i32 1
  store i64 %92, i64* %97, align 8
  br label %98

98:                                               ; preds = %79, %70, %61
  %99 = load %struct.arg_data*, %struct.arg_data** %5, align 8
  %100 = load i32, i32* %7, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %99, i64 %101
  %103 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.arg_data*, %struct.arg_data** %5, align 8
  %106 = load i32, i32* %7, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %105, i64 %107
  %109 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @TREE_TYPE(i32 %110)
  %112 = call i64 @TYPE_MODE(i32 %111)
  %113 = icmp ne i64 %104, %112
  br i1 %113, label %114, label %147

114:                                              ; preds = %98
  %115 = load %struct.arg_data*, %struct.arg_data** %5, align 8
  %116 = load i32, i32* %7, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %115, i64 %117
  %119 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.arg_data*, %struct.arg_data** %5, align 8
  %122 = load i32, i32* %7, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %121, i64 %123
  %125 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @TREE_TYPE(i32 %126)
  %128 = call i64 @TYPE_MODE(i32 %127)
  %129 = load %struct.arg_data*, %struct.arg_data** %5, align 8
  %130 = load i32, i32* %7, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %129, i64 %131
  %133 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.arg_data*, %struct.arg_data** %5, align 8
  %136 = load i32, i32* %7, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %135, i64 %137
  %139 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %138, i32 0, i32 5
  %140 = load i32, i32* %139, align 8
  %141 = call i64 @convert_modes(i64 %120, i64 %128, i64 %134, i32 %140)
  %142 = load %struct.arg_data*, %struct.arg_data** %5, align 8
  %143 = load i32, i32* %7, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %142, i64 %144
  %146 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %145, i32 0, i32 1
  store i64 %141, i64* %146, align 8
  br label %147

147:                                              ; preds = %114, %98
  %148 = load %struct.arg_data*, %struct.arg_data** %5, align 8
  %149 = load i32, i32* %7, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %148, i64 %150
  %152 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = call i64 @GET_CODE(i64 %153)
  %155 = load i64, i64* @PARALLEL, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %186

157:                                              ; preds = %147
  %158 = load %struct.arg_data*, %struct.arg_data** %5, align 8
  %159 = load i32, i32* %7, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %158, i64 %160
  %162 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %161, i32 0, i32 4
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @TREE_TYPE(i32 %163)
  store i32 %164, i32* %8, align 4
  %165 = load %struct.arg_data*, %struct.arg_data** %5, align 8
  %166 = load i32, i32* %7, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %165, i64 %167
  %169 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load %struct.arg_data*, %struct.arg_data** %5, align 8
  %172 = load i32, i32* %7, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %171, i64 %173
  %175 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = load i32, i32* %8, align 4
  %178 = load i32, i32* %8, align 4
  %179 = call i32 @int_size_in_bytes(i32 %178)
  %180 = call i32 @emit_group_load_into_temps(i64 %170, i64 %176, i32 %177, i32 %179)
  %181 = load %struct.arg_data*, %struct.arg_data** %5, align 8
  %182 = load i32, i32* %7, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %181, i64 %183
  %185 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %184, i32 0, i32 3
  store i32 %180, i32* %185, align 8
  br label %265

186:                                              ; preds = %147
  %187 = load %struct.arg_data*, %struct.arg_data** %5, align 8
  %188 = load i32, i32* %7, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %187, i64 %189
  %191 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %190, i32 0, i32 1
  %192 = load i64, i64* %191, align 8
  %193 = call i64 @REG_P(i64 %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %264, label %195

195:                                              ; preds = %186
  %196 = load %struct.arg_data*, %struct.arg_data** %5, align 8
  %197 = load i32, i32* %7, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %196, i64 %198
  %200 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %199, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = call i64 @GET_CODE(i64 %201)
  %203 = load i64, i64* @SUBREG, align 8
  %204 = icmp eq i64 %202, %203
  br i1 %204, label %205, label %215

205:                                              ; preds = %195
  %206 = load %struct.arg_data*, %struct.arg_data** %5, align 8
  %207 = load i32, i32* %7, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %206, i64 %208
  %210 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %209, i32 0, i32 1
  %211 = load i64, i64* %210, align 8
  %212 = call i64 @SUBREG_REG(i64 %211)
  %213 = call i64 @REG_P(i64 %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %264, label %215

215:                                              ; preds = %205, %195
  %216 = load %struct.arg_data*, %struct.arg_data** %5, align 8
  %217 = load i32, i32* %7, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %216, i64 %218
  %220 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %219, i32 0, i32 2
  %221 = load i64, i64* %220, align 8
  %222 = load i64, i64* @BLKmode, align 8
  %223 = icmp ne i64 %221, %222
  br i1 %223, label %224, label %264

224:                                              ; preds = %215
  %225 = load %struct.arg_data*, %struct.arg_data** %5, align 8
  %226 = load i32, i32* %7, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %225, i64 %227
  %229 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %228, i32 0, i32 1
  %230 = load i64, i64* %229, align 8
  %231 = load i32, i32* @SET, align 4
  %232 = call i64 @rtx_cost(i64 %230, i32 %231)
  %233 = call i64 @COSTS_N_INSNS(i32 1)
  %234 = icmp sgt i64 %232, %233
  br i1 %234, label %235, label %264

235:                                              ; preds = %224
  %236 = load i64, i64* @SMALL_REGISTER_CLASSES, align 8
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %242

238:                                              ; preds = %235
  %239 = load i32*, i32** %6, align 8
  %240 = load i32, i32* %239, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %245, label %242

242:                                              ; preds = %238, %235
  %243 = load i64, i64* @optimize, align 8
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %264

245:                                              ; preds = %242, %238
  %246 = load %struct.arg_data*, %struct.arg_data** %5, align 8
  %247 = load i32, i32* %7, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %246, i64 %248
  %250 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %249, i32 0, i32 2
  %251 = load i64, i64* %250, align 8
  %252 = load %struct.arg_data*, %struct.arg_data** %5, align 8
  %253 = load i32, i32* %7, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %252, i64 %254
  %256 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %255, i32 0, i32 1
  %257 = load i64, i64* %256, align 8
  %258 = call i64 @copy_to_mode_reg(i64 %251, i64 %257)
  %259 = load %struct.arg_data*, %struct.arg_data** %5, align 8
  %260 = load i32, i32* %7, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %259, i64 %261
  %263 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %262, i32 0, i32 1
  store i64 %258, i64* %263, align 8
  br label %264

264:                                              ; preds = %245, %242, %224, %215, %205, %186
  br label %265

265:                                              ; preds = %264, %157
  br label %266

266:                                              ; preds = %265, %22, %14
  br label %267

267:                                              ; preds = %266
  %268 = load i32, i32* %7, align 4
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %7, align 4
  br label %10

270:                                              ; preds = %10
  ret void
}

declare dso_local i32 @push_temp_slots(...) #1

declare dso_local i64 @expand_normal(i32) #1

declare dso_local i32 @preserve_temp_slots(i64) #1

declare dso_local i32 @pop_temp_slots(...) #1

declare dso_local i64 @CONSTANT_P(i64) #1

declare dso_local i32 @LEGITIMATE_CONSTANT_P(i64) #1

declare dso_local i64 @force_reg(i64, i64) #1

declare dso_local i64 @TYPE_MODE(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i64 @convert_modes(i64, i64, i64, i32) #1

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i32 @emit_group_load_into_temps(i64, i64, i32, i32) #1

declare dso_local i32 @int_size_in_bytes(i32) #1

declare dso_local i64 @REG_P(i64) #1

declare dso_local i64 @SUBREG_REG(i64) #1

declare dso_local i64 @rtx_cost(i64, i32) #1

declare dso_local i64 @COSTS_N_INSNS(i32) #1

declare dso_local i64 @copy_to_mode_reg(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
