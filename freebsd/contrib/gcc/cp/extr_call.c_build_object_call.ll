; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_call.c_build_object_call.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_call.c_build_object_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.z_candidate = type { i64, i32* }

@NULL_TREE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [91 x i8] c"pointer-to-member function %E cannot be called without an object; consider using .* or ->*\00", align 1
@error_mark_node = common dso_local global i64 0, align 8
@CALL_EXPR = common dso_local global i64 0, align 8
@TEMPLATE_DECL = common dso_local global i64 0, align 8
@LOOKUP_NORMAL = common dso_local global i32 0, align 4
@DEDUCE_CALL = common dso_local global i32 0, align 4
@POINTER_TYPE = common dso_local global i64 0, align 8
@FUNCTION_TYPE = common dso_local global i64 0, align 8
@REFERENCE_TYPE = common dso_local global i64 0, align 8
@pedantic = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"no match for call to %<(%T) (%A)%>\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"call of %<(%T) (%A)%> is ambiguous\00", align 1
@FUNCTION_DECL = common dso_local global i64 0, align 8
@conversion_obstack = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64)* @build_object_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @build_object_call(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.z_candidate*, align 8
  %7 = alloca %struct.z_candidate*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.z_candidate* null, %struct.z_candidate** %6, align 8
  %20 = load i64, i64* @NULL_TREE, align 8
  store i64 %20, i64* %10, align 8
  %21 = load i64, i64* %4, align 8
  %22 = call i64 @TREE_TYPE(i64 %21)
  store i64 %22, i64* %11, align 8
  %23 = load i64, i64* @NULL_TREE, align 8
  store i64 %23, i64* %13, align 8
  %24 = load i64, i64* %11, align 8
  %25 = call i64 @TYPE_PTRMEMFUNC_P(i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %2
  %28 = load i64, i64* %4, align 8
  %29 = call i32 (i8*, i64, ...) @error(i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str, i64 0, i64 0), i64 %28)
  %30 = load i64, i64* @error_mark_node, align 8
  store i64 %30, i64* %3, align 8
  br label %264

31:                                               ; preds = %2
  %32 = load i64, i64* %11, align 8
  %33 = call i64 @TYPE_BINFO(i64 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %31
  %36 = load i64, i64* %11, align 8
  %37 = call i64 @TYPE_BINFO(i64 %36)
  %38 = load i64, i64* @CALL_EXPR, align 8
  %39 = call i32 @ansi_opname(i64 %38)
  %40 = call i64 @lookup_fnfields(i64 %37, i32 %39, i32 1)
  store i64 %40, i64* %8, align 8
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* @error_mark_node, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %35
  %45 = load i64, i64* @error_mark_node, align 8
  store i64 %45, i64* %3, align 8
  br label %264

46:                                               ; preds = %35
  br label %49

47:                                               ; preds = %31
  %48 = load i64, i64* @NULL_TREE, align 8
  store i64 %48, i64* %8, align 8
  br label %49

49:                                               ; preds = %47, %46
  %50 = load i64, i64* %5, align 8
  %51 = call i64 @resolve_args(i64 %50)
  store i64 %51, i64* %5, align 8
  %52 = load i64, i64* %5, align 8
  %53 = load i64, i64* @error_mark_node, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load i64, i64* @error_mark_node, align 8
  store i64 %56, i64* %3, align 8
  br label %264

57:                                               ; preds = %49
  %58 = call i8* @conversion_obstack_alloc(i32 0)
  store i8* %58, i8** %14, align 8
  %59 = load i64, i64* %8, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %110

61:                                               ; preds = %57
  %62 = load i64, i64* %8, align 8
  %63 = call i32 @BASELINK_BINFO(i64 %62)
  %64 = call i64 @BINFO_TYPE(i32 %63)
  store i64 %64, i64* %15, align 8
  %65 = load i64, i64* @NULL_TREE, align 8
  %66 = load i64, i64* %4, align 8
  %67 = call i32 @build_this(i64 %66)
  %68 = load i64, i64* %5, align 8
  %69 = call i64 @tree_cons(i64 %65, i32 %67, i64 %68)
  store i64 %69, i64* %10, align 8
  %70 = load i64, i64* %8, align 8
  %71 = call i64 @BASELINK_FUNCTIONS(i64 %70)
  store i64 %71, i64* %8, align 8
  br label %72

72:                                               ; preds = %106, %61
  %73 = load i64, i64* %8, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %109

75:                                               ; preds = %72
  %76 = load i64, i64* %8, align 8
  %77 = call i64 @OVL_CURRENT(i64 %76)
  store i64 %77, i64* %16, align 8
  %78 = load i64, i64* %16, align 8
  %79 = call i64 @TREE_CODE(i64 %78)
  %80 = load i64, i64* @TEMPLATE_DECL, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %95

82:                                               ; preds = %75
  %83 = load i64, i64* %16, align 8
  %84 = load i64, i64* %15, align 8
  %85 = load i64, i64* @NULL_TREE, align 8
  %86 = load i64, i64* %10, align 8
  %87 = load i64, i64* @NULL_TREE, align 8
  %88 = load i64, i64* %11, align 8
  %89 = call i64 @TYPE_BINFO(i64 %88)
  %90 = load i64, i64* %11, align 8
  %91 = call i64 @TYPE_BINFO(i64 %90)
  %92 = load i32, i32* @LOOKUP_NORMAL, align 4
  %93 = load i32, i32* @DEDUCE_CALL, align 4
  %94 = call i32 @add_template_candidate(%struct.z_candidate** %6, i64 %83, i64 %84, i64 %85, i64 %86, i64 %87, i64 %89, i64 %91, i32 %92, i32 %93)
  br label %105

95:                                               ; preds = %75
  %96 = load i64, i64* %16, align 8
  %97 = load i64, i64* %15, align 8
  %98 = load i64, i64* %10, align 8
  %99 = load i64, i64* %11, align 8
  %100 = call i64 @TYPE_BINFO(i64 %99)
  %101 = load i64, i64* %11, align 8
  %102 = call i64 @TYPE_BINFO(i64 %101)
  %103 = load i32, i32* @LOOKUP_NORMAL, align 4
  %104 = call i32 @add_function_candidate(%struct.z_candidate** %6, i64 %96, i64 %97, i64 %98, i64 %100, i64 %102, i32 %103)
  br label %105

105:                                              ; preds = %95, %82
  br label %106

106:                                              ; preds = %105
  %107 = load i64, i64* %8, align 8
  %108 = call i64 @OVL_NEXT(i64 %107)
  store i64 %108, i64* %8, align 8
  br label %72

109:                                              ; preds = %72
  br label %110

110:                                              ; preds = %109, %57
  %111 = load i64, i64* %11, align 8
  %112 = call i64 @lookup_conversions(i64 %111)
  store i64 %112, i64* %9, align 8
  br label %113

113:                                              ; preds = %194, %110
  %114 = load i64, i64* %9, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %197

116:                                              ; preds = %113
  %117 = load i64, i64* %9, align 8
  %118 = call i64 @TREE_VALUE(i64 %117)
  store i64 %118, i64* %17, align 8
  %119 = load i64, i64* %17, align 8
  %120 = call i64 @OVL_CURRENT(i64 %119)
  %121 = call i64 @TREE_TYPE(i64 %120)
  %122 = call i64 @TREE_TYPE(i64 %121)
  store i64 %122, i64* %18, align 8
  %123 = load i64, i64* %18, align 8
  %124 = call i64 @TREE_CODE(i64 %123)
  %125 = load i64, i64* @POINTER_TYPE, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %133

127:                                              ; preds = %116
  %128 = load i64, i64* %18, align 8
  %129 = call i64 @TREE_TYPE(i64 %128)
  %130 = call i64 @TREE_CODE(i64 %129)
  %131 = load i64, i64* @FUNCTION_TYPE, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %162, label %133

133:                                              ; preds = %127, %116
  %134 = load i64, i64* %18, align 8
  %135 = call i64 @TREE_CODE(i64 %134)
  %136 = load i64, i64* @REFERENCE_TYPE, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %144

138:                                              ; preds = %133
  %139 = load i64, i64* %18, align 8
  %140 = call i64 @TREE_TYPE(i64 %139)
  %141 = call i64 @TREE_CODE(i64 %140)
  %142 = load i64, i64* @FUNCTION_TYPE, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %162, label %144

144:                                              ; preds = %138, %133
  %145 = load i64, i64* %18, align 8
  %146 = call i64 @TREE_CODE(i64 %145)
  %147 = load i64, i64* @REFERENCE_TYPE, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %193

149:                                              ; preds = %144
  %150 = load i64, i64* %18, align 8
  %151 = call i64 @TREE_TYPE(i64 %150)
  %152 = call i64 @TREE_CODE(i64 %151)
  %153 = load i64, i64* @POINTER_TYPE, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %193

155:                                              ; preds = %149
  %156 = load i64, i64* %18, align 8
  %157 = call i64 @TREE_TYPE(i64 %156)
  %158 = call i64 @TREE_TYPE(i64 %157)
  %159 = call i64 @TREE_CODE(i64 %158)
  %160 = load i64, i64* @FUNCTION_TYPE, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %193

162:                                              ; preds = %155, %138, %127
  br label %163

163:                                              ; preds = %189, %162
  %164 = load i64, i64* %17, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %192

166:                                              ; preds = %163
  %167 = load i64, i64* %17, align 8
  %168 = call i64 @OVL_CURRENT(i64 %167)
  store i64 %168, i64* %19, align 8
  %169 = load i64, i64* %19, align 8
  %170 = call i64 @TREE_CODE(i64 %169)
  %171 = load i64, i64* @TEMPLATE_DECL, align 8
  %172 = icmp eq i64 %170, %171
  br i1 %172, label %173, label %181

173:                                              ; preds = %166
  %174 = load i64, i64* %19, align 8
  %175 = load i64, i64* %4, align 8
  %176 = load i64, i64* %5, align 8
  %177 = load i64, i64* %18, align 8
  %178 = load i64, i64* @NULL_TREE, align 8
  %179 = load i64, i64* @NULL_TREE, align 8
  %180 = call i32 @add_template_conv_candidate(%struct.z_candidate** %6, i64 %174, i64 %175, i64 %176, i64 %177, i64 %178, i64 %179)
  br label %188

181:                                              ; preds = %166
  %182 = load i64, i64* %19, align 8
  %183 = load i64, i64* %4, align 8
  %184 = load i64, i64* %5, align 8
  %185 = load i64, i64* @NULL_TREE, align 8
  %186 = load i64, i64* @NULL_TREE, align 8
  %187 = call i32 @add_conv_candidate(%struct.z_candidate** %6, i64 %182, i64 %183, i64 %184, i64 %185, i64 %186)
  br label %188

188:                                              ; preds = %181, %173
  br label %189

189:                                              ; preds = %188
  %190 = load i64, i64* %17, align 8
  %191 = call i64 @OVL_NEXT(i64 %190)
  store i64 %191, i64* %17, align 8
  br label %163

192:                                              ; preds = %163
  br label %193

193:                                              ; preds = %192, %155, %149, %144
  br label %194

194:                                              ; preds = %193
  %195 = load i64, i64* %9, align 8
  %196 = call i64 @TREE_CHAIN(i64 %195)
  store i64 %196, i64* %9, align 8
  br label %113

197:                                              ; preds = %113
  %198 = load %struct.z_candidate*, %struct.z_candidate** %6, align 8
  %199 = load i32, i32* @pedantic, align 4
  %200 = call %struct.z_candidate* @splice_viable(%struct.z_candidate* %198, i32 %199, i32* %12)
  store %struct.z_candidate* %200, %struct.z_candidate** %6, align 8
  %201 = load i32, i32* %12, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %211, label %203

203:                                              ; preds = %197
  %204 = load i64, i64* %4, align 8
  %205 = call i64 @TREE_TYPE(i64 %204)
  %206 = load i64, i64* %5, align 8
  %207 = call i32 (i8*, i64, ...) @error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %205, i64 %206)
  %208 = load %struct.z_candidate*, %struct.z_candidate** %6, align 8
  %209 = call i32 @print_z_candidates(%struct.z_candidate* %208)
  %210 = load i64, i64* @error_mark_node, align 8
  store i64 %210, i64* %13, align 8
  br label %260

211:                                              ; preds = %197
  %212 = load %struct.z_candidate*, %struct.z_candidate** %6, align 8
  %213 = call %struct.z_candidate* @tourney(%struct.z_candidate* %212)
  store %struct.z_candidate* %213, %struct.z_candidate** %7, align 8
  %214 = load %struct.z_candidate*, %struct.z_candidate** %7, align 8
  %215 = icmp eq %struct.z_candidate* %214, null
  br i1 %215, label %216, label %224

216:                                              ; preds = %211
  %217 = load i64, i64* %4, align 8
  %218 = call i64 @TREE_TYPE(i64 %217)
  %219 = load i64, i64* %5, align 8
  %220 = call i32 (i8*, i64, ...) @error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i64 %218, i64 %219)
  %221 = load %struct.z_candidate*, %struct.z_candidate** %6, align 8
  %222 = call i32 @print_z_candidates(%struct.z_candidate* %221)
  %223 = load i64, i64* @error_mark_node, align 8
  store i64 %223, i64* %13, align 8
  br label %259

