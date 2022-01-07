; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_get_memory_rtx.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_get_memory_rtx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_RTX = common dso_local global i32 0, align 4
@ptr_mode = common dso_local global i32 0, align 4
@EXPAND_NORMAL = common dso_local global i32 0, align 4
@BLKmode = common dso_local global i32 0, align 4
@NOP_EXPR = common dso_local global i64 0, align 8
@CONVERT_EXPR = common dso_local global i64 0, align 8
@NON_LVALUE_EXPR = common dso_local global i64 0, align 8
@ADDR_EXPR = common dso_local global i64 0, align 8
@INDIRECT_REF = common dso_local global i32 0, align 4
@COMPONENT_REF = common dso_local global i64 0, align 8
@ARRAY_REF = common dso_local global i64 0, align 8
@VIEW_CONVERT_EXPR = common dso_local global i64 0, align 8
@SAVE_EXPR = common dso_local global i64 0, align 8
@CONST_INT = common dso_local global i64 0, align 8
@BITS_PER_UNIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @get_memory_rtx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_memory_rtx(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = load i32, i32* @NULL_RTX, align 4
  %15 = load i32, i32* @ptr_mode, align 4
  %16 = load i32, i32* @EXPAND_NORMAL, align 4
  %17 = call i32 @expand_expr(i32* %13, i32 %14, i32 %15, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* @BLKmode, align 4
  %19 = load i32, i32* @BLKmode, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @memory_address(i32 %19, i32 %20)
  %22 = call i32 @gen_rtx_MEM(i32 %18, i32 %21)
  store i32 %22, i32* %6, align 4
  br label %23

23:                                               ; preds = %46, %2
  %24 = load i32*, i32** %3, align 8
  %25 = call i64 @TREE_CODE(i32* %24)
  %26 = load i64, i64* @NOP_EXPR, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %38, label %28

28:                                               ; preds = %23
  %29 = load i32*, i32** %3, align 8
  %30 = call i64 @TREE_CODE(i32* %29)
  %31 = load i64, i64* @CONVERT_EXPR, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %38, label %33

33:                                               ; preds = %28
  %34 = load i32*, i32** %3, align 8
  %35 = call i64 @TREE_CODE(i32* %34)
  %36 = load i64, i64* @NON_LVALUE_EXPR, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %33, %28, %23
  %39 = load i32*, i32** %3, align 8
  %40 = call i32* @TREE_OPERAND(i32* %39, i32 0)
  %41 = call i32* @TREE_TYPE(i32* %40)
  %42 = call i64 @POINTER_TYPE_P(i32* %41)
  %43 = icmp ne i64 %42, 0
  br label %44

44:                                               ; preds = %38, %33
  %45 = phi i1 [ false, %33 ], [ %43, %38 ]
  br i1 %45, label %46, label %49

46:                                               ; preds = %44
  %47 = load i32*, i32** %3, align 8
  %48 = call i32* @TREE_OPERAND(i32* %47, i32 0)
  store i32* %48, i32** %3, align 8
  br label %23

49:                                               ; preds = %44
  %50 = load i32*, i32** %3, align 8
  %51 = call i64 @TREE_CODE(i32* %50)
  %52 = load i64, i64* @ADDR_EXPR, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i32*, i32** %3, align 8
  %56 = call i32* @TREE_OPERAND(i32* %55, i32 0)
  store i32* %56, i32** %3, align 8
  br label %71

57:                                               ; preds = %49
  %58 = load i32*, i32** %3, align 8
  %59 = call i32* @TREE_TYPE(i32* %58)
  %60 = call i64 @POINTER_TYPE_P(i32* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %57
  %63 = load i32, i32* @INDIRECT_REF, align 4
  %64 = load i32*, i32** %3, align 8
  %65 = call i32* @TREE_TYPE(i32* %64)
  %66 = call i32* @TREE_TYPE(i32* %65)
  %67 = load i32*, i32** %3, align 8
  %68 = call i32* @build1(i32 %63, i32* %66, i32* %67)
  store i32* %68, i32** %3, align 8
  br label %70

69:                                               ; preds = %57
  store i32* null, i32** %3, align 8
  br label %70

70:                                               ; preds = %69, %62
  br label %71

71:                                               ; preds = %70, %54
  %72 = load i32*, i32** %3, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %276

74:                                               ; preds = %71
  %75 = load i32, i32* %6, align 4
  %76 = load i32*, i32** %3, align 8
  %77 = call i32 @set_mem_attributes(i32 %75, i32* %76, i32 0)
  %78 = load i32, i32* %6, align 4
  %79 = call i32* @MEM_EXPR(i32 %78)
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %270

81:                                               ; preds = %74
  %82 = load i32, i32* %6, align 4
  %83 = call i32* @MEM_EXPR(i32 %82)
  %84 = call i64 @TREE_CODE(i32* %83)
  %85 = load i64, i64* @COMPONENT_REF, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %270

87:                                               ; preds = %81
  %88 = load i32, i32* %6, align 4
  %89 = call i32* @MEM_EXPR(i32 %88)
  store i32* %89, i32** %7, align 8
  store i64 -1, i64* %8, align 8
  store i64 -1, i64* %9, align 8
  %90 = load i32*, i32** %3, align 8
  store i32* %90, i32** %10, align 8
  br label %91

91:                                               ; preds = %123, %87
  %92 = load i32*, i32** %10, align 8
  %93 = call i64 @TREE_CODE(i32* %92)
  %94 = load i64, i64* @ARRAY_REF, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %121, label %96

96:                                               ; preds = %91
  %97 = load i32*, i32** %10, align 8
  %98 = call i64 @TREE_CODE(i32* %97)
  %99 = load i64, i64* @NOP_EXPR, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %121, label %101

101:                                              ; preds = %96
  %102 = load i32*, i32** %10, align 8
  %103 = call i64 @TREE_CODE(i32* %102)
  %104 = load i64, i64* @CONVERT_EXPR, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %121, label %106

106:                                              ; preds = %101
  %107 = load i32*, i32** %10, align 8
  %108 = call i64 @TREE_CODE(i32* %107)
  %109 = load i64, i64* @NON_LVALUE_EXPR, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %121, label %111

111:                                              ; preds = %106
  %112 = load i32*, i32** %10, align 8
  %113 = call i64 @TREE_CODE(i32* %112)
  %114 = load i64, i64* @VIEW_CONVERT_EXPR, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %121, label %116

116:                                              ; preds = %111
  %117 = load i32*, i32** %10, align 8
  %118 = call i64 @TREE_CODE(i32* %117)
  %119 = load i64, i64* @SAVE_EXPR, align 8
  %120 = icmp eq i64 %118, %119
  br label %121

121:                                              ; preds = %116, %111, %106, %101, %96, %91
  %122 = phi i1 [ true, %111 ], [ true, %106 ], [ true, %101 ], [ true, %96 ], [ true, %91 ], [ %120, %116 ]
  br i1 %122, label %123, label %126

123:                                              ; preds = %121
  %124 = load i32*, i32** %10, align 8
  %125 = call i32* @TREE_OPERAND(i32* %124, i32 0)
  store i32* %125, i32** %10, align 8
  br label %91

126:                                              ; preds = %121
  %127 = load i32*, i32** %10, align 8
  %128 = call i64 @TREE_CODE(i32* %127)
  %129 = load i64, i64* @COMPONENT_REF, align 8
  %130 = icmp eq i64 %128, %129
  %131 = zext i1 %130 to i32
  %132 = call i32 @gcc_assert(i32 %131)
  %133 = load i32, i32* %6, align 4
  %134 = call i64 @MEM_OFFSET(i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %146

136:                                              ; preds = %126
  %137 = load i32, i32* %6, align 4
  %138 = call i64 @MEM_OFFSET(i32 %137)
  %139 = call i64 @GET_CODE(i64 %138)
  %140 = load i64, i64* @CONST_INT, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %146

142:                                              ; preds = %136
  %143 = load i32, i32* %6, align 4
  %144 = call i64 @MEM_OFFSET(i32 %143)
  %145 = call i64 @INTVAL(i64 %144)
  store i64 %145, i64* %8, align 8
  br label %146

146:                                              ; preds = %142, %136, %126
  %147 = load i64, i64* %8, align 8
  %148 = icmp sge i64 %147, 0
  br i1 %148, label %149, label %159

149:                                              ; preds = %146
  %150 = load i32*, i32** %4, align 8
  %151 = icmp ne i32* %150, null
  br i1 %151, label %152, label %159

152:                                              ; preds = %149
  %153 = load i32*, i32** %4, align 8
  %154 = call i64 @host_integerp(i32* %153, i32 0)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %152
  %157 = load i32*, i32** %4, align 8
  %158 = call i64 @tree_low_cst(i32* %157, i32 0)
  store i64 %158, i64* %9, align 8
  br label %159

159:                                              ; preds = %156, %152, %149, %146
  br label %160

160:                                              ; preds = %240, %159
  %161 = load i32*, i32** %10, align 8
  %162 = call i64 @TREE_CODE(i32* %161)
  %163 = load i64, i64* @COMPONENT_REF, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %165, label %245

165:                                              ; preds = %160
  %166 = load i32*, i32** %10, align 8
  %167 = call i32* @TREE_OPERAND(i32* %166, i32 1)
  store i32* %167, i32** %11, align 8
  %168 = load i32*, i32** %11, align 8
  %169 = call i32 @DECL_BIT_FIELD(i32* %168)
  %170 = icmp ne i32 %169, 0
  %171 = xor i1 %170, true
  %172 = zext i1 %171 to i32
  %173 = call i32 @gcc_assert(i32 %172)
  %174 = load i32*, i32** %7, align 8
  %175 = call i64 @TREE_CODE(i32* %174)
  %176 = load i64, i64* @COMPONENT_REF, align 8
  %177 = icmp eq i64 %175, %176
  %178 = zext i1 %177 to i32
  %179 = call i32 @gcc_assert(i32 %178)
  %180 = load i32*, i32** %11, align 8
  %181 = load i32*, i32** %7, align 8
  %182 = call i32* @TREE_OPERAND(i32* %181, i32 1)
  %183 = icmp eq i32* %180, %182
  %184 = zext i1 %183 to i32
  %185 = call i32 @gcc_assert(i32 %184)
  %186 = load i64, i64* %9, align 8
  %187 = icmp sge i64 %186, 0
  br i1 %187, label %188, label %219

188:                                              ; preds = %165
  %189 = load i32*, i32** %10, align 8
  %190 = call i32* @TREE_TYPE(i32* %189)
  %191 = call i32* @TYPE_SIZE_UNIT(i32* %190)
  %192 = icmp ne i32* %191, null
  br i1 %192, label %193, label %219

193:                                              ; preds = %188
  %194 = load i32*, i32** %10, align 8
  %195 = call i32* @TREE_TYPE(i32* %194)
  %196 = call i32* @TYPE_SIZE_UNIT(i32* %195)
  %197 = call i64 @host_integerp(i32* %196, i32 0)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %219

199:                                              ; preds = %193
  %200 = load i32*, i32** %10, align 8
  %201 = call i32* @TREE_TYPE(i32* %200)
  %202 = call i32* @TYPE_SIZE_UNIT(i32* %201)
  %203 = call i64 @tree_low_cst(i32* %202, i32 0)
  store i64 %203, i64* %12, align 8
  %204 = load i64, i64* %8, align 8
  %205 = load i64, i64* %12, align 8
  %206 = icmp sle i64 %204, %205
  br i1 %206, label %207, label %218

207:                                              ; preds = %199
  %208 = load i64, i64* %9, align 8
  %209 = load i64, i64* %12, align 8
  %210 = icmp sle i64 %208, %209
  br i1 %210, label %211, label %218

211:                                              ; preds = %207
  %212 = load i64, i64* %8, align 8
  %213 = load i64, i64* %9, align 8
  %214 = add nsw i64 %212, %213
  %215 = load i64, i64* %12, align 8
  %216 = icmp sle i64 %214, %215
  br i1 %216, label %217, label %218

217:                                              ; preds = %211
  br label %245

218:                                              ; preds = %211, %207, %199
  br label %219

219:                                              ; preds = %218, %193, %188, %165
  %220 = load i64, i64* %8, align 8
  %221 = icmp sge i64 %220, 0
  br i1 %221, label %222, label %239

222:                                              ; preds = %219
  %223 = load i32*, i32** %11, align 8
  %224 = call i32* @DECL_FIELD_OFFSET(i32* %223)
  %225 = call i64 @host_integerp(i32* %224, i32 0)
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %239

227:                                              ; preds = %222
  %228 = load i32*, i32** %11, align 8
  %229 = call i32* @DECL_FIELD_OFFSET(i32* %228)
  %230 = call i64 @tree_low_cst(i32* %229, i32 0)
  %231 = load i32*, i32** %11, align 8
  %232 = call i32* @DECL_FIELD_BIT_OFFSET(i32* %231)
  %233 = call i64 @tree_low_cst(i32* %232, i32 1)
  %234 = load i64, i64* @BITS_PER_UNIT, align 8
  %235 = sdiv i64 %233, %234
  %236 = add nsw i64 %230, %235
  %237 = load i64, i64* %8, align 8
  %238 = add nsw i64 %237, %236
  store i64 %238, i64* %8, align 8
  br label %240

239:                                              ; preds = %222, %219
  store i64 -1, i64* %8, align 8
  store i64 -1, i64* %9, align 8
  br label %240

240:                                              ; preds = %239, %227
  %241 = load i32*, i32** %7, align 8
  %242 = call i32* @TREE_OPERAND(i32* %241, i32 0)
  store i32* %242, i32** %7, align 8
  %243 = load i32*, i32** %10, align 8
  %244 = call i32* @TREE_OPERAND(i32* %243, i32 0)
  store i32* %244, i32** %10, align 8
  br label %160

245:                                              ; preds = %217, %160
  %246 = load i32*, i32** %7, align 8
  %247 = icmp eq i32* %246, null
  br i1 %247, label %248, label %249

248:                                              ; preds = %245
  store i64 -1, i64* %8, align 8
  br label %249

249:                                              ; preds = %248, %245
  %250 = load i32*, i32** %7, align 8
  %251 = load i32, i32* %6, align 4
  %252 = call i32* @MEM_EXPR(i32 %251)
  %253 = icmp ne i32* %250, %252
  br i1 %253, label %254, label %269

254:                                              ; preds = %249
  %255 = load i32, i32* %6, align 4
  %256 = load i32*, i32** %7, align 8
  %257 = call i32 @set_mem_expr(i32 %255, i32* %256)
  %258 = load i32, i32* %6, align 4
  %259 = load i64, i64* %8, align 8
  %260 = icmp sge i64 %259, 0
  br i1 %260, label %261, label %264

261:                                              ; preds = %254
  %262 = load i64, i64* %8, align 8
  %263 = call i32 @GEN_INT(i64 %262)
  br label %266

264:                                              ; preds = %254
  %265 = load i32, i32* @NULL_RTX, align 4
  br label %266

266:                                              ; preds = %264, %261
  %267 = phi i32 [ %263, %261 ], [ %265, %264 ]
  %268 = call i32 @set_mem_offset(i32 %258, i32 %267)
  br label %269

269:                                              ; preds = %266, %249
  br label %270

270:                                              ; preds = %269, %81, %74
  %271 = load i32, i32* %6, align 4
  %272 = call i32 @set_mem_alias_set(i32 %271, i32 0)
  %273 = load i32, i32* %6, align 4
  %274 = load i32, i32* @NULL_RTX, align 4
  %275 = call i32 @set_mem_size(i32 %273, i32 %274)
  br label %276

276:                                              ; preds = %270, %71
  %277 = load i32, i32* %6, align 4
  ret i32 %277
}

declare dso_local i32 @expand_expr(i32*, i32, i32, i32) #1

declare dso_local i32 @gen_rtx_MEM(i32, i32) #1

declare dso_local i32 @memory_address(i32, i32) #1

declare dso_local i64 @TREE_CODE(i32*) #1

declare dso_local i64 @POINTER_TYPE_P(i32*) #1

declare dso_local i32* @TREE_TYPE(i32*) #1

declare dso_local i32* @TREE_OPERAND(i32*, i32) #1

declare dso_local i32* @build1(i32, i32*, i32*) #1

declare dso_local i32 @set_mem_attributes(i32, i32*, i32) #1

declare dso_local i32* @MEM_EXPR(i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @MEM_OFFSET(i32) #1

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i64 @INTVAL(i64) #1

declare dso_local i64 @host_integerp(i32*, i32) #1

declare dso_local i64 @tree_low_cst(i32*, i32) #1

declare dso_local i32 @DECL_BIT_FIELD(i32*) #1

declare dso_local i32* @TYPE_SIZE_UNIT(i32*) #1

declare dso_local i32* @DECL_FIELD_OFFSET(i32*) #1

declare dso_local i32* @DECL_FIELD_BIT_OFFSET(i32*) #1

declare dso_local i32 @set_mem_expr(i32, i32*) #1

declare dso_local i32 @set_mem_offset(i32, i32) #1

declare dso_local i32 @GEN_INT(i64) #1

declare dso_local i32 @set_mem_alias_set(i32, i32) #1

declare dso_local i32 @set_mem_size(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
