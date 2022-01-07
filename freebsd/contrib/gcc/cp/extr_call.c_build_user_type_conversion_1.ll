; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_call.c_build_user_type_conversion_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_call.c_build_user_type_conversion_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.z_candidate = type { i8*, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, %struct.z_candidate* }

@NULL_TREE = common dso_local global i8* null, align 8
@complete_ctor_identifier = common dso_local global i32 0, align 4
@LOOKUP_NO_CONVERSION = common dso_local global i32 0, align 4
@TEMPLATE_DECL = common dso_local global i64 0, align 8
@DEDUCE_CALL = common dso_local global i32 0, align 4
@REFERENCE_TYPE = common dso_local global i64 0, align 8
@LOOKUP_NO_TEMP_BIND = common dso_local global i32 0, align 4
@DEDUCE_CONV = common dso_local global i32 0, align 4
@pedantic = common dso_local global i32 0, align 4
@LOOKUP_COMPLAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"conversion from %qT to %qT is ambiguous\00", align 1
@ck_user = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.z_candidate* (i8*, i8*, i32)* @build_user_type_conversion_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.z_candidate* @build_user_type_conversion_1(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.z_candidate*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.z_candidate*, align 8
  %9 = alloca %struct.z_candidate*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca %struct.TYPE_10__*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %23 = load i8*, i8** %6, align 8
  %24 = call i8* @TREE_TYPE(i8* %23)
  store i8* %24, i8** %10, align 8
  %25 = load i8*, i8** @NULL_TREE, align 8
  store i8* %25, i8** %11, align 8
  %26 = load i8*, i8** @NULL_TREE, align 8
  store i8* %26, i8** %12, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %13, align 8
  %27 = load i8*, i8** @NULL_TREE, align 8
  store i8* %27, i8** %14, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = call i64 @IS_AGGR_TYPE(i8* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %3
  %32 = load i8*, i8** %5, align 8
  %33 = call i64 @IS_AGGR_TYPE(i8* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = load i8*, i8** %5, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = call i32 @DERIVED_FROM_P(i8* %36, i8* %37)
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  br label %41

41:                                               ; preds = %35, %31, %3
  %42 = phi i1 [ true, %31 ], [ true, %3 ], [ %40, %35 ]
  %43 = zext i1 %42 to i32
  %44 = call i32 @gcc_assert(i32 %43)
  %45 = load i8*, i8** %5, align 8
  %46 = call i64 @IS_AGGR_TYPE(i8* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %41
  %49 = load i8*, i8** %5, align 8
  %50 = load i32, i32* @complete_ctor_identifier, align 4
  %51 = call i8* @lookup_fnfields(i8* %49, i32 %50, i32 0)
  store i8* %51, i8** %11, align 8
  br label %52

52:                                               ; preds = %48, %41
  %53 = load i8*, i8** %10, align 8
  %54 = call i64 @IS_AGGR_TYPE(i8* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i8*, i8** %10, align 8
  %58 = call i8* @lookup_conversions(i8* %57)
  store i8* %58, i8** %12, align 8
  br label %59

59:                                               ; preds = %56, %52
  store %struct.z_candidate* null, %struct.z_candidate** %8, align 8
  %60 = load i32, i32* @LOOKUP_NO_CONVERSION, align 4
  %61 = load i32, i32* %7, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %7, align 4
  %63 = load i8*, i8** %11, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %92

65:                                               ; preds = %59
  %66 = load i8*, i8** %11, align 8
  %67 = call i8* @BASELINK_FUNCTIONS(i8* %66)
  store i8* %67, i8** %11, align 8
  %68 = load i8*, i8** %5, align 8
  %69 = call i32 @build_pointer_type(i8* %68)
  %70 = call i8* @build_int_cst(i32 %69, i32 0)
  store i8* %70, i8** %16, align 8
  %71 = load i8*, i8** @NULL_TREE, align 8
  %72 = load i8*, i8** %6, align 8
  %73 = call i8* @build_tree_list(i8* %71, i8* %72)
  store i8* %73, i8** %14, align 8
  %74 = load i8*, i8** %11, align 8
  %75 = call i8* @OVL_CURRENT(i8* %74)
  %76 = call i32 @DECL_HAS_IN_CHARGE_PARM_P(i8* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %84, label %78

78:                                               ; preds = %65
  %79 = load i8*, i8** %11, align 8
  %80 = call i8* @OVL_CURRENT(i8* %79)
  %81 = call i32 @DECL_HAS_VTT_PARM_P(i8* %80)
  %82 = icmp ne i32 %81, 0
  %83 = xor i1 %82, true
  br label %84

84:                                               ; preds = %78, %65
  %85 = phi i1 [ false, %65 ], [ %83, %78 ]
  %86 = zext i1 %85 to i32
  %87 = call i32 @gcc_assert(i32 %86)
  %88 = load i8*, i8** @NULL_TREE, align 8
  %89 = load i8*, i8** %16, align 8
  %90 = load i8*, i8** %14, align 8
  %91 = call i8* @tree_cons(i8* %88, i8* %89, i8* %90)
  store i8* %91, i8** %14, align 8
  br label %92

92:                                               ; preds = %84, %59
  br label %93

93:                                               ; preds = %141, %92
  %94 = load i8*, i8** %11, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %144

96:                                               ; preds = %93
  %97 = load i8*, i8** %11, align 8
  %98 = call i8* @OVL_CURRENT(i8* %97)
  store i8* %98, i8** %17, align 8
  %99 = load i8*, i8** %17, align 8
  %100 = call i64 @DECL_NONCONVERTING_P(i8* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %96
  br label %141

103:                                              ; preds = %96
  %104 = load i8*, i8** %17, align 8
  %105 = call i64 @TREE_CODE(i8* %104)
  %106 = load i64, i64* @TEMPLATE_DECL, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %121

108:                                              ; preds = %103
  %109 = load i8*, i8** %17, align 8
  %110 = load i8*, i8** %5, align 8
  %111 = load i8*, i8** @NULL_TREE, align 8
  %112 = load i8*, i8** %14, align 8
  %113 = load i8*, i8** @NULL_TREE, align 8
  %114 = load i8*, i8** %5, align 8
  %115 = call i8* @TYPE_BINFO(i8* %114)
  %116 = load i8*, i8** %5, align 8
  %117 = call i8* @TYPE_BINFO(i8* %116)
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* @DEDUCE_CALL, align 4
  %120 = call %struct.z_candidate* @add_template_candidate(%struct.z_candidate** %8, i8* %109, i8* %110, i8* %111, i8* %112, i8* %113, i8* %115, i8* %117, i32 %118, i32 %119)
  store %struct.z_candidate* %120, %struct.z_candidate** %9, align 8
  br label %131

121:                                              ; preds = %103
  %122 = load i8*, i8** %17, align 8
  %123 = load i8*, i8** %5, align 8
  %124 = load i8*, i8** %14, align 8
  %125 = load i8*, i8** %5, align 8
  %126 = call i8* @TYPE_BINFO(i8* %125)
  %127 = load i8*, i8** %5, align 8
  %128 = call i8* @TYPE_BINFO(i8* %127)
  %129 = load i32, i32* %7, align 4
  %130 = call %struct.z_candidate* @add_function_candidate(%struct.z_candidate** %8, i8* %122, i8* %123, i8* %124, i8* %126, i8* %128, i32 %129)
  store %struct.z_candidate* %130, %struct.z_candidate** %9, align 8
  br label %131

131:                                              ; preds = %121, %108
  %132 = load %struct.z_candidate*, %struct.z_candidate** %9, align 8
  %133 = icmp ne %struct.z_candidate* %132, null
  br i1 %133, label %134, label %140

134:                                              ; preds = %131
  %135 = load i8*, i8** %5, align 8
  %136 = load i8*, i8** @NULL_TREE, align 8
  %137 = call %struct.TYPE_10__* @build_identity_conv(i8* %135, i8* %136)
  %138 = load %struct.z_candidate*, %struct.z_candidate** %9, align 8
  %139 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %138, i32 0, i32 2
  store %struct.TYPE_10__* %137, %struct.TYPE_10__** %139, align 8
  br label %140

140:                                              ; preds = %134, %131
  br label %141

141:                                              ; preds = %140, %102
  %142 = load i8*, i8** %11, align 8
  %143 = call i8* @OVL_NEXT(i8* %142)
  store i8* %143, i8** %11, align 8
  br label %93

144:                                              ; preds = %93
  %145 = load i8*, i8** %12, align 8
  %146 = icmp ne i8* %145, null
  br i1 %146, label %147, label %152

147:                                              ; preds = %144
  %148 = load i8*, i8** @NULL_TREE, align 8
  %149 = load i8*, i8** %6, align 8
  %150 = call i8* @build_this(i8* %149)
  %151 = call i8* @build_tree_list(i8* %148, i8* %150)
  store i8* %151, i8** %14, align 8
  br label %152

152:                                              ; preds = %147, %144
  br label %153

153:                                              ; preds = %242, %152
  %154 = load i8*, i8** %12, align 8
  %155 = icmp ne i8* %154, null
  br i1 %155, label %156, label %245

156:                                              ; preds = %153
  %157 = load i8*, i8** %12, align 8
  %158 = call i8* @TREE_PURPOSE(i8* %157)
  store i8* %158, i8** %19, align 8
  %159 = load i32, i32* @LOOKUP_NO_CONVERSION, align 4
  store i32 %159, i32* %20, align 4
  %160 = load i8*, i8** %5, align 8
  %161 = call i64 @TREE_CODE(i8* %160)
  %162 = load i64, i64* @REFERENCE_TYPE, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %168

164:                                              ; preds = %156
  %165 = load i32, i32* @LOOKUP_NO_TEMP_BIND, align 4
  %166 = load i32, i32* %20, align 4
  %167 = or i32 %166, %165
  store i32 %167, i32* %20, align 4
  br label %168

168:                                              ; preds = %164, %156
  %169 = load i8*, i8** %12, align 8
  %170 = call i8* @TREE_VALUE(i8* %169)
  store i8* %170, i8** %18, align 8
  br label %171

171:                                              ; preds = %238, %168
  %172 = load i8*, i8** %18, align 8
  %173 = icmp ne i8* %172, null
  br i1 %173, label %174, label %241

174:                                              ; preds = %171
  %175 = load i8*, i8** %18, align 8
  %176 = call i8* @OVL_CURRENT(i8* %175)
  store i8* %176, i8** %21, align 8
  %177 = load i8*, i8** %21, align 8
  %178 = call i64 @TREE_CODE(i8* %177)
  %179 = load i64, i64* @TEMPLATE_DECL, align 8
  %180 = icmp eq i64 %178, %179
  br i1 %180, label %181, label %193

181:                                              ; preds = %174
  %182 = load i8*, i8** %21, align 8
  %183 = load i8*, i8** %10, align 8
  %184 = load i8*, i8** @NULL_TREE, align 8
  %185 = load i8*, i8** %14, align 8
  %186 = load i8*, i8** %5, align 8
  %187 = load i8*, i8** %10, align 8
  %188 = call i8* @TYPE_BINFO(i8* %187)
  %189 = load i8*, i8** %19, align 8
  %190 = load i32, i32* %7, align 4
  %191 = load i32, i32* @DEDUCE_CONV, align 4
  %192 = call %struct.z_candidate* @add_template_candidate(%struct.z_candidate** %8, i8* %182, i8* %183, i8* %184, i8* %185, i8* %186, i8* %188, i8* %189, i32 %190, i32 %191)
  store %struct.z_candidate* %192, %struct.z_candidate** %9, align 8
  br label %202

193:                                              ; preds = %174
  %194 = load i8*, i8** %21, align 8
  %195 = load i8*, i8** %10, align 8
  %196 = load i8*, i8** %14, align 8
  %197 = load i8*, i8** %10, align 8
  %198 = call i8* @TYPE_BINFO(i8* %197)
  %199 = load i8*, i8** %19, align 8
  %200 = load i32, i32* %7, align 4
  %201 = call %struct.z_candidate* @add_function_candidate(%struct.z_candidate** %8, i8* %194, i8* %195, i8* %196, i8* %198, i8* %199, i32 %200)
  store %struct.z_candidate* %201, %struct.z_candidate** %9, align 8
  br label %202

202:                                              ; preds = %193, %181
  %203 = load %struct.z_candidate*, %struct.z_candidate** %9, align 8
  %204 = icmp ne %struct.z_candidate* %203, null
  br i1 %204, label %205, label %237

205:                                              ; preds = %202
  %206 = load i8*, i8** %5, align 8
  %207 = load %struct.z_candidate*, %struct.z_candidate** %9, align 8
  %208 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %207, i32 0, i32 0
  %209 = load i8*, i8** %208, align 8
  %210 = call i8* @TREE_TYPE(i8* %209)
  %211 = call i8* @TREE_TYPE(i8* %210)
  %212 = load i32, i32* %20, align 4
  %213 = call %struct.TYPE_10__* @implicit_conversion(i8* %206, i8* %211, i32 0, i32 0, i32 %212)
  store %struct.TYPE_10__* %213, %struct.TYPE_10__** %22, align 8
  %214 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %215 = load %struct.z_candidate*, %struct.z_candidate** %9, align 8
  %216 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %215, i32 0, i32 2
  store %struct.TYPE_10__* %214, %struct.TYPE_10__** %216, align 8
  %217 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %218 = icmp ne %struct.TYPE_10__* %217, null
  br i1 %218, label %222, label %219

219:                                              ; preds = %205
  %220 = load %struct.z_candidate*, %struct.z_candidate** %9, align 8
  %221 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %220, i32 0, i32 1
  store i32 0, i32* %221, align 8
  br label %236

222:                                              ; preds = %205
  %223 = load %struct.z_candidate*, %struct.z_candidate** %8, align 8
  %224 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 8
  %226 = icmp eq i32 %225, 1
  br i1 %226, label %227, label %235

227:                                              ; preds = %222
  %228 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %229 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %235

232:                                              ; preds = %227
  %233 = load %struct.z_candidate*, %struct.z_candidate** %9, align 8
  %234 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %233, i32 0, i32 1
  store i32 -1, i32* %234, align 8
  br label %235

235:                                              ; preds = %232, %227, %222
  br label %236

236:                                              ; preds = %235, %219
  br label %237

237:                                              ; preds = %236, %202
  br label %238

238:                                              ; preds = %237
  %239 = load i8*, i8** %18, align 8
  %240 = call i8* @OVL_NEXT(i8* %239)
  store i8* %240, i8** %18, align 8
  br label %171

241:                                              ; preds = %171
  br label %242

242:                                              ; preds = %241
  %243 = load i8*, i8** %12, align 8
  %244 = call i8* @TREE_CHAIN(i8* %243)
  store i8* %244, i8** %12, align 8
  br label %153

245:                                              ; preds = %153
  %246 = load %struct.z_candidate*, %struct.z_candidate** %8, align 8
  %247 = load i32, i32* @pedantic, align 4
  %248 = call %struct.z_candidate* @splice_viable(%struct.z_candidate* %246, i32 %247, i32* %15)
  store %struct.z_candidate* %248, %struct.z_candidate** %8, align 8
  %249 = load i32, i32* %15, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %252, label %251

251:                                              ; preds = %245
  store %struct.z_candidate* null, %struct.z_candidate** %4, align 8
  br label %333

252:                                              ; preds = %245
  %253 = load %struct.z_candidate*, %struct.z_candidate** %8, align 8
  %254 = call %struct.z_candidate* @tourney(%struct.z_candidate* %253)
  store %struct.z_candidate* %254, %struct.z_candidate** %9, align 8
  %255 = load %struct.z_candidate*, %struct.z_candidate** %9, align 8
  %256 = icmp eq %struct.z_candidate* %255, null
  br i1 %256, label %257, label %289

257:                                              ; preds = %252
  %258 = load i32, i32* %7, align 4
  %259 = load i32, i32* @LOOKUP_COMPLAIN, align 4
  %260 = and i32 %258, %259
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %268

262:                                              ; preds = %257
  %263 = load i8*, i8** %10, align 8
  %264 = load i8*, i8** %5, align 8
  %265 = call i32 @error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %263, i8* %264)
  %266 = load %struct.z_candidate*, %struct.z_candidate** %8, align 8
  %267 = call i32 @print_z_candidates(%struct.z_candidate* %266)
  br label %268

268:                                              ; preds = %262, %257
  %269 = load %struct.z_candidate*, %struct.z_candidate** %8, align 8
  store %struct.z_candidate* %269, %struct.z_candidate** %9, align 8
  %270 = load i8*, i8** %5, align 8
  %271 = load i8*, i8** %6, align 8
  %272 = call %struct.TYPE_10__* @build_ambiguous_conv(i8* %270, i8* %271)
  %273 = load %struct.z_candidate*, %struct.z_candidate** %9, align 8
  %274 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %273, i32 0, i32 2
  store %struct.TYPE_10__* %272, %struct.TYPE_10__** %274, align 8
  %275 = load %struct.z_candidate*, %struct.z_candidate** %9, align 8
  %276 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %275, i32 0, i32 2
  %277 = load %struct.TYPE_10__*, %struct.TYPE_10__** %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %277, i32 0, i32 1
  store i32 1, i32* %278, align 4
  %279 = load %struct.z_candidate*, %struct.z_candidate** %8, align 8
  %280 = call i32 @any_strictly_viable(%struct.z_candidate* %279)
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %287, label %282

282:                                              ; preds = %268
  %283 = load %struct.z_candidate*, %struct.z_candidate** %9, align 8
  %284 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %283, i32 0, i32 2
  %285 = load %struct.TYPE_10__*, %struct.TYPE_10__** %284, align 8
  %286 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %285, i32 0, i32 0
  store i32 1, i32* %286, align 8
  br label %287

287:                                              ; preds = %282, %268
  %288 = load %struct.z_candidate*, %struct.z_candidate** %9, align 8
  store %struct.z_candidate* %288, %struct.z_candidate** %4, align 8
  br label %333

289:                                              ; preds = %252
  %290 = load i32, i32* @ck_user, align 4
  %291 = load %struct.z_candidate*, %struct.z_candidate** %9, align 8
  %292 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %291, i32 0, i32 0
  %293 = load i8*, i8** %292, align 8
  %294 = call i64 @DECL_CONSTRUCTOR_P(i8* %293)
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %296, label %298

296:                                              ; preds = %289
  %297 = load i8*, i8** %5, align 8
  br label %305

298:                                              ; preds = %289
  %299 = load %struct.z_candidate*, %struct.z_candidate** %9, align 8
  %300 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %299, i32 0, i32 0
  %301 = load i8*, i8** %300, align 8
  %302 = call i8* @TREE_TYPE(i8* %301)
  %303 = call i8* @TREE_TYPE(i8* %302)
  %304 = call i8* @non_reference(i8* %303)
  br label %305

305:                                              ; preds = %298, %296
  %306 = phi i8* [ %297, %296 ], [ %304, %298 ]
  %307 = load i8*, i8** %6, align 8
  %308 = call i8* @TREE_TYPE(i8* %307)
  %309 = load i8*, i8** %6, align 8
  %310 = call %struct.TYPE_10__* @build_identity_conv(i8* %308, i8* %309)
  %311 = call %struct.TYPE_10__* @build_conv(i32 %290, i8* %306, %struct.TYPE_10__* %310)
  store %struct.TYPE_10__* %311, %struct.TYPE_10__** %13, align 8
  %312 = load %struct.z_candidate*, %struct.z_candidate** %9, align 8
  %313 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %314 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %313, i32 0, i32 2
  store %struct.z_candidate* %312, %struct.z_candidate** %314, align 8
  %315 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %316 = load %struct.z_candidate*, %struct.z_candidate** %9, align 8
  %317 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %316, i32 0, i32 2
  %318 = load %struct.TYPE_10__*, %struct.TYPE_10__** %317, align 8
  %319 = call %struct.TYPE_10__* @merge_conversion_sequences(%struct.TYPE_10__* %315, %struct.TYPE_10__* %318)
  %320 = load %struct.z_candidate*, %struct.z_candidate** %9, align 8
  %321 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %320, i32 0, i32 2
  store %struct.TYPE_10__* %319, %struct.TYPE_10__** %321, align 8
  %322 = load %struct.z_candidate*, %struct.z_candidate** %9, align 8
  %323 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %322, i32 0, i32 1
  %324 = load i32, i32* %323, align 8
  %325 = icmp eq i32 %324, -1
  br i1 %325, label %326, label %331

326:                                              ; preds = %305
  %327 = load %struct.z_candidate*, %struct.z_candidate** %9, align 8
  %328 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %327, i32 0, i32 2
  %329 = load %struct.TYPE_10__*, %struct.TYPE_10__** %328, align 8
  %330 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %329, i32 0, i32 0
  store i32 1, i32* %330, align 8
  br label %331

331:                                              ; preds = %326, %305
  %332 = load %struct.z_candidate*, %struct.z_candidate** %9, align 8
  store %struct.z_candidate* %332, %struct.z_candidate** %4, align 8
  br label %333

333:                                              ; preds = %331, %287, %251
  %334 = load %struct.z_candidate*, %struct.z_candidate** %4, align 8
  ret %struct.z_candidate* %334
}

declare dso_local i8* @TREE_TYPE(i8*) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @IS_AGGR_TYPE(i8*) #1

declare dso_local i32 @DERIVED_FROM_P(i8*, i8*) #1

declare dso_local i8* @lookup_fnfields(i8*, i32, i32) #1

declare dso_local i8* @lookup_conversions(i8*) #1

declare dso_local i8* @BASELINK_FUNCTIONS(i8*) #1

declare dso_local i8* @build_int_cst(i32, i32) #1

declare dso_local i32 @build_pointer_type(i8*) #1

declare dso_local i8* @build_tree_list(i8*, i8*) #1

declare dso_local i32 @DECL_HAS_IN_CHARGE_PARM_P(i8*) #1

declare dso_local i8* @OVL_CURRENT(i8*) #1

declare dso_local i32 @DECL_HAS_VTT_PARM_P(i8*) #1

declare dso_local i8* @tree_cons(i8*, i8*, i8*) #1

declare dso_local i64 @DECL_NONCONVERTING_P(i8*) #1

declare dso_local i64 @TREE_CODE(i8*) #1

declare dso_local %struct.z_candidate* @add_template_candidate(%struct.z_candidate**, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32) #1

declare dso_local i8* @TYPE_BINFO(i8*) #1

declare dso_local %struct.z_candidate* @add_function_candidate(%struct.z_candidate**, i8*, i8*, i8*, i8*, i8*, i32) #1

declare dso_local %struct.TYPE_10__* @build_identity_conv(i8*, i8*) #1

declare dso_local i8* @OVL_NEXT(i8*) #1

declare dso_local i8* @build_this(i8*) #1

declare dso_local i8* @TREE_PURPOSE(i8*) #1

declare dso_local i8* @TREE_VALUE(i8*) #1

declare dso_local %struct.TYPE_10__* @implicit_conversion(i8*, i8*, i32, i32, i32) #1

declare dso_local i8* @TREE_CHAIN(i8*) #1

declare dso_local %struct.z_candidate* @splice_viable(%struct.z_candidate*, i32, i32*) #1

declare dso_local %struct.z_candidate* @tourney(%struct.z_candidate*) #1

declare dso_local i32 @error(i8*, i8*, i8*) #1

declare dso_local i32 @print_z_candidates(%struct.z_candidate*) #1

declare dso_local %struct.TYPE_10__* @build_ambiguous_conv(i8*, i8*) #1

declare dso_local i32 @any_strictly_viable(%struct.z_candidate*) #1

declare dso_local %struct.TYPE_10__* @build_conv(i32, i8*, %struct.TYPE_10__*) #1

declare dso_local i64 @DECL_CONSTRUCTOR_P(i8*) #1

declare dso_local i8* @non_reference(i8*) #1

declare dso_local %struct.TYPE_10__* @merge_conversion_sequences(%struct.TYPE_10__*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