224:                                              ; preds = %211
  %225 = load %struct.z_candidate*, %struct.z_candidate** %7, align 8
  %226 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = call i64 @TREE_CODE(i64 %227)
  %229 = load i64, i64* @FUNCTION_DECL, align 8
  %230 = icmp eq i64 %228, %229
  br i1 %230, label %231, label %242

231:                                              ; preds = %224
  %232 = load %struct.z_candidate*, %struct.z_candidate** %7, align 8
  %233 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = call i64 @DECL_OVERLOADED_OPERATOR_P(i64 %234)
  %236 = load i64, i64* @CALL_EXPR, align 8
  %237 = icmp eq i64 %235, %236
  br i1 %237, label %238, label %242

238:                                              ; preds = %231
  %239 = load %struct.z_candidate*, %struct.z_candidate** %7, align 8
  %240 = load i32, i32* @LOOKUP_NORMAL, align 4
  %241 = call i64 @build_over_call(%struct.z_candidate* %239, i32 %240)
  store i64 %241, i64* %13, align 8
  br label %258

242:                                              ; preds = %231, %224
  %243 = load %struct.z_candidate*, %struct.z_candidate** %7, align 8
  %244 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %243, i32 0, i32 1
  %245 = load i32*, i32** %244, align 8
  %246 = getelementptr inbounds i32, i32* %245, i64 0
  %247 = load i32, i32* %246, align 4
  %248 = load i64, i64* %4, align 8
  %249 = load %struct.z_candidate*, %struct.z_candidate** %7, align 8
  %250 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %249, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  %252 = call i64 @convert_like_with_context(i32 %247, i64 %248, i64 %251, i32 -1)
  store i64 %252, i64* %4, align 8
  %253 = load i64, i64* %4, align 8
  %254 = call i64 @convert_from_reference(i64 %253)
  store i64 %254, i64* %4, align 8
  %255 = load i64, i64* %4, align 8
  %256 = load i64, i64* %5, align 8
  %257 = call i64 @build_function_call(i64 %255, i64 %256)
  store i64 %257, i64* %13, align 8
  br label %258

