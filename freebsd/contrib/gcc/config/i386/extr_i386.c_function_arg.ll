; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_function_arg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_function_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@NULL_RTX = common dso_local global i64 0, align 8
@UNITS_PER_WORD = common dso_local global i32 0, align 4
@function_arg.warnedsse = internal global i32 0, align 4
@function_arg.warnedmmx = internal global i32 0, align 4
@VECTOR_TYPE = common dso_local global i64 0, align 8
@VOIDmode = common dso_local global i32 0, align 4
@TARGET_64BIT = common dso_local global i64 0, align 8
@SSE_REGPARM_MAX = common dso_local global i32 0, align 4
@constm1_rtx = common dso_local global i64 0, align 8
@x86_64_int_parameter_registers = common dso_local global i32* null, align 8
@TARGET_SSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"SSE vector argument without SSE enabled changes the ABI\00", align 1
@FIRST_SSE_REG = common dso_local global i32 0, align 4
@TARGET_MMX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"MMX vector argument without MMX enabled changes the ABI\00", align 1
@FIRST_MMX_REG = common dso_local global i32 0, align 4
@TARGET_DEBUG_ARG = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [63 x i8] c"function_arg (size=%d, wds=%2d, nregs=%d, mode=%4s, named=%d, \00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c", stack\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c" )\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @function_arg(%struct.TYPE_3__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %10, align 4
  %16 = load i64, i64* @NULL_RTX, align 8
  store i64 %16, i64* %11, align 8
  %17 = load i32, i32* %10, align 4
  %18 = icmp eq i32 %17, 145
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @int_size_in_bytes(i32 %20)
  br label %26

22:                                               ; preds = %4
  %23 = load i32, i32* %10, align 4
  %24 = call i64 @GET_MODE_SIZE(i32 %23)
  %25 = trunc i64 %24 to i32
  br label %26

26:                                               ; preds = %22, %19
  %27 = phi i32 [ %21, %19 ], [ %25, %22 ]
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* @UNITS_PER_WORD, align 4
  %30 = add nsw i32 %28, %29
  %31 = sub nsw i32 %30, 1
  %32 = load i32, i32* @UNITS_PER_WORD, align 4
  %33 = sdiv i32 %31, %32
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %26
  %37 = load i32, i32* %8, align 4
  %38 = call i64 @TREE_CODE(i32 %37)
  %39 = load i64, i64* @VECTOR_TYPE, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @type_natural_mode(i32 %42)
  store i32 %43, i32* %10, align 4
  br label %44

44:                                               ; preds = %41, %36, %26
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* @VOIDmode, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %75

48:                                               ; preds = %44
  %49 = load i64, i64* @TARGET_64BIT, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %73

51:                                               ; preds = %48
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 11
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %51
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 8
  %59 = load i32, i32* %58, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load i32, i32* @SSE_REGPARM_MAX, align 4
  br label %67

63:                                               ; preds = %56
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  br label %67

67:                                               ; preds = %63, %61
  %68 = phi i32 [ %62, %61 ], [ %66, %63 ]
  br label %70

69:                                               ; preds = %51
  br label %70

70:                                               ; preds = %69, %67
  %71 = phi i32 [ %68, %67 ], [ -1, %69 ]
  %72 = call i64 @GEN_INT(i32 %71)
  store i64 %72, i64* %5, align 8
  br label %254

73:                                               ; preds = %48
  %74 = load i64, i64* @constm1_rtx, align 8
  store i64 %74, i64* %5, align 8
  br label %254

75:                                               ; preds = %44
  %76 = load i64, i64* @TARGET_64BIT, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %97

78:                                               ; preds = %75
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* %8, align 4
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 8
  %87 = load i32, i32* %86, align 4
  %88 = load i32*, i32** @x86_64_int_parameter_registers, align 8
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds i32, i32* %88, i64 %91
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i64 @construct_container(i32 %79, i32 %80, i32 %81, i32 0, i32 %84, i32 %87, i32* %92, i32 %95)
  store i64 %96, i64* %11, align 8
  br label %224

