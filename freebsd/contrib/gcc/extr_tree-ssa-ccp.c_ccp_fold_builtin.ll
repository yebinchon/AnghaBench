; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-ccp.c_ccp_fold_builtin.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-ccp.c_ccp_fold_builtin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MODIFY_EXPR = common dso_local global i64 0, align 8
@BUILT_IN_MD = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64)* @ccp_fold_builtin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ccp_fold_builtin(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca [3 x i64], align 16
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %17 = load i64, i64* %4, align 8
  %18 = call i64 @TREE_CODE(i64 %17)
  %19 = load i64, i64* @MODIFY_EXPR, align 8
  %20 = icmp ne i64 %18, %19
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %15, align 4
  %22 = load i64, i64* %5, align 8
  %23 = call i64 @get_callee_fndecl(i64 %22)
  store i64 %23, i64* %8, align 8
  %24 = load i64, i64* %5, align 8
  %25 = call i64 @TREE_OPERAND(i64 %24, i32 1)
  store i64 %25, i64* %9, align 8
  %26 = load i64, i64* %8, align 8
  %27 = load i64, i64* %9, align 8
  %28 = load i32, i32* %15, align 4
  %29 = call i64 @fold_builtin(i64 %26, i64 %27, i32 %28)
  store i64 %29, i64* %6, align 8
  %30 = load i64, i64* %6, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %2
  %33 = load i32, i32* %15, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i64, i64* %6, align 8
  %37 = call i32 @STRIP_NOPS(i64 %36)
  br label %38

38:                                               ; preds = %35, %32
  %39 = load i64, i64* %6, align 8
  store i64 %39, i64* %3, align 8
  br label %267

40:                                               ; preds = %2
  %41 = load i64, i64* %8, align 8
  %42 = call i64 @DECL_BUILT_IN_CLASS(i64 %41)
  %43 = load i64, i64* @BUILT_IN_MD, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i64, i64* @NULL_TREE, align 8
  store i64 %46, i64* %3, align 8
  br label %267

47:                                               ; preds = %40
  %48 = load i64, i64* %9, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %47
  %51 = load i64, i64* @NULL_TREE, align 8
  store i64 %51, i64* %3, align 8
  br label %267

52:                                               ; preds = %47
  %53 = load i64, i64* %8, align 8
  %54 = call i32 @DECL_FUNCTION_CODE(i64 %53)
  switch i32 %54, label %60 [
    i32 131, label %55
    i32 141, label %55
    i32 140, label %55
    i32 133, label %56
    i32 130, label %56
    i32 139, label %57
    i32 137, label %57
    i32 138, label %57
    i32 136, label %57
    i32 129, label %57
    i32 132, label %58
    i32 134, label %58
    i32 135, label %59
    i32 128, label %59
  ]

55:                                               ; preds = %52, %52, %52
  store i32 1, i32* %11, align 4
  store i32 0, i32* %13, align 4
  br label %62

56:                                               ; preds = %52, %52
  store i32 2, i32* %11, align 4
  store i32 0, i32* %13, align 4
  br label %62

57:                                               ; preds = %52, %52, %52, %52, %52
  store i32 4, i32* %11, align 4
  store i32 2, i32* %13, align 4
  br label %62

58:                                               ; preds = %52, %52
  store i32 2, i32* %11, align 4
  store i32 1, i32* %13, align 4
  br label %62

59:                                               ; preds = %52, %52
  store i32 2, i32* %11, align 4
  store i32 2, i32* %13, align 4
  br label %62

60:                                               ; preds = %52
  %61 = load i64, i64* @NULL_TREE, align 8
  store i64 %61, i64* %3, align 8
  br label %267

62:                                               ; preds = %59, %58, %57, %56, %55
  %63 = call i32 @BITMAP_ALLOC(i32* null)
  store i32 %63, i32* %14, align 4
  %64 = getelementptr inbounds [3 x i64], [3 x i64]* %7, i64 0, i64 0
  %65 = call i32 @memset(i64* %64, i32 0, i32 24)
  store i32 0, i32* %12, align 4
  %66 = load i64, i64* %9, align 8
  store i64 %66, i64* %10, align 8
  br label %67

67:                                               ; preds = %93, %62
  %68 = load i32, i32* %11, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %100

70:                                               ; preds = %67
  %71 = load i32, i32* %11, align 4
  %72 = and i32 %71, 1
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %92

74:                                               ; preds = %70
  %75 = load i32, i32* %14, align 4
  %76 = call i32 @bitmap_clear(i32 %75)
  %77 = load i64, i64* %10, align 8
  %78 = call i32 @TREE_VALUE(i64 %77)
  %79 = load i32, i32* %12, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [3 x i64], [3 x i64]* %7, i64 0, i64 %80
  %82 = load i32, i32* %14, align 4
  %83 = load i32, i32* %13, align 4
  %84 = call i32 @get_maxval_strlen(i32 %78, i64* %81, i32 %82, i32 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %91, label %86

86:                                               ; preds = %74
  %87 = load i64, i64* @NULL_TREE, align 8
  %88 = load i32, i32* %12, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [3 x i64], [3 x i64]* %7, i64 0, i64 %89
  store i64 %87, i64* %90, align 8
  br label %91

91:                                               ; preds = %86, %74
  br label %92

92:                                               ; preds = %91, %70
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %12, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %12, align 4
  %96 = load i32, i32* %11, align 4
  %97 = ashr i32 %96, 1
  store i32 %97, i32* %11, align 4
  %98 = load i64, i64* %10, align 8
  %99 = call i64 @TREE_CHAIN(i64 %98)
  store i64 %99, i64* %10, align 8
  br label %67

100:                                              ; preds = %67
  %101 = load i32, i32* %14, align 4
  %102 = call i32 @BITMAP_FREE(i32 %101)
  %103 = load i64, i64* @NULL_TREE, align 8
  store i64 %103, i64* %6, align 8
  %104 = load i64, i64* %8, align 8
  %105 = call i32 @DECL_FUNCTION_CODE(i64 %104)
  switch i32 %105, label %254 [
    i32 131, label %106
    i32 133, label %132
    i32 130, label %148
    i32 141, label %164
    i32 140, label %174
    i32 139, label %184
    i32 137, label %184
    i32 138, label %184
    i32 136, label %184
    i32 132, label %203
    i32 134, label %203
    i32 129, label %222
    i32 135, label %237
    i32 128, label %237
  ]

106:                                              ; preds = %100
  %107 = getelementptr inbounds [3 x i64], [3 x i64]* %7, i64 0, i64 0
  %108 = load i64, i64* %107, align 16
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %131

110:                                              ; preds = %106
  %111 = load i64, i64* %5, align 8
  %112 = call i32 @TREE_TYPE(i64 %111)
  %113 = getelementptr inbounds [3 x i64], [3 x i64]* %7, i64 0, i64 0
  %114 = load i64, i64* %113, align 16
  %115 = call i64 @fold_convert(i32 %112, i64 %114)
  store i64 %115, i64* %16, align 8
  %116 = load i64, i64* %16, align 8
  %117 = call i32 @is_gimple_val(i64 %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %128, label %119

119:                                              ; preds = %110
  %120 = load i64, i64* %16, align 8
  %121 = call i32 @is_gimple_cast(i64 %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %130

123:                                              ; preds = %119
  %124 = load i64, i64* %16, align 8
  %125 = call i64 @TREE_OPERAND(i64 %124, i32 0)
  %126 = call i32 @is_gimple_val(i64 %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %123, %110
  %129 = load i64, i64* %16, align 8
  store i64 %129, i64* %3, align 8
  br label %267

130:                                              ; preds = %123, %119
  br label %131

131:                                              ; preds = %130, %106
  br label %256

132:                                              ; preds = %100
  %133 = getelementptr inbounds [3 x i64], [3 x i64]* %7, i64 0, i64 1
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %147

136:                                              ; preds = %132
  %137 = getelementptr inbounds [3 x i64], [3 x i64]* %7, i64 0, i64 1
  %138 = load i64, i64* %137, align 8
  %139 = call i32 @is_gimple_val(i64 %138)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %147

141:                                              ; preds = %136
  %142 = load i64, i64* %8, align 8
  %143 = load i64, i64* %9, align 8
  %144 = getelementptr inbounds [3 x i64], [3 x i64]* %7, i64 0, i64 1
  %145 = load i64, i64* %144, align 8
  %146 = call i64 @fold_builtin_strcpy(i64 %142, i64 %143, i64 %145)
  store i64 %146, i64* %6, align 8
  br label %147

147:                                              ; preds = %141, %136, %132
  br label %256

148:                                              ; preds = %100
  %149 = getelementptr inbounds [3 x i64], [3 x i64]* %7, i64 0, i64 1
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %163

152:                                              ; preds = %148
  %153 = getelementptr inbounds [3 x i64], [3 x i64]* %7, i64 0, i64 1
  %154 = load i64, i64* %153, align 8
  %155 = call i32 @is_gimple_val(i64 %154)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %163

157:                                              ; preds = %152
  %158 = load i64, i64* %8, align 8
  %159 = load i64, i64* %9, align 8
  %160 = getelementptr inbounds [3 x i64], [3 x i64]* %7, i64 0, i64 1
  %161 = load i64, i64* %160, align 8
  %162 = call i64 @fold_builtin_strncpy(i64 %158, i64 %159, i64 %161)
  store i64 %162, i64* %6, align 8
  br label %163

163:                                              ; preds = %157, %152, %148
  br label %256

164:                                              ; preds = %100
  %165 = load i64, i64* %9, align 8
  %166 = load i64, i64* %4, align 8
  %167 = call i64 @TREE_CODE(i64 %166)
  %168 = load i64, i64* @MODIFY_EXPR, align 8
  %169 = icmp ne i64 %167, %168
  %170 = zext i1 %169 to i32
  %171 = getelementptr inbounds [3 x i64], [3 x i64]* %7, i64 0, i64 0
  %172 = load i64, i64* %171, align 16
  %173 = call i64 @fold_builtin_fputs(i64 %165, i32 %170, i32 0, i64 %172)
  store i64 %173, i64* %6, align 8
  br label %256

174:                                              ; preds = %100
  %175 = load i64, i64* %9, align 8
  %176 = load i64, i64* %4, align 8
  %177 = call i64 @TREE_CODE(i64 %176)
  %178 = load i64, i64* @MODIFY_EXPR, align 8
  %179 = icmp ne i64 %177, %178
  %180 = zext i1 %179 to i32
  %181 = getelementptr inbounds [3 x i64], [3 x i64]* %7, i64 0, i64 0
  %182 = load i64, i64* %181, align 16
  %183 = call i64 @fold_builtin_fputs(i64 %175, i32 %180, i32 1, i64 %182)
  store i64 %183, i64* %6, align 8
  br label %256

184:                                              ; preds = %100, %100, %100, %100
  %185 = getelementptr inbounds [3 x i64], [3 x i64]* %7, i64 0, i64 2
  %186 = load i64, i64* %185, align 16
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %202

188:                                              ; preds = %184
  %189 = getelementptr inbounds [3 x i64], [3 x i64]* %7, i64 0, i64 2
  %190 = load i64, i64* %189, align 16
  %191 = call i32 @is_gimple_val(i64 %190)
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %202

193:                                              ; preds = %188
  %194 = load i64, i64* %8, align 8
  %195 = load i64, i64* %9, align 8
  %196 = getelementptr inbounds [3 x i64], [3 x i64]* %7, i64 0, i64 2
  %197 = load i64, i64* %196, align 16
  %198 = load i32, i32* %15, align 4
  %199 = load i64, i64* %8, align 8
  %200 = call i32 @DECL_FUNCTION_CODE(i64 %199)
  %201 = call i64 @fold_builtin_memory_chk(i64 %194, i64 %195, i64 %197, i32 %198, i32 %200)
  store i64 %201, i64* %6, align 8
  br label %202

202:                                              ; preds = %193, %188, %184
  br label %256

203:                                              ; preds = %100, %100
  %204 = getelementptr inbounds [3 x i64], [3 x i64]* %7, i64 0, i64 1
  %205 = load i64, i64* %204, align 8
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %221

207:                                              ; preds = %203
  %208 = getelementptr inbounds [3 x i64], [3 x i64]* %7, i64 0, i64 1
  %209 = load i64, i64* %208, align 8
  %210 = call i32 @is_gimple_val(i64 %209)
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %221

212:                                              ; preds = %207
  %213 = load i64, i64* %8, align 8
  %214 = load i64, i64* %9, align 8
  %215 = getelementptr inbounds [3 x i64], [3 x i64]* %7, i64 0, i64 1
  %216 = load i64, i64* %215, align 8
  %217 = load i32, i32* %15, align 4
  %218 = load i64, i64* %8, align 8
  %219 = call i32 @DECL_FUNCTION_CODE(i64 %218)
  %220 = call i64 @fold_builtin_stxcpy_chk(i64 %213, i64 %214, i64 %216, i32 %217, i32 %219)
  store i64 %220, i64* %6, align 8
  br label %221

221:                                              ; preds = %212, %207, %203
  br label %256

222:                                              ; preds = %100
  %223 = getelementptr inbounds [3 x i64], [3 x i64]* %7, i64 0, i64 2
  %224 = load i64, i64* %223, align 16
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %236

226:                                              ; preds = %222
  %227 = getelementptr inbounds [3 x i64], [3 x i64]* %7, i64 0, i64 2
  %228 = load i64, i64* %227, align 16
  %229 = call i32 @is_gimple_val(i64 %228)
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %236

231:                                              ; preds = %226
  %232 = load i64, i64* %9, align 8
  %233 = getelementptr inbounds [3 x i64], [3 x i64]* %7, i64 0, i64 2
  %234 = load i64, i64* %233, align 16
  %235 = call i64 @fold_builtin_strncpy_chk(i64 %232, i64 %234)
  store i64 %235, i64* %6, align 8
  br label %236

236:                                              ; preds = %231, %226, %222
  br label %256

237:                                              ; preds = %100, %100
  %238 = getelementptr inbounds [3 x i64], [3 x i64]* %7, i64 0, i64 1
  %239 = load i64, i64* %238, align 8
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %253

241:                                              ; preds = %237
  %242 = getelementptr inbounds [3 x i64], [3 x i64]* %7, i64 0, i64 1
  %243 = load i64, i64* %242, align 8
  %244 = call i32 @is_gimple_val(i64 %243)
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %253

246:                                              ; preds = %241
  %247 = load i64, i64* %9, align 8
  %248 = getelementptr inbounds [3 x i64], [3 x i64]* %7, i64 0, i64 1
  %249 = load i64, i64* %248, align 8
  %250 = load i64, i64* %8, align 8
  %251 = call i32 @DECL_FUNCTION_CODE(i64 %250)
  %252 = call i64 @fold_builtin_snprintf_chk(i64 %247, i64 %249, i32 %251)
  store i64 %252, i64* %6, align 8
  br label %253

253:                                              ; preds = %246, %241, %237
  br label %256

254:                                              ; preds = %100
  %255 = call i32 (...) @gcc_unreachable()
  br label %256

256:                                              ; preds = %254, %253, %236, %221, %202, %174, %164, %163, %147, %131
  %257 = load i64, i64* %6, align 8
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %265

259:                                              ; preds = %256
  %260 = load i32, i32* %15, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %265

262:                                              ; preds = %259
  %263 = load i64, i64* %6, align 8
  %264 = call i64 @fold_ignored_result(i64 %263)
  store i64 %264, i64* %6, align 8
  br label %265

265:                                              ; preds = %262, %259, %256
  %266 = load i64, i64* %6, align 8
  store i64 %266, i64* %3, align 8
  br label %267

267:                                              ; preds = %265, %128, %60, %50, %45, %38
  %268 = load i64, i64* %3, align 8
  ret i64 %268
}

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @get_callee_fndecl(i64) #1

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local i64 @fold_builtin(i64, i64, i32) #1

declare dso_local i32 @STRIP_NOPS(i64) #1

declare dso_local i64 @DECL_BUILT_IN_CLASS(i64) #1

declare dso_local i32 @DECL_FUNCTION_CODE(i64) #1

declare dso_local i32 @BITMAP_ALLOC(i32*) #1

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i32 @bitmap_clear(i32) #1

declare dso_local i32 @get_maxval_strlen(i32, i64*, i32, i32) #1

declare dso_local i32 @TREE_VALUE(i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i32 @BITMAP_FREE(i32) #1

declare dso_local i64 @fold_convert(i32, i64) #1

declare dso_local i32 @TREE_TYPE(i64) #1

declare dso_local i32 @is_gimple_val(i64) #1

declare dso_local i32 @is_gimple_cast(i64) #1

declare dso_local i64 @fold_builtin_strcpy(i64, i64, i64) #1

declare dso_local i64 @fold_builtin_strncpy(i64, i64, i64) #1

declare dso_local i64 @fold_builtin_fputs(i64, i32, i32, i64) #1

declare dso_local i64 @fold_builtin_memory_chk(i64, i64, i64, i32, i32) #1

declare dso_local i64 @fold_builtin_stxcpy_chk(i64, i64, i64, i32, i32) #1

declare dso_local i64 @fold_builtin_strncpy_chk(i64, i64) #1

declare dso_local i64 @fold_builtin_snprintf_chk(i64, i64, i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i64 @fold_ignored_result(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