258:                                              ; preds = %242, %238
  br label %259

259:                                              ; preds = %258, %216
  br label %260

260:                                              ; preds = %259, %203
  %261 = load i8*, i8** %14, align 8
  %262 = call i32 @obstack_free(i32* @conversion_obstack, i8* %261)
  %263 = load i64, i64* %13, align 8
  store i64 %263, i64* %3, align 8
  br label %264

264:                                              ; preds = %260, %55, %44, %27
  %265 = load i64, i64* %3, align 8
  ret i64 %265
}

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @TYPE_PTRMEMFUNC_P(i64) #1

declare dso_local i32 @error(i8*, i64, ...) #1

declare dso_local i64 @TYPE_BINFO(i64) #1

declare dso_local i64 @lookup_fnfields(i64, i32, i32) #1

declare dso_local i32 @ansi_opname(i64) #1

declare dso_local i64 @resolve_args(i64) #1

declare dso_local i8* @conversion_obstack_alloc(i32) #1

declare dso_local i64 @BINFO_TYPE(i32) #1

declare dso_local i32 @BASELINK_BINFO(i64) #1

declare dso_local i64 @tree_cons(i64, i32, i64) #1

declare dso_local i32 @build_this(i64) #1

declare dso_local i64 @BASELINK_FUNCTIONS(i64) #1