97:                                               ; preds = %75
  %98 = load i32, i32* %10, align 4
  switch i32 %98, label %99 [
    i32 145, label %100
    i32 143, label %105
    i32 139, label %105
    i32 142, label %105
    i32 141, label %105
    i32 144, label %137
    i32 140, label %144
    i32 138, label %151
    i32 137, label %151
    i32 129, label %151
    i32 130, label %151
    i32 135, label %151
    i32 131, label %151
    i32 136, label %151
    i32 128, label %187
    i32 132, label %187
    i32 133, label %187
    i32 134, label %187
  ]

99:                                               ; preds = %97
  br label %223

100:                                              ; preds = %97
  %101 = load i32, i32* %12, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %100
  br label %223

104:                                              ; preds = %100
  br label %105

105:                                              ; preds = %97, %97, %97, %97, %104
  %106 = load i32, i32* %13, align 4
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = icmp sle i32 %106, %109
  br i1 %110, label %111, label %136

111:                                              ; preds = %105
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = trunc i64 %114 to i32
  store i32 %115, i32* %14, align 4
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 10
  %118 = load i32, i32* %117, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %132

120:                                              ; preds = %111
  %121 = load i32, i32* %10, align 4
  %122 = icmp eq i32 %121, 145
  br i1 %122, label %126, label %123

123:                                              ; preds = %120
  %124 = load i32, i32* %10, align 4
  %125 = icmp eq i32 %124, 143
  br i1 %125, label %126, label %127

126:                                              ; preds = %123, %120
  br label %223

127:                                              ; preds = %123
  %128 = load i32, i32* %14, align 4
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %127
  store i32 2, i32* %14, align 4
  br label %131

131:                                              ; preds = %130, %127
  br label %132

132:                                              ; preds = %131, %111
  %133 = load i32, i32* %10, align 4
  %134 = load i32, i32* %14, align 4
  %135 = call i64 @gen_rtx_REG(i32 %133, i32 %134)
  store i64 %135, i64* %11, align 8
  br label %136

136:                                              ; preds = %132, %105
  br label %223

137:                                              ; preds = %97
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 8
  %141 = icmp slt i32 %140, 2
  br i1 %141, label %142, label %143

142:                                              ; preds = %137
  br label %223

143:                                              ; preds = %137
  br label %144

144:                                              ; preds = %97, %143
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 8
  %148 = icmp slt i32 %147, 1
  br i1 %148, label %149, label %150

149:                                              ; preds = %144
  br label %223

150:                                              ; preds = %144
  br label %151

151:                                              ; preds = %97, %97, %97, %97, %97, %97, %97, %150
  %152 = load i32, i32* %8, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %151
  %155 = load i32, i32* %8, align 4
  %156 = call i32 @AGGREGATE_TYPE_P(i32 %155)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %186, label %158

158:                                              ; preds = %154, %151
  %159 = load i32, i32* @TARGET_SSE, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %171, label %161

161:                                              ; preds = %158
  %162 = load i32, i32* @function_arg.warnedsse, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %171, label %164

