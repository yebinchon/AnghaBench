; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_call.c_build_op_delete_call.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_call.c_build_op_delete_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@NULL_TREE = common dso_local global i64 0, align 8
@error_mark_node = common dso_local global i64 0, align 8
@void_list_node = common dso_local global i64 0, align 8
@ptr_type_node = common dso_local global i32 0, align 4
@sizetype = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"no corresponding deallocation function for `%D'\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"no suitable %<operator %s%> for %qT\00", align 1
@operator_name_info = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @build_op_delete_call(i32 %0, i64 %1, i64 %2, i32 %3, i64 %4, i64 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  store i32 %0, i32* %8, align 4
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %23 = load i64, i64* @NULL_TREE, align 8
  store i64 %23, i64* %14, align 8
  %24 = load i64, i64* %9, align 8
  %25 = load i64, i64* @error_mark_node, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %6
  %28 = load i64, i64* @error_mark_node, align 8
  store i64 %28, i64* %7, align 8
  br label %253

29:                                               ; preds = %6
  %30 = load i64, i64* %9, align 8
  %31 = call i64 @TREE_TYPE(i64 %30)
  %32 = call i64 @TREE_TYPE(i64 %31)
  %33 = call i64 @strip_array_types(i64 %32)
  store i64 %33, i64* %19, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call i64 @ansi_opname(i32 %34)
  store i64 %35, i64* %16, align 8
  %36 = load i64, i64* %19, align 8
  %37 = call i64 @CLASS_TYPE_P(i64 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %58

39:                                               ; preds = %29
  %40 = load i64, i64* %19, align 8
  %41 = call i32 @complete_type(i64 %40)
  %42 = call i64 @COMPLETE_TYPE_P(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %58

44:                                               ; preds = %39
  %45 = load i32, i32* %11, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %58, label %47

47:                                               ; preds = %44
  %48 = load i64, i64* %19, align 8
  %49 = call i32 @TYPE_BINFO(i64 %48)
  %50 = load i64, i64* %16, align 8
  %51 = call i64 @lookup_fnfields(i32 %49, i64 %50, i32 1)
  store i64 %51, i64* %15, align 8
  %52 = load i64, i64* %15, align 8
  %53 = load i64, i64* @error_mark_node, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %47
  %56 = load i64, i64* @error_mark_node, align 8
  store i64 %56, i64* %7, align 8
  br label %253

57:                                               ; preds = %47
  br label %60

58:                                               ; preds = %44, %39, %29
  %59 = load i64, i64* @NULL_TREE, align 8
  store i64 %59, i64* %15, align 8
  br label %60

60:                                               ; preds = %58, %57
  %61 = load i64, i64* %15, align 8
  %62 = load i64, i64* @NULL_TREE, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = load i64, i64* %16, align 8
  %66 = call i64 @lookup_name_nonclass(i64 %65)
  store i64 %66, i64* %15, align 8
  br label %67

67:                                               ; preds = %64, %60
  %68 = load i64, i64* %12, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %83

70:                                               ; preds = %67
  %71 = load i64, i64* %13, align 8
  %72 = load i64, i64* @NULL_TREE, align 8
  %73 = icmp ne i64 %71, %72
  %74 = zext i1 %73 to i32
  %75 = call i32 @gcc_assert(i32 %74)
  %76 = load i64, i64* %13, align 8
  %77 = call i64 @TREE_TYPE(i64 %76)
  %78 = call i64 @TYPE_ARG_TYPES(i64 %77)
  %79 = call i64 @TREE_CHAIN(i64 %78)
  store i64 %79, i64* %17, align 8
  %80 = load i64, i64* %12, align 8
  %81 = call i64 @TREE_OPERAND(i64 %80, i32 1)
  %82 = call i64 @TREE_CHAIN(i64 %81)
  store i64 %82, i64* %18, align 8
  br label %86

83:                                               ; preds = %67
  %84 = load i64, i64* @void_list_node, align 8
  store i64 %84, i64* %17, align 8
  %85 = load i64, i64* @NULL_TREE, align 8
  store i64 %85, i64* %18, align 8
  br label %86

86:                                               ; preds = %83, %70
  %87 = load i32, i32* @ptr_type_node, align 4
  %88 = load i64, i64* %9, align 8
  %89 = call i64 @cp_convert(i32 %87, i64 %88)
  store i64 %89, i64* %9, align 8
  store i32 0, i32* %20, align 4
  br label %90

90:                                               ; preds = %186, %86
  %91 = load i32, i32* %20, align 4
  %92 = load i64, i64* %12, align 8
  %93 = icmp ne i64 %92, 0
  %94 = zext i1 %93 to i64
  %95 = select i1 %93, i32 1, i32 2
  %96 = icmp slt i32 %91, %95
  br i1 %96, label %97, label %189

97:                                               ; preds = %90
  %98 = load i64, i64* %15, align 8
  %99 = call i64 @BASELINK_P(i64 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %97
  %102 = load i64, i64* %15, align 8
  %103 = call i64 @BASELINK_FUNCTIONS(i64 %102)
  br label %106

104:                                              ; preds = %97
  %105 = load i64, i64* %15, align 8
  br label %106

106:                                              ; preds = %104, %101
  %107 = phi i64 [ %103, %101 ], [ %105, %104 ]
  store i64 %107, i64* %14, align 8
  br label %108

108:                                              ; preds = %178, %106
  %109 = load i64, i64* %14, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %181

111:                                              ; preds = %108
  %112 = load i64, i64* %14, align 8
  %113 = call i64 @OVL_CURRENT(i64 %112)
  %114 = call i64 @TREE_TYPE(i64 %113)
  %115 = call i64 @TYPE_ARG_TYPES(i64 %114)
  store i64 %115, i64* %21, align 8
  %116 = load i64, i64* %21, align 8
  %117 = call i32 @TREE_VALUE(i64 %116)
  %118 = load i32, i32* @ptr_type_node, align 4
  %119 = call i64 @same_type_p(i32 %117, i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %122, label %121

121:                                              ; preds = %111
  br label %178

122:                                              ; preds = %111
  %123 = load i64, i64* %21, align 8
  %124 = call i64 @TREE_CHAIN(i64 %123)
  store i64 %124, i64* %21, align 8
  %125 = load i32, i32* %20, align 4
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %158

127:                                              ; preds = %122
  %128 = load i64, i64* %17, align 8
  store i64 %128, i64* %22, align 8
  br label %129

129:                                              ; preds = %145, %127
  %130 = load i64, i64* %22, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %129
  %133 = load i64, i64* %21, align 8
  %134 = icmp ne i64 %133, 0
  br label %135

135:                                              ; preds = %132, %129
  %136 = phi i1 [ false, %129 ], [ %134, %132 ]
  br i1 %136, label %137, label %150

137:                                              ; preds = %135
  %138 = load i64, i64* %22, align 8
  %139 = call i32 @TREE_VALUE(i64 %138)
  %140 = load i64, i64* %21, align 8
  %141 = call i32 @TREE_VALUE(i64 %140)
  %142 = call i64 @same_type_p(i32 %139, i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %145, label %144

144:                                              ; preds = %137
  br label %150

145:                                              ; preds = %137
  %146 = load i64, i64* %22, align 8
  %147 = call i64 @TREE_CHAIN(i64 %146)
  store i64 %147, i64* %22, align 8
  %148 = load i64, i64* %21, align 8
  %149 = call i64 @TREE_CHAIN(i64 %148)
  store i64 %149, i64* %21, align 8
  br label %129

150:                                              ; preds = %144, %135
  %151 = load i64, i64* %22, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %157, label %153

153:                                              ; preds = %150
  %154 = load i64, i64* %21, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %157, label %156

156:                                              ; preds = %153
  br label %181

157:                                              ; preds = %153, %150
  br label %177

158:                                              ; preds = %122
  %159 = load i32, i32* %20, align 4
  %160 = icmp eq i32 %159, 1
  br i1 %160, label %161, label %176

161:                                              ; preds = %158
  %162 = load i64, i64* %21, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %176

164:                                              ; preds = %161
  %165 = load i64, i64* %21, align 8
  %166 = call i32 @TREE_VALUE(i64 %165)
  %167 = load i32, i32* @sizetype, align 4
  %168 = call i64 @same_type_p(i32 %166, i32 %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %176

170:                                              ; preds = %164
  %171 = load i64, i64* %21, align 8
  %172 = call i64 @TREE_CHAIN(i64 %171)
  %173 = load i64, i64* @void_list_node, align 8
  %174 = icmp eq i64 %172, %173
  br i1 %174, label %175, label %176

175:                                              ; preds = %170
  br label %181

176:                                              ; preds = %170, %164, %161, %158
  br label %177

177:                                              ; preds = %176, %157
  br label %178

178:                                              ; preds = %177, %121
  %179 = load i64, i64* %14, align 8
  %180 = call i64 @OVL_NEXT(i64 %179)
  store i64 %180, i64* %14, align 8
  br label %108

181:                                              ; preds = %175, %156, %108
  %182 = load i64, i64* %14, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %181
  br label %189

185:                                              ; preds = %181
  br label %186

186:                                              ; preds = %185
  %187 = load i32, i32* %20, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %20, align 4
  br label %90

189:                                              ; preds = %184, %90
  %190 = load i64, i64* %14, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %232

192:                                              ; preds = %189
  %193 = load i64, i64* %14, align 8
  %194 = call i64 @OVL_CURRENT(i64 %193)
  store i64 %194, i64* %14, align 8
  %195 = load i64, i64* %14, align 8
  %196 = call i64 @DECL_CLASS_SCOPE_P(i64 %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %204

198:                                              ; preds = %192
  %199 = load i64, i64* %19, align 8
  %200 = call i32 @TYPE_BINFO(i64 %199)
  %201 = load i64, i64* %14, align 8
  %202 = load i64, i64* %14, align 8
  %203 = call i32 @perform_or_defer_access_check(i32 %200, i64 %201, i64 %202)
  br label %204

204:                                              ; preds = %198, %192
  %205 = load i32, i32* %20, align 4
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %212

207:                                              ; preds = %204
  %208 = load i64, i64* @NULL_TREE, align 8
  %209 = load i64, i64* %9, align 8
  %210 = load i64, i64* %18, align 8
  %211 = call i64 @tree_cons(i64 %208, i64 %209, i64 %210)
  store i64 %211, i64* %18, align 8
  br label %219

212:                                              ; preds = %204
  %213 = load i64, i64* @NULL_TREE, align 8
  %214 = load i64, i64* %9, align 8
  %215 = load i64, i64* @NULL_TREE, align 8
  %216 = load i64, i64* %10, align 8
  %217 = call i64 @build_tree_list(i64 %215, i64 %216)
  %218 = call i64 @tree_cons(i64 %213, i64 %214, i64 %217)
  store i64 %218, i64* %18, align 8
  br label %219

219:                                              ; preds = %212, %207
  %220 = load i64, i64* %12, align 8
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %228

222:                                              ; preds = %219
  %223 = load i64, i64* %14, align 8
  %224 = call i32 @mark_used(i64 %223)
  %225 = load i64, i64* %14, align 8
  %226 = load i64, i64* %18, align 8
  %227 = call i64 @build_cxx_call(i64 %225, i64 %226)
  store i64 %227, i64* %7, align 8
  br label %253

228:                                              ; preds = %219
  %229 = load i64, i64* %14, align 8
  %230 = load i64, i64* %18, align 8
  %231 = call i64 @build_function_call(i64 %229, i64 %230)
  store i64 %231, i64* %7, align 8
  br label %253

232:                                              ; preds = %189
  %233 = load i64, i64* %13, align 8
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %243

235:                                              ; preds = %232
  %236 = load i64, i64* %12, align 8
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %241, label %238

238:                                              ; preds = %235
  %239 = load i64, i64* %13, align 8
  %240 = call i32 @warning(i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i64 %239)
  br label %241

241:                                              ; preds = %238, %235
  %242 = load i64, i64* @NULL_TREE, align 8
  store i64 %242, i64* %7, align 8
  br label %253

243:                                              ; preds = %232
  %244 = load %struct.TYPE_2__*, %struct.TYPE_2__** @operator_name_info, align 8
  %245 = load i32, i32* %8, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %244, i64 %246
  %248 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = load i64, i64* %19, align 8
  %251 = call i32 @error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %249, i64 %250)
  %252 = load i64, i64* @error_mark_node, align 8
  store i64 %252, i64* %7, align 8
  br label %253

253:                                              ; preds = %243, %241, %228, %222, %55, %27
  %254 = load i64, i64* %7, align 8
  ret i64 %254
}

declare dso_local i64 @strip_array_types(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @ansi_opname(i32) #1

declare dso_local i64 @CLASS_TYPE_P(i64) #1

declare dso_local i64 @COMPLETE_TYPE_P(i32) #1

declare dso_local i32 @complete_type(i64) #1

declare dso_local i64 @lookup_fnfields(i32, i64, i32) #1

declare dso_local i32 @TYPE_BINFO(i64) #1

declare dso_local i64 @lookup_name_nonclass(i64) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i64 @TYPE_ARG_TYPES(i64) #1

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local i64 @cp_convert(i32, i64) #1

declare dso_local i64 @BASELINK_P(i64) #1

declare dso_local i64 @BASELINK_FUNCTIONS(i64) #1

declare dso_local i64 @OVL_CURRENT(i64) #1

declare dso_local i64 @same_type_p(i32, i32) #1

declare dso_local i32 @TREE_VALUE(i64) #1

declare dso_local i64 @OVL_NEXT(i64) #1

declare dso_local i64 @DECL_CLASS_SCOPE_P(i64) #1

declare dso_local i32 @perform_or_defer_access_check(i32, i64, i64) #1

declare dso_local i64 @tree_cons(i64, i64, i64) #1

declare dso_local i64 @build_tree_list(i64, i64) #1

declare dso_local i32 @mark_used(i64) #1

declare dso_local i64 @build_cxx_call(i64, i64) #1

declare dso_local i64 @build_function_call(i64, i64) #1

declare dso_local i32 @warning(i32, i8*, i64) #1

declare dso_local i32 @error(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