declare dso_local i64 @OVL_CURRENT(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i32 @add_template_candidate(%struct.z_candidate**, i64, i64, i64, i64, i64, i64, i64, i32, i32) #1

declare dso_local i32 @add_function_candidate(%struct.z_candidate**, i64, i64, i64, i64, i64, i32) #1

declare dso_local i64 @OVL_NEXT(i64) #1

declare dso_local i64 @lookup_conversions(i64) #1

declare dso_local i64 @TREE_VALUE(i64) #1

declare dso_local i32 @add_template_conv_candidate(%struct.z_candidate**, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @add_conv_candidate(%struct.z_candidate**, i64, i64, i64, i64, i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local %struct.z_candidate* @splice_viable(%struct.z_candidate*, i32, i32*) #1

declare dso_local i32 @print_z_candidates(%struct.z_candidate*) #1

declare dso_local %struct.z_candidate* @tourney(%struct.z_candidate*) #1

declare dso_local i64 @DECL_OVERLOADED_OPERATOR_P(i64) #1

declare dso_local i64 @build_over_call(%struct.z_candidate*, i32) #1

declare dso_local i64 @convert_like_with_context(i32, i64, i64, i32) #1

declare dso_local i64 @convert_from_reference(i64) #1

declare dso_local i64 @build_function_call(i64, i64) #1

declare dso_local i32 @obstack_free(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
