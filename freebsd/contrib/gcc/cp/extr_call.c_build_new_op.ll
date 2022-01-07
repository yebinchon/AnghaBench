; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_call.c_build_new_op.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_call.c_build_new_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.z_candidate = type { i64, %struct.TYPE_6__**, %struct.candidate_warning* }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.candidate_warning = type { i32, %struct.candidate_warning* }

@NULL_TREE = common dso_local global i64 0, align 8
@NOP_EXPR = common dso_local global i32 0, align 4
@error_mark_node = common dso_local global i64 0, align 8
@VOID_TYPE = common dso_local global i64 0, align 8
@integer_zero_node = common dso_local global i64 0, align 8
@pedantic = common dso_local global i32 0, align 4
@LOOKUP_COMPLAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"no %<%D(int)%> declared for postfix %qs, trying prefix operator instead\00", align 1
@operator_name_info = common dso_local global %struct.TYPE_7__* null, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"no match\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"ambiguous overload\00", align 1
@FUNCTION_DECL = common dso_local global i64 0, align 8
@LOOKUP_NORMAL = common dso_local global i32 0, align 4
@ENUMERAL_TYPE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [33 x i8] c"comparison between %q#T and %q#T\00", align 1
@ck_ref_bind = common dso_local global i64 0, align 8
@conversion_obstack = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"unary *\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @build_new_op(i32 %0, i32 %1, i64 %2, i64 %3, i64 %4, i32* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.z_candidate*, align 8
  %15 = alloca %struct.z_candidate*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca [3 x i64], align 16
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_6__*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca %struct.candidate_warning*, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i32* %5, i32** %13, align 8
  store %struct.z_candidate* null, %struct.z_candidate** %14, align 8
  %28 = load i64, i64* @NULL_TREE, align 8
  store i64 %28, i64* %19, align 8
  store i32 0, i32* %20, align 4
  %29 = load i32, i32* @NOP_EXPR, align 4
  store i32 %29, i32* %21, align 4
  %30 = load i64, i64* %10, align 8
  %31 = call i64 @error_operand_p(i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %6
  %34 = load i64, i64* %11, align 8
  %35 = call i64 @error_operand_p(i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = load i64, i64* %12, align 8
  %39 = call i64 @error_operand_p(i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %37, %33, %6
  %42 = load i64, i64* @error_mark_node, align 8
  store i64 %42, i64* %7, align 8
  br label %481

43:                                               ; preds = %37
  %44 = load i32, i32* %8, align 4
  %45 = icmp eq i32 %44, 147
  br i1 %45, label %46, label %53

46:                                               ; preds = %43
  %47 = load i64, i64* %12, align 8
  %48 = call i64 @TREE_CODE(i64 %47)
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %21, align 4
  %50 = load i64, i64* @NULL_TREE, align 8
  store i64 %50, i64* %12, align 8
  %51 = load i32, i32* %21, align 4
  %52 = call i64 @ansi_assopname(i32 %51)
  store i64 %52, i64* %17, align 8
  br label %56

53:                                               ; preds = %43
  %54 = load i32, i32* %8, align 4
  %55 = call i64 @ansi_opname(i32 %54)
  store i64 %55, i64* %17, align 8
  br label %56

56:                                               ; preds = %53, %46
  %57 = load i64, i64* %10, align 8
  %58 = call i64 @prep_operand(i64 %57)
  store i64 %58, i64* %10, align 8
  %59 = load i32, i32* %8, align 4
  switch i32 %59, label %66 [
    i32 144, label %60
    i32 128, label %60
    i32 129, label %60
    i32 160, label %60
    i32 164, label %62
  ]

60:                                               ; preds = %56, %56, %56, %56
  %61 = call i32 (...) @gcc_unreachable()
  br label %62

62:                                               ; preds = %56, %60
  %63 = load i64, i64* %10, align 8
  %64 = load i64, i64* %11, align 8
  %65 = call i64 @build_object_call(i64 %63, i64 %64)
  store i64 %65, i64* %7, align 8
  br label %481

66:                                               ; preds = %56
  br label %67

67:                                               ; preds = %66
  %68 = load i64, i64* %11, align 8
  %69 = call i64 @prep_operand(i64 %68)
  store i64 %69, i64* %11, align 8
  %70 = load i64, i64* %12, align 8
  %71 = call i64 @prep_operand(i64 %70)
  store i64 %71, i64* %12, align 8
  %72 = load i32, i32* %8, align 4
  %73 = icmp eq i32 %72, 161
  br i1 %73, label %74, label %102

74:                                               ; preds = %67
  %75 = load i64, i64* %11, align 8
  %76 = load i64, i64* @NULL_TREE, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %100, label %78

78:                                               ; preds = %74
  %79 = load i64, i64* %11, align 8
  %80 = call i64 @TREE_TYPE(i64 %79)
  %81 = call i64 @TREE_CODE(i64 %80)
  %82 = load i64, i64* @VOID_TYPE, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %100, label %84

84:                                               ; preds = %78
  %85 = load i64, i64* %12, align 8
  %86 = call i64 @TREE_TYPE(i64 %85)
  %87 = call i64 @TREE_CODE(i64 %86)
  %88 = load i64, i64* @VOID_TYPE, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %100, label %90

90:                                               ; preds = %84
  %91 = load i64, i64* %11, align 8
  %92 = call i64 @TREE_TYPE(i64 %91)
  %93 = call i32 @IS_OVERLOAD_TYPE(i64 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %101, label %95

95:                                               ; preds = %90
  %96 = load i64, i64* %12, align 8
  %97 = call i64 @TREE_TYPE(i64 %96)
  %98 = call i32 @IS_OVERLOAD_TYPE(i64 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %95, %84, %78, %74
  br label %439

101:                                              ; preds = %95, %90
  br label %117

102:                                              ; preds = %67
  %103 = load i64, i64* %10, align 8
  %104 = call i64 @TREE_TYPE(i64 %103)
  %105 = call i32 @IS_OVERLOAD_TYPE(i64 %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %116, label %107

107:                                              ; preds = %102
  %108 = load i64, i64* %11, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %107
  %111 = load i64, i64* %11, align 8
  %112 = call i64 @TREE_TYPE(i64 %111)
  %113 = call i32 @IS_OVERLOAD_TYPE(i64 %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %110, %107
  br label %439

116:                                              ; preds = %110, %102
  br label %117

117:                                              ; preds = %116, %101
  %118 = load i32, i32* %8, align 4
  %119 = icmp eq i32 %118, 140
  br i1 %119, label %123, label %120

120:                                              ; preds = %117
  %121 = load i32, i32* %8, align 4
  %122 = icmp eq i32 %121, 141
  br i1 %122, label %123, label %125

123:                                              ; preds = %120, %117
  %124 = load i64, i64* @integer_zero_node, align 8
  store i64 %124, i64* %11, align 8
  br label %125

125:                                              ; preds = %123, %120
  %126 = load i64, i64* @NULL_TREE, align 8
  store i64 %126, i64* %16, align 8
  %127 = load i64, i64* %12, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %125
  %130 = load i64, i64* @NULL_TREE, align 8
  %131 = load i64, i64* %12, align 8
  %132 = load i64, i64* %16, align 8
  %133 = call i64 @tree_cons(i64 %130, i64 %131, i64 %132)
  store i64 %133, i64* %16, align 8
  br label %134

134:                                              ; preds = %129, %125
  %135 = load i64, i64* %11, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %142

137:                                              ; preds = %134
  %138 = load i64, i64* @NULL_TREE, align 8
  %139 = load i64, i64* %11, align 8
  %140 = load i64, i64* %16, align 8
  %141 = call i64 @tree_cons(i64 %138, i64 %139, i64 %140)
  store i64 %141, i64* %16, align 8
  br label %142

142:                                              ; preds = %137, %134
  %143 = load i64, i64* @NULL_TREE, align 8
  %144 = load i64, i64* %10, align 8
  %145 = load i64, i64* %16, align 8
  %146 = call i64 @tree_cons(i64 %143, i64 %144, i64 %145)
  store i64 %146, i64* %16, align 8
  %147 = call i8* @conversion_obstack_alloc(i32 0)
  store i8* %147, i8** %23, align 8
  %148 = load i64, i64* %17, align 8
  %149 = load i64, i64* %16, align 8
  %150 = call i32 @lookup_function_nonclass(i64 %148, i64 %149, i32 1)
  %151 = load i64, i64* %16, align 8
  %152 = load i64, i64* @NULL_TREE, align 8
  %153 = load i64, i64* @NULL_TREE, align 8
  %154 = load i64, i64* @NULL_TREE, align 8
  %155 = load i32, i32* %9, align 4
  %156 = call i32 @add_candidates(i32 %150, i64 %151, i64 %152, i32 0, i64 %153, i64 %154, i32 %155, %struct.z_candidate** %14)
  %157 = load i64, i64* %10, align 8
  %158 = call i64 @TREE_TYPE(i64 %157)
  %159 = call i64 @CLASS_TYPE_P(i64 %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %187

161:                                              ; preds = %142
  %162 = load i64, i64* %10, align 8
  %163 = call i64 @TREE_TYPE(i64 %162)
  %164 = load i64, i64* %17, align 8
  %165 = call i64 @lookup_fnfields(i64 %163, i64 %164, i32 1)
  store i64 %165, i64* %26, align 8
  %166 = load i64, i64* %26, align 8
  %167 = load i64, i64* @error_mark_node, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %171

169:                                              ; preds = %161
  %170 = load i64, i64* @error_mark_node, align 8
  store i64 %170, i64* %19, align 8
  br label %428

171:                                              ; preds = %161
  %172 = load i64, i64* %26, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %186

174:                                              ; preds = %171
  %175 = load i64, i64* %26, align 8
  %176 = call i32 @BASELINK_FUNCTIONS(i64 %175)
  %177 = load i64, i64* %16, align 8
  %178 = load i64, i64* @NULL_TREE, align 8
  %179 = load i64, i64* %26, align 8
  %180 = call i64 @BASELINK_BINFO(i64 %179)
  %181 = load i64, i64* %10, align 8
  %182 = call i64 @TREE_TYPE(i64 %181)
  %183 = call i64 @TYPE_BINFO(i64 %182)
  %184 = load i32, i32* %9, align 4
  %185 = call i32 @add_candidates(i32 %176, i64 %177, i64 %178, i32 0, i64 %180, i64 %183, i32 %184, %struct.z_candidate** %14)
  br label %186

186:                                              ; preds = %174, %171
  br label %187

187:                                              ; preds = %186, %142
  %188 = load i32, i32* %8, align 4
  %189 = icmp eq i32 %188, 161
  br i1 %189, label %190, label %197

190:                                              ; preds = %187
  %191 = load i64, i64* %11, align 8
  %192 = getelementptr inbounds [3 x i64], [3 x i64]* %18, i64 0, i64 0
  store i64 %191, i64* %192, align 16
  %193 = load i64, i64* %12, align 8
  %194 = getelementptr inbounds [3 x i64], [3 x i64]* %18, i64 0, i64 1
  store i64 %193, i64* %194, align 8
  %195 = load i64, i64* %10, align 8
  %196 = getelementptr inbounds [3 x i64], [3 x i64]* %18, i64 0, i64 2
  store i64 %195, i64* %196, align 16
  br label %204

197:                                              ; preds = %187
  %198 = load i64, i64* %10, align 8
  %199 = getelementptr inbounds [3 x i64], [3 x i64]* %18, i64 0, i64 0
  store i64 %198, i64* %199, align 16
  %200 = load i64, i64* %11, align 8
  %201 = getelementptr inbounds [3 x i64], [3 x i64]* %18, i64 0, i64 1
  store i64 %200, i64* %201, align 8
  %202 = load i64, i64* @NULL_TREE, align 8
  %203 = getelementptr inbounds [3 x i64], [3 x i64]* %18, i64 0, i64 2
  store i64 %202, i64* %203, align 16
  br label %204

204:                                              ; preds = %197, %190
  %205 = load i32, i32* %8, align 4
  %206 = load i32, i32* %21, align 4
  %207 = load i64, i64* %17, align 8
  %208 = getelementptr inbounds [3 x i64], [3 x i64]* %18, i64 0, i64 0
  %209 = load i32, i32* %9, align 4
  %210 = call i32 @add_builtin_candidates(%struct.z_candidate** %14, i32 %205, i32 %206, i64 %207, i64* %208, i32 %209)
  %211 = load i32, i32* %8, align 4
  switch i32 %211, label %213 [
    i32 162, label %212
    i32 170, label %212
  ]

212:                                              ; preds = %204, %204
  store i32 1, i32* %24, align 4
  br label %215

213:                                              ; preds = %204
  %214 = load i32, i32* @pedantic, align 4
  store i32 %214, i32* %24, align 4
  br label %215

215:                                              ; preds = %213, %212
  %216 = load %struct.z_candidate*, %struct.z_candidate** %14, align 8
  %217 = load i32, i32* %24, align 4
  %218 = call %struct.z_candidate* @splice_viable(%struct.z_candidate* %216, i32 %217, i32* %25)
  store %struct.z_candidate* %218, %struct.z_candidate** %14, align 8
  %219 = load i32, i32* %25, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %269, label %221

221:                                              ; preds = %215
  %222 = load i32, i32* %8, align 4
  switch i32 %222, label %252 [
    i32 140, label %223
    i32 141, label %223
    i32 170, label %250
    i32 162, label %250
    i32 163, label %250
  ]

223:                                              ; preds = %221, %221
  %224 = load i32, i32* %9, align 4
  %225 = load i32, i32* @LOOKUP_COMPLAIN, align 4
  %226 = and i32 %224, %225
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %237

228:                                              ; preds = %223
  %229 = load i64, i64* %17, align 8
  %230 = load %struct.TYPE_7__*, %struct.TYPE_7__** @operator_name_info, align 8
  %231 = load i32, i32* %8, align 4
  %232 = zext i32 %231 to i64
  %233 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %230, i64 %232
  %234 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = call i32 @pedwarn(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i64 %229, i32 %235)
  br label %237

237:                                              ; preds = %228, %223
  %238 = load i32, i32* %8, align 4
  %239 = icmp eq i32 %238, 140
  br i1 %239, label %240, label %241

240:                                              ; preds = %237
  store i32 138, i32* %8, align 4
  br label %242

241:                                              ; preds = %237
  store i32 139, i32* %8, align 4
  br label %242

242:                                              ; preds = %241, %240
  %243 = load i32, i32* %8, align 4
  %244 = load i32, i32* %9, align 4
  %245 = load i64, i64* %10, align 8
  %246 = load i64, i64* @NULL_TREE, align 8
  %247 = load i64, i64* @NULL_TREE, align 8
  %248 = load i32*, i32** %13, align 8
  %249 = call i64 @build_new_op(i32 %243, i32 %244, i64 %245, i64 %246, i64 %247, i32* %248)
  store i64 %249, i64* %19, align 8
  br label %268

250:                                              ; preds = %221, %221, %221
  %251 = load i64, i64* @NULL_TREE, align 8
  store i64 %251, i64* %19, align 8
  store i32 1, i32* %20, align 4
  br label %268

252:                                              ; preds = %221
  %253 = load i32, i32* %9, align 4
  %254 = load i32, i32* @LOOKUP_COMPLAIN, align 4
  %255 = and i32 %253, %254
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %266

257:                                              ; preds = %252
  %258 = load i32, i32* %8, align 4
  %259 = load i32, i32* %21, align 4
  %260 = load i64, i64* %10, align 8
  %261 = load i64, i64* %11, align 8
  %262 = load i64, i64* %12, align 8
  %263 = call i32 @op_error(i32 %258, i32 %259, i64 %260, i64 %261, i64 %262, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %264 = load %struct.z_candidate*, %struct.z_candidate** %14, align 8
  %265 = call i32 @print_z_candidates(%struct.z_candidate* %264)
  br label %266

266:                                              ; preds = %257, %252
  %267 = load i64, i64* @error_mark_node, align 8
  store i64 %267, i64* %19, align 8
  br label %268

268:                                              ; preds = %266, %250, %242
  br label %427

269:                                              ; preds = %215
  %270 = load %struct.z_candidate*, %struct.z_candidate** %14, align 8
  %271 = call %struct.z_candidate* @tourney(%struct.z_candidate* %270)
  store %struct.z_candidate* %271, %struct.z_candidate** %15, align 8
  %272 = load %struct.z_candidate*, %struct.z_candidate** %15, align 8
  %273 = icmp eq %struct.z_candidate* %272, null
  br i1 %273, label %274, label %290

274:                                              ; preds = %269
  %275 = load i32, i32* %9, align 4
  %276 = load i32, i32* @LOOKUP_COMPLAIN, align 4
  %277 = and i32 %275, %276
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %288

279:                                              ; preds = %274
  %280 = load i32, i32* %8, align 4
  %281 = load i32, i32* %21, align 4
  %282 = load i64, i64* %10, align 8
  %283 = load i64, i64* %11, align 8
  %284 = load i64, i64* %12, align 8
  %285 = call i32 @op_error(i32 %280, i32 %281, i64 %282, i64 %283, i64 %284, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %286 = load %struct.z_candidate*, %struct.z_candidate** %14, align 8
  %287 = call i32 @print_z_candidates(%struct.z_candidate* %286)
  br label %288

288:                                              ; preds = %279, %274
  %289 = load i64, i64* @error_mark_node, align 8
  store i64 %289, i64* %19, align 8
  br label %426

290:                                              ; preds = %269
  %291 = load %struct.z_candidate*, %struct.z_candidate** %15, align 8
  %292 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %291, i32 0, i32 0
  %293 = load i64, i64* %292, align 8
  %294 = call i64 @TREE_CODE(i64 %293)
  %295 = load i64, i64* @FUNCTION_DECL, align 8
  %296 = icmp eq i64 %294, %295
  br i1 %296, label %297, label %306

297:                                              ; preds = %290
  %298 = load i32*, i32** %13, align 8
  %299 = icmp ne i32* %298, null
  br i1 %299, label %300, label %302

300:                                              ; preds = %297
  %301 = load i32*, i32** %13, align 8
  store i32 1, i32* %301, align 4
  br label %302

302:                                              ; preds = %300, %297
  %303 = load %struct.z_candidate*, %struct.z_candidate** %15, align 8
  %304 = load i32, i32* @LOOKUP_NORMAL, align 4
  %305 = call i64 @build_over_call(%struct.z_candidate* %303, i32 %304)
  store i64 %305, i64* %19, align 8
  br label %425

306:                                              ; preds = %290
  %307 = load %struct.z_candidate*, %struct.z_candidate** %15, align 8
  %308 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %307, i32 0, i32 2
  %309 = load %struct.candidate_warning*, %struct.candidate_warning** %308, align 8
  %310 = icmp ne %struct.candidate_warning* %309, null
  br i1 %310, label %311, label %329

311:                                              ; preds = %306
  %312 = load %struct.z_candidate*, %struct.z_candidate** %15, align 8
  %313 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %312, i32 0, i32 2
  %314 = load %struct.candidate_warning*, %struct.candidate_warning** %313, align 8
  store %struct.candidate_warning* %314, %struct.candidate_warning** %27, align 8
  br label %315

315:                                              ; preds = %324, %311
  %316 = load %struct.candidate_warning*, %struct.candidate_warning** %27, align 8
  %317 = icmp ne %struct.candidate_warning* %316, null
  br i1 %317, label %318, label %328

318:                                              ; preds = %315
  %319 = load %struct.z_candidate*, %struct.z_candidate** %15, align 8
  %320 = load %struct.candidate_warning*, %struct.candidate_warning** %27, align 8
  %321 = getelementptr inbounds %struct.candidate_warning, %struct.candidate_warning* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 8
  %323 = call i32 @joust(%struct.z_candidate* %319, i32 %322, i32 1)
  br label %324

324:                                              ; preds = %318
  %325 = load %struct.candidate_warning*, %struct.candidate_warning** %27, align 8
  %326 = getelementptr inbounds %struct.candidate_warning, %struct.candidate_warning* %325, i32 0, i32 1
  %327 = load %struct.candidate_warning*, %struct.candidate_warning** %326, align 8
  store %struct.candidate_warning* %327, %struct.candidate_warning** %27, align 8
  br label %315

328:                                              ; preds = %315
  br label %329

329:                                              ; preds = %328, %306
  %330 = load i32, i32* %8, align 4
  switch i32 %330, label %358 [
    i32 157, label %331
    i32 152, label %331
    i32 158, label %331
    i32 154, label %331
    i32 159, label %331
    i32 143, label %331
  ]

331:                                              ; preds = %329, %329, %329, %329, %329, %329
  %332 = load i64, i64* %10, align 8
  %333 = call i64 @TREE_TYPE(i64 %332)
  %334 = call i64 @TREE_CODE(i64 %333)
  %335 = load i64, i64* @ENUMERAL_TYPE, align 8
  %336 = icmp eq i64 %334, %335
  br i1 %336, label %337, label %357

337:                                              ; preds = %331
  %338 = load i64, i64* %11, align 8
  %339 = call i64 @TREE_TYPE(i64 %338)
  %340 = call i64 @TREE_CODE(i64 %339)
  %341 = load i64, i64* @ENUMERAL_TYPE, align 8
  %342 = icmp eq i64 %340, %341
  br i1 %342, label %343, label %357

343:                                              ; preds = %337
  %344 = load i64, i64* %10, align 8
  %345 = call i64 @TREE_TYPE(i64 %344)
  %346 = call i32 @TYPE_MAIN_VARIANT(i64 %345)
  %347 = load i64, i64* %11, align 8
  %348 = call i64 @TREE_TYPE(i64 %347)
  %349 = call i32 @TYPE_MAIN_VARIANT(i64 %348)
  %350 = icmp ne i32 %346, %349
  br i1 %350, label %351, label %357

351:                                              ; preds = %343
  %352 = load i64, i64* %10, align 8
  %353 = call i64 @TREE_TYPE(i64 %352)
  %354 = load i64, i64* %11, align 8
  %355 = call i64 @TREE_TYPE(i64 %354)
  %356 = call i32 @warning(i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i64 %353, i64 %355)
  br label %357

357:                                              ; preds = %351, %343, %337, %331
  br label %359

358:                                              ; preds = %329
  br label %359

359:                                              ; preds = %358, %357
  %360 = load %struct.z_candidate*, %struct.z_candidate** %15, align 8
  %361 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %360, i32 0, i32 1
  %362 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %361, align 8
  %363 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %362, i64 0
  %364 = load %struct.TYPE_6__*, %struct.TYPE_6__** %363, align 8
  store %struct.TYPE_6__* %364, %struct.TYPE_6__** %22, align 8
  %365 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %366 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %365, i32 0, i32 0
  %367 = load i64, i64* %366, align 8
  %368 = load i64, i64* @ck_ref_bind, align 8
  %369 = icmp eq i64 %367, %368
  br i1 %369, label %370, label %375

370:                                              ; preds = %359
  %371 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %372 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %371, i32 0, i32 1
  %373 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %372, i32 0, i32 0
  %374 = load %struct.TYPE_6__*, %struct.TYPE_6__** %373, align 8
  store %struct.TYPE_6__* %374, %struct.TYPE_6__** %22, align 8
  br label %375

375:                                              ; preds = %370, %359
  %376 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %377 = load i64, i64* %10, align 8
  %378 = call i64 @convert_like(%struct.TYPE_6__* %376, i64 %377)
  store i64 %378, i64* %10, align 8
  %379 = load i64, i64* %11, align 8
  %380 = icmp ne i64 %379, 0
  br i1 %380, label %381, label %401

381:                                              ; preds = %375
  %382 = load %struct.z_candidate*, %struct.z_candidate** %15, align 8
  %383 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %382, i32 0, i32 1
  %384 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %383, align 8
  %385 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %384, i64 1
  %386 = load %struct.TYPE_6__*, %struct.TYPE_6__** %385, align 8
  store %struct.TYPE_6__* %386, %struct.TYPE_6__** %22, align 8
  %387 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %388 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %387, i32 0, i32 0
  %389 = load i64, i64* %388, align 8
  %390 = load i64, i64* @ck_ref_bind, align 8
  %391 = icmp eq i64 %389, %390
  br i1 %391, label %392, label %397

392:                                              ; preds = %381
  %393 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %394 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %393, i32 0, i32 1
  %395 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %394, i32 0, i32 0
  %396 = load %struct.TYPE_6__*, %struct.TYPE_6__** %395, align 8
  store %struct.TYPE_6__* %396, %struct.TYPE_6__** %22, align 8
  br label %397

397:                                              ; preds = %392, %381
  %398 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %399 = load i64, i64* %11, align 8
  %400 = call i64 @convert_like(%struct.TYPE_6__* %398, i64 %399)
  store i64 %400, i64* %11, align 8
  br label %401

401:                                              ; preds = %397, %375
  %402 = load i64, i64* %12, align 8
  %403 = icmp ne i64 %402, 0
  br i1 %403, label %404, label %424

404:                                              ; preds = %401
  %405 = load %struct.z_candidate*, %struct.z_candidate** %15, align 8
  %406 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %405, i32 0, i32 1
  %407 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %406, align 8
  %408 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %407, i64 2
  %409 = load %struct.TYPE_6__*, %struct.TYPE_6__** %408, align 8
  store %struct.TYPE_6__* %409, %struct.TYPE_6__** %22, align 8
  %410 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %411 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %410, i32 0, i32 0
  %412 = load i64, i64* %411, align 8
  %413 = load i64, i64* @ck_ref_bind, align 8
  %414 = icmp eq i64 %412, %413
  br i1 %414, label %415, label %420

415:                                              ; preds = %404
  %416 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %417 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %416, i32 0, i32 1
  %418 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %417, i32 0, i32 0
  %419 = load %struct.TYPE_6__*, %struct.TYPE_6__** %418, align 8
  store %struct.TYPE_6__* %419, %struct.TYPE_6__** %22, align 8
  br label %420

420:                                              ; preds = %415, %404
  %421 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %422 = load i64, i64* %12, align 8
  %423 = call i64 @convert_like(%struct.TYPE_6__* %421, i64 %422)
  store i64 %423, i64* %12, align 8
  br label %424

424:                                              ; preds = %420, %401
  br label %425

425:                                              ; preds = %424, %302
  br label %426

426:                                              ; preds = %425, %288
  br label %427

427:                                              ; preds = %426, %268
  br label %428

428:                                              ; preds = %427, %169
  %429 = load i8*, i8** %23, align 8
  %430 = call i32 @obstack_free(i32* @conversion_obstack, i8* %429)
  %431 = load i64, i64* %19, align 8
  %432 = icmp ne i64 %431, 0
  br i1 %432, label %436, label %433

433:                                              ; preds = %428
  %434 = load i32, i32* %20, align 4
  %435 = icmp ne i32 %434, 0
  br i1 %435, label %436, label %438

436:                                              ; preds = %433, %428
  %437 = load i64, i64* %19, align 8
  store i64 %437, i64* %7, align 8
  br label %481

438:                                              ; preds = %433
  br label %439

439:                                              ; preds = %438, %115, %100
  %440 = load i32, i32* %8, align 4
  switch i32 %440, label %477 [
    i32 147, label %441
    i32 155, label %446
    i32 142, label %449
    i32 149, label %449
    i32 146, label %449
    i32 135, label %449
    i32 157, label %449
    i32 152, label %449
    i32 158, label %449
    i32 154, label %449
    i32 159, label %449
    i32 143, label %449
    i32 151, label %449
    i32 148, label %449
    i32 153, label %449
    i32 136, label %449
    i32 134, label %449
    i32 168, label %449
    i32 167, label %449
    i32 165, label %449
    i32 133, label %449
    i32 131, label %449
    i32 130, label %454
    i32 145, label %454
    i32 166, label %454
    i32 132, label %454
    i32 138, label %454
    i32 140, label %454
    i32 139, label %454
    i32 141, label %454
    i32 137, label %454
    i32 156, label %454
    i32 169, label %461
    i32 161, label %465
    i32 150, label %470
    i32 170, label %475
    i32 163, label %475
    i32 162, label %475
  ]

441:                                              ; preds = %439
  %442 = load i64, i64* %10, align 8
  %443 = load i32, i32* %21, align 4
  %444 = load i64, i64* %11, align 8
  %445 = call i64 @build_modify_expr(i64 %442, i32 %443, i64 %444)
  store i64 %445, i64* %7, align 8
  br label %481

446:                                              ; preds = %439
  %447 = load i64, i64* %10, align 8
  %448 = call i64 @build_indirect_ref(i64 %447, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  store i64 %448, i64* %7, align 8
  br label %481

449:                                              ; preds = %439, %439, %439, %439, %439, %439, %439, %439, %439, %439, %439, %439, %439, %439, %439, %439, %439, %439, %439, %439
  %450 = load i32, i32* %8, align 4
  %451 = load i64, i64* %10, align 8
  %452 = load i64, i64* %11, align 8
  %453 = call i64 @cp_build_binary_op(i32 %450, i64 %451, i64 %452)
  store i64 %453, i64* %7, align 8
  br label %481

454:                                              ; preds = %439, %439, %439, %439, %439, %439, %439, %439, %439, %439
  %455 = load i32, i32* %8, align 4
  %456 = load i64, i64* %10, align 8
  %457 = load %struct.z_candidate*, %struct.z_candidate** %14, align 8
  %458 = icmp ne %struct.z_candidate* %457, null
  %459 = zext i1 %458 to i32
  %460 = call i64 @build_unary_op(i32 %455, i64 %456, i32 %459)
  store i64 %460, i64* %7, align 8
  br label %481

461:                                              ; preds = %439
  %462 = load i64, i64* %10, align 8
  %463 = load i64, i64* %11, align 8
  %464 = call i64 @build_array_ref(i64 %462, i64 %463)
  store i64 %464, i64* %7, align 8
  br label %481

465:                                              ; preds = %439
  %466 = load i64, i64* %10, align 8
  %467 = load i64, i64* %11, align 8
  %468 = load i64, i64* %12, align 8
  %469 = call i64 @build_conditional_expr(i64 %466, i64 %467, i64 %468)
  store i64 %469, i64* %7, align 8
  br label %481

470:                                              ; preds = %439
  %471 = load i64, i64* %10, align 8
  %472 = call i64 @build_indirect_ref(i64 %471, i8* null)
  %473 = load i64, i64* %11, align 8
  %474 = call i64 @build_m_component_ref(i64 %472, i64 %473)
  store i64 %474, i64* %7, align 8
  br label %481

475:                                              ; preds = %439, %439, %439
  %476 = load i64, i64* @NULL_TREE, align 8
  store i64 %476, i64* %7, align 8
  br label %481

477:                                              ; preds = %439
  %478 = call i32 (...) @gcc_unreachable()
  br label %479

479:                                              ; preds = %477
  %480 = load i64, i64* @NULL_TREE, align 8
  store i64 %480, i64* %7, align 8
  br label %481

481:                                              ; preds = %479, %475, %470, %465, %461, %454, %449, %446, %441, %436, %62, %41
  %482 = load i64, i64* %7, align 8
  ret i64 %482
}

declare dso_local i64 @error_operand_p(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @ansi_assopname(i32) #1

declare dso_local i64 @ansi_opname(i32) #1

declare dso_local i64 @prep_operand(i64) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i64 @build_object_call(i64, i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i32 @IS_OVERLOAD_TYPE(i64) #1

declare dso_local i64 @tree_cons(i64, i64, i64) #1

declare dso_local i8* @conversion_obstack_alloc(i32) #1

declare dso_local i32 @add_candidates(i32, i64, i64, i32, i64, i64, i32, %struct.z_candidate**) #1

declare dso_local i32 @lookup_function_nonclass(i64, i64, i32) #1

declare dso_local i64 @CLASS_TYPE_P(i64) #1

declare dso_local i64 @lookup_fnfields(i64, i64, i32) #1

declare dso_local i32 @BASELINK_FUNCTIONS(i64) #1

declare dso_local i64 @BASELINK_BINFO(i64) #1

declare dso_local i64 @TYPE_BINFO(i64) #1

declare dso_local i32 @add_builtin_candidates(%struct.z_candidate**, i32, i32, i64, i64*, i32) #1

declare dso_local %struct.z_candidate* @splice_viable(%struct.z_candidate*, i32, i32*) #1

declare dso_local i32 @pedwarn(i8*, i64, i32) #1

declare dso_local i32 @op_error(i32, i32, i64, i64, i64, i8*) #1

declare dso_local i32 @print_z_candidates(%struct.z_candidate*) #1

declare dso_local %struct.z_candidate* @tourney(%struct.z_candidate*) #1

declare dso_local i64 @build_over_call(%struct.z_candidate*, i32) #1

declare dso_local i32 @joust(%struct.z_candidate*, i32, i32) #1

declare dso_local i32 @TYPE_MAIN_VARIANT(i64) #1

declare dso_local i32 @warning(i32, i8*, i64, i64) #1

declare dso_local i64 @convert_like(%struct.TYPE_6__*, i64) #1

declare dso_local i32 @obstack_free(i32*, i8*) #1

declare dso_local i64 @build_modify_expr(i64, i32, i64) #1

declare dso_local i64 @build_indirect_ref(i64, i8*) #1

declare dso_local i64 @cp_build_binary_op(i32, i64, i64) #1

declare dso_local i64 @build_unary_op(i32, i64, i32) #1

declare dso_local i64 @build_array_ref(i64, i64) #1

declare dso_local i64 @build_conditional_expr(i64, i64, i64) #1

declare dso_local i64 @build_m_component_ref(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