164:                                              ; preds = %161
  %165 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 9
  %167 = load i32, i32* %166, align 8
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %164
  store i32 1, i32* @function_arg.warnedsse, align 4
  %170 = call i32 @warning(i32 0, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  br label %171

171:                                              ; preds = %169, %164, %161, %158
  %172 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 8
  %174 = load i32, i32* %173, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %185

176:                                              ; preds = %171
  %177 = load i32, i32* %10, align 4
  %178 = load i32, i32* %7, align 4
  %179 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* @FIRST_SSE_REG, align 4
  %183 = add nsw i32 %181, %182
  %184 = call i64 @gen_reg_or_parallel(i32 %177, i32 %178, i32 %183)
  store i64 %184, i64* %11, align 8
  br label %185

185:                                              ; preds = %176, %171
  br label %186

186:                                              ; preds = %185, %154
  br label %223

187:                                              ; preds = %97, %97, %97, %97
  %188 = load i32, i32* %8, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %194

190:                                              ; preds = %187
  %191 = load i32, i32* %8, align 4
  %192 = call i32 @AGGREGATE_TYPE_P(i32 %191)
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %222, label %194

194:                                              ; preds = %190, %187
  %195 = load i32, i32* @TARGET_MMX, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %207, label %197

197:                                              ; preds = %194
  %198 = load i32, i32* @function_arg.warnedmmx, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %207, label %200

200:                                              ; preds = %197
  %201 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %202 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %201, i32 0, i32 7
  %203 = load i32, i32* %202, align 8
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %207

205:                                              ; preds = %200
  store i32 1, i32* @function_arg.warnedmmx, align 4
  %206 = call i32 @warning(i32 0, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  br label %207

207:                                              ; preds = %205, %200, %197, %194
  %208 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %209 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %208, i32 0, i32 6
  %210 = load i32, i32* %209, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %221

212:                                              ; preds = %207
  %213 = load i32, i32* %10, align 4
  %214 = load i32, i32* %7, align 4
  %215 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %216 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %215, i32 0, i32 4
  %217 = load i32, i32* %216, align 4
  %218 = load i32, i32* @FIRST_MMX_REG, align 4
  %219 = add nsw i32 %217, %218
  %220 = call i64 @gen_reg_or_parallel(i32 %213, i32 %214, i32 %219)
  store i64 %220, i64* %11, align 8
  br label %221

221:                                              ; preds = %212, %207
  br label %222

222:                                              ; preds = %221, %190
  br label %223

223:                                              ; preds = %222, %186, %149, %142, %136, %126, %103, %99
  br label %224

224:                                              ; preds = %223, %78
  %225 = load i64, i64* @TARGET_DEBUG_ARG, align 8
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %252

227:                                              ; preds = %224
  %228 = load i32, i32* @stderr, align 4
  %229 = load i32, i32* %13, align 4
  %230 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %231 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %230, i32 0, i32 5
  %232 = load i32, i32* %231, align 8
  %233 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %234 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = load i32, i32* %10, align 4
  %237 = call i8* @GET_MODE_NAME(i32 %236)
  %238 = load i32, i32* %9, align 4
  %239 = call i32 (i32, i8*, ...) @fprintf(i32 %228, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0), i32 %229, i32 %232, i32 %235, i8* %237, i32 %238)
  %240 = load i64, i64* %11, align 8
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %246

242:                                              ; preds = %227
  %243 = load i32, i32* @stderr, align 4
  %244 = load i64, i64* %11, align 8
  %245 = call i32 @print_simple_rtl(i32 %243, i64 %244)
  br label %249

246:                                              ; preds = %227
  %247 = load i32, i32* @stderr, align 4
  %248 = call i32 (i32, i8*, ...) @fprintf(i32 %247, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  br label %249

249:                                              ; preds = %246, %242
  %250 = load i32, i32* @stderr, align 4
  %251 = call i32 (i32, i8*, ...) @fprintf(i32 %250, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  br label %252

252:                                              ; preds = %249, %224
  %253 = load i64, i64* %11, align 8
  store i64 %253, i64* %5, align 8
  br label %254

254:                                              ; preds = %252, %73, %70
  %255 = load i64, i64* %5, align 8
  ret i64 %255
}

declare dso_local i32 @int_size_in_bytes(i32) #1

declare dso_local i64 @GET_MODE_SIZE(i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @type_natural_mode(i32) #1

declare dso_local i64 @GEN_INT(i32) #1

declare dso_local i64 @construct_container(i32, i32, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i64 @gen_rtx_REG(i32, i32) #1

declare dso_local i32 @AGGREGATE_TYPE_P(i32) #1

declare dso_local i32 @warning(i32, i8*) #1

declare dso_local i64 @gen_reg_or_parallel(i32, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @GET_MODE_NAME(i32) #1

declare dso_local i32 @print_simple_rtl(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
