; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_ada_evaluate_subexp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_ada_evaluate_subexp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.value = type { i32 }
%struct.expression = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, %struct.type* }

@EVAL_SKIP = common dso_local global i32 0, align 4
@lval_memory = common dso_local global i32 0, align 4
@EVAL_AVOID_SIDE_EFFECTS = common dso_local global i32 0, align 4
@not_lval = common dso_local global i32 0, align 4
@NULL_TYPE = common dso_local global %struct.type* null, align 8
@OP_NULL = common dso_local global i32 0, align 4
@EVAL_NORMAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"Fixed-point values must be assigned to fixed-point variables\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"Operands of fixed-point addition must have the same type\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"Operands of fixed-point subtraction must have the same type\00", align 1
@BINOP_REM = common dso_local global i32 0, align 4
@BINOP_MOD = common dso_local global i32 0, align 4
@TYPE_CODE_REF = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"cannot subscript or call something of type `%s'\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"cannot subscript or call a record\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"wrong number of subscripts; expecting %d\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"element type of array unknown\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"Internal error in evaluate_subexp\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"Attempt to dereference null array pointer.\00", align 1
@TYPE_CODE_INT = common dso_local global i32 0, align 4
@builtin_type_int = common dso_local global %struct.type* null, align 8
@.str.9 = private unnamed_addr constant [49 x i8] c"Attempt to take contents of a non-pointer value.\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"record\00", align 1
@builtin_type_void = common dso_local global %struct.type* null, align 8
@.str.11 = private unnamed_addr constant [44 x i8] c"Attempt to use a type name as an expression\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"record access\00", align 1
@builtin_type_long = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.value* @ada_evaluate_subexp(%struct.type* %0, %struct.expression* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.value*, align 8
  %6 = alloca %struct.type*, align 8
  %7 = alloca %struct.expression*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.value*, align 8
  %17 = alloca %struct.value*, align 8
  %18 = alloca %struct.value*, align 8
  %19 = alloca %struct.type*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.value**, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.value*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.type*, align 8
  %27 = alloca %struct.type*, align 8
  store %struct.type* %0, %struct.type** %6, align 8
  store %struct.expression* %1, %struct.expression** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.value* null, %struct.value** %16, align 8
  store %struct.value* null, %struct.value** %17, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %15, align 4
  %30 = load i32*, i32** %8, align 8
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 4
  %33 = load %struct.expression*, %struct.expression** %7, align 8
  %34 = getelementptr inbounds %struct.expression, %struct.expression* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i32, i32* %15, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  switch i32 %41, label %42 [
    i32 131, label %52
    i32 148, label %129
    i32 149, label %190
    i32 144, label %241
    i32 145, label %292
    i32 147, label %292
    i32 129, label %361
    i32 140, label %395
    i32 143, label %444
    i32 142, label %519
    i32 137, label %750
    i32 146, label %858
    i32 128, label %901
    i32 132, label %924
    i32 130, label %947
    i32 138, label %1039
    i32 141, label %1097
    i32 139, label %1116
  ]

42:                                               ; preds = %4
  %43 = load i32*, i32** %8, align 8
  %44 = load i32, i32* %43, align 4
  %45 = sub nsw i32 %44, 1
  store i32 %45, i32* %43, align 4
  %46 = load %struct.type*, %struct.type** %6, align 8
  %47 = load %struct.expression*, %struct.expression** %7, align 8
  %48 = load i32*, i32** %8, align 8
  %49 = load i32, i32* %9, align 4
  %50 = call %struct.value* @evaluate_subexp_standard(%struct.type* %46, %struct.expression* %47, i32* %48, i32 %49)
  %51 = call %struct.value* @unwrap_value(%struct.value* %50)
  store %struct.value* %51, %struct.value** %5, align 8
  br label %1177

52:                                               ; preds = %4
  %53 = load i32*, i32** %8, align 8
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 2
  store i32 %55, i32* %53, align 4
  %56 = load %struct.expression*, %struct.expression** %7, align 8
  %57 = getelementptr inbounds %struct.expression, %struct.expression* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = load i32, i32* %15, align 4
  %60 = add nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 4
  %64 = load %struct.type*, %struct.type** %63, align 8
  store %struct.type* %64, %struct.type** %19, align 8
  %65 = load %struct.type*, %struct.type** %19, align 8
  %66 = load %struct.expression*, %struct.expression** %7, align 8
  %67 = load i32*, i32** %8, align 8
  %68 = load i32, i32* %9, align 4
  %69 = call %struct.value* @evaluate_subexp(%struct.type* %65, %struct.expression* %66, i32* %67, i32 %68)
  store %struct.value* %69, %struct.value** %16, align 8
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* @EVAL_SKIP, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %52
  br label %1174

74:                                               ; preds = %52
  %75 = load %struct.type*, %struct.type** %19, align 8
  %76 = load %struct.value*, %struct.value** %16, align 8
  %77 = call %struct.type* @VALUE_TYPE(%struct.value* %76)
  %78 = call %struct.type* @check_typedef(%struct.type* %77)
  %79 = icmp ne %struct.type* %75, %78
  br i1 %79, label %80, label %127

80:                                               ; preds = %74
  %81 = load %struct.type*, %struct.type** %19, align 8
  %82 = call i32 @ada_is_fixed_point_type(%struct.type* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %80
  %85 = load %struct.type*, %struct.type** %19, align 8
  %86 = load %struct.value*, %struct.value** %16, align 8
  %87 = call %struct.value* @cast_to_fixed(%struct.type* %85, %struct.value* %86)
  store %struct.value* %87, %struct.value** %16, align 8
  br label %126

88:                                               ; preds = %80
  %89 = load %struct.value*, %struct.value** %16, align 8
  %90 = call %struct.type* @VALUE_TYPE(%struct.value* %89)
  %91 = call i32 @ada_is_fixed_point_type(%struct.type* %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %88
  %94 = load %struct.type*, %struct.type** %19, align 8
  %95 = load %struct.value*, %struct.value** %16, align 8
  %96 = call %struct.value* @cast_from_fixed_to_double(%struct.value* %95)
  %97 = call %struct.value* @value_cast(%struct.type* %94, %struct.value* %96)
  store %struct.value* %97, %struct.value** %16, align 8
  br label %125

98:                                               ; preds = %88
  %99 = load %struct.value*, %struct.value** %16, align 8
  %100 = call i32 @VALUE_LVAL(%struct.value* %99)
  %101 = load i32, i32* @lval_memory, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %120

103:                                              ; preds = %98
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* @EVAL_AVOID_SIDE_EFFECTS, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %112

107:                                              ; preds = %103
  %108 = load %struct.type*, %struct.type** %19, align 8
  %109 = call %struct.type* @to_static_fixed_type(%struct.type* %108)
  %110 = load i32, i32* @not_lval, align 4
  %111 = call %struct.value* @value_zero(%struct.type* %109, i32 %110)
  store %struct.value* %111, %struct.value** %5, align 8
  br label %1177

112:                                              ; preds = %103
  %113 = load %struct.type*, %struct.type** %19, align 8
  %114 = load %struct.value*, %struct.value** %16, align 8
  %115 = call i64 @VALUE_ADDRESS(%struct.value* %114)
  %116 = load %struct.value*, %struct.value** %16, align 8
  %117 = call i64 @VALUE_OFFSET(%struct.value* %116)
  %118 = add nsw i64 %115, %117
  %119 = call %struct.value* @ada_to_fixed_value(%struct.type* %113, i32 0, i64 %118, %struct.value* null)
  store %struct.value* %119, %struct.value** %16, align 8
  br label %124

120:                                              ; preds = %98
  %121 = load %struct.type*, %struct.type** %19, align 8
  %122 = load %struct.value*, %struct.value** %16, align 8
  %123 = call %struct.value* @value_cast(%struct.type* %121, %struct.value* %122)
  store %struct.value* %123, %struct.value** %16, align 8
  br label %124

124:                                              ; preds = %120, %112
  br label %125

125:                                              ; preds = %124, %93
  br label %126

126:                                              ; preds = %125, %84
  br label %127

127:                                              ; preds = %126, %74
  %128 = load %struct.value*, %struct.value** %16, align 8
  store %struct.value* %128, %struct.value** %5, align 8
  br label %1177

129:                                              ; preds = %4
  %130 = load %struct.type*, %struct.type** @NULL_TYPE, align 8
  %131 = load %struct.expression*, %struct.expression** %7, align 8
  %132 = load i32*, i32** %8, align 8
  %133 = load i32, i32* %9, align 4
  %134 = call %struct.value* @evaluate_subexp(%struct.type* %130, %struct.expression* %131, i32* %132, i32 %133)
  store %struct.value* %134, %struct.value** %16, align 8
  %135 = load %struct.value*, %struct.value** %16, align 8
  %136 = call %struct.type* @VALUE_TYPE(%struct.value* %135)
  %137 = load %struct.expression*, %struct.expression** %7, align 8
  %138 = load i32*, i32** %8, align 8
  %139 = load i32, i32* %9, align 4
  %140 = call %struct.value* @evaluate_subexp(%struct.type* %136, %struct.expression* %137, i32* %138, i32 %139)
  store %struct.value* %140, %struct.value** %17, align 8
  %141 = load i32, i32* %9, align 4
  %142 = load i32, i32* @EVAL_SKIP, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %148, label %144

144:                                              ; preds = %129
  %145 = load i32, i32* %9, align 4
  %146 = load i32, i32* @EVAL_AVOID_SIDE_EFFECTS, align 4
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %148, label %150

148:                                              ; preds = %144, %129
  %149 = load %struct.value*, %struct.value** %16, align 8
  store %struct.value* %149, %struct.value** %5, align 8
  br label %1177

150:                                              ; preds = %144
  %151 = load i32, i32* %10, align 4
  %152 = load %struct.value*, %struct.value** %16, align 8
  %153 = load %struct.value*, %struct.value** %17, align 8
  %154 = call i32 @binop_user_defined_p(i32 %151, %struct.value* %152, %struct.value* %153)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %163

156:                                              ; preds = %150
  %157 = load %struct.value*, %struct.value** %16, align 8
  %158 = load %struct.value*, %struct.value** %17, align 8
  %159 = load i32, i32* %10, align 4
  %160 = load i32, i32* @OP_NULL, align 4
  %161 = load i32, i32* @EVAL_NORMAL, align 4
  %162 = call %struct.value* @value_x_binop(%struct.value* %157, %struct.value* %158, i32 %159, i32 %160, i32 %161)
  store %struct.value* %162, %struct.value** %5, align 8
  br label %1177

163:                                              ; preds = %150
  %164 = load %struct.value*, %struct.value** %16, align 8
  %165 = call %struct.type* @VALUE_TYPE(%struct.value* %164)
  %166 = call i32 @ada_is_fixed_point_type(%struct.type* %165)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %173

168:                                              ; preds = %163
  %169 = load %struct.value*, %struct.value** %16, align 8
  %170 = call %struct.type* @VALUE_TYPE(%struct.value* %169)
  %171 = load %struct.value*, %struct.value** %17, align 8
  %172 = call %struct.value* @cast_to_fixed(%struct.type* %170, %struct.value* %171)
  store %struct.value* %172, %struct.value** %17, align 8
  br label %186

173:                                              ; preds = %163
  %174 = load %struct.value*, %struct.value** %17, align 8
  %175 = call %struct.type* @VALUE_TYPE(%struct.value* %174)
  %176 = call i32 @ada_is_fixed_point_type(%struct.type* %175)
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %180

178:                                              ; preds = %173
  %179 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  br label %185

180:                                              ; preds = %173
  %181 = load %struct.value*, %struct.value** %16, align 8
  %182 = call %struct.type* @VALUE_TYPE(%struct.value* %181)
  %183 = load %struct.value*, %struct.value** %17, align 8
  %184 = call %struct.value* @coerce_for_assign(%struct.type* %182, %struct.value* %183)
  store %struct.value* %184, %struct.value** %17, align 8
  br label %185

185:                                              ; preds = %180, %178
  br label %186

186:                                              ; preds = %185, %168
  %187 = load %struct.value*, %struct.value** %16, align 8
  %188 = load %struct.value*, %struct.value** %17, align 8
  %189 = call %struct.value* @ada_value_assign(%struct.value* %187, %struct.value* %188)
  store %struct.value* %189, %struct.value** %5, align 8
  br label %1177

190:                                              ; preds = %4
  %191 = load %struct.expression*, %struct.expression** %7, align 8
  %192 = load i32*, i32** %8, align 8
  %193 = load i32, i32* %9, align 4
  %194 = call %struct.value* @evaluate_subexp_with_coercion(%struct.expression* %191, i32* %192, i32 %193)
  store %struct.value* %194, %struct.value** %16, align 8
  %195 = load %struct.expression*, %struct.expression** %7, align 8
  %196 = load i32*, i32** %8, align 8
  %197 = load i32, i32* %9, align 4
  %198 = call %struct.value* @evaluate_subexp_with_coercion(%struct.expression* %195, i32* %196, i32 %197)
  store %struct.value* %198, %struct.value** %17, align 8
  %199 = load i32, i32* %9, align 4
  %200 = load i32, i32* @EVAL_SKIP, align 4
  %201 = icmp eq i32 %199, %200
  br i1 %201, label %202, label %203

202:                                              ; preds = %190
  br label %1174

203:                                              ; preds = %190
  %204 = load i32, i32* %10, align 4
  %205 = load %struct.value*, %struct.value** %16, align 8
  %206 = load %struct.value*, %struct.value** %17, align 8
  %207 = call i32 @binop_user_defined_p(i32 %204, %struct.value* %205, %struct.value* %206)
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %216

209:                                              ; preds = %203
  %210 = load %struct.value*, %struct.value** %16, align 8
  %211 = load %struct.value*, %struct.value** %17, align 8
  %212 = load i32, i32* %10, align 4
  %213 = load i32, i32* @OP_NULL, align 4
  %214 = load i32, i32* @EVAL_NORMAL, align 4
  %215 = call %struct.value* @value_x_binop(%struct.value* %210, %struct.value* %211, i32 %212, i32 %213, i32 %214)
  store %struct.value* %215, %struct.value** %5, align 8
  br label %1177

216:                                              ; preds = %203
  %217 = load %struct.value*, %struct.value** %16, align 8
  %218 = call %struct.type* @VALUE_TYPE(%struct.value* %217)
  %219 = call i32 @ada_is_fixed_point_type(%struct.type* %218)
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %226, label %221

221:                                              ; preds = %216
  %222 = load %struct.value*, %struct.value** %17, align 8
  %223 = call %struct.type* @VALUE_TYPE(%struct.value* %222)
  %224 = call i32 @ada_is_fixed_point_type(%struct.type* %223)
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %234

226:                                              ; preds = %221, %216
  %227 = load %struct.value*, %struct.value** %16, align 8
  %228 = call %struct.type* @VALUE_TYPE(%struct.value* %227)
  %229 = load %struct.value*, %struct.value** %17, align 8
  %230 = call %struct.type* @VALUE_TYPE(%struct.value* %229)
  %231 = icmp ne %struct.type* %228, %230
  br i1 %231, label %232, label %234

232:                                              ; preds = %226
  %233 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  br label %234

234:                                              ; preds = %232, %226, %221
  %235 = load %struct.value*, %struct.value** %16, align 8
  %236 = call %struct.type* @VALUE_TYPE(%struct.value* %235)
  %237 = load %struct.value*, %struct.value** %16, align 8
  %238 = load %struct.value*, %struct.value** %17, align 8
  %239 = call %struct.value* @value_add(%struct.value* %237, %struct.value* %238)
  %240 = call %struct.value* @value_cast(%struct.type* %236, %struct.value* %239)
  store %struct.value* %240, %struct.value** %5, align 8
  br label %1177

241:                                              ; preds = %4
  %242 = load %struct.expression*, %struct.expression** %7, align 8
  %243 = load i32*, i32** %8, align 8
  %244 = load i32, i32* %9, align 4
  %245 = call %struct.value* @evaluate_subexp_with_coercion(%struct.expression* %242, i32* %243, i32 %244)
  store %struct.value* %245, %struct.value** %16, align 8
  %246 = load %struct.expression*, %struct.expression** %7, align 8
  %247 = load i32*, i32** %8, align 8
  %248 = load i32, i32* %9, align 4
  %249 = call %struct.value* @evaluate_subexp_with_coercion(%struct.expression* %246, i32* %247, i32 %248)
  store %struct.value* %249, %struct.value** %17, align 8
  %250 = load i32, i32* %9, align 4
  %251 = load i32, i32* @EVAL_SKIP, align 4
  %252 = icmp eq i32 %250, %251
  br i1 %252, label %253, label %254

253:                                              ; preds = %241
  br label %1174

254:                                              ; preds = %241
  %255 = load i32, i32* %10, align 4
  %256 = load %struct.value*, %struct.value** %16, align 8
  %257 = load %struct.value*, %struct.value** %17, align 8
  %258 = call i32 @binop_user_defined_p(i32 %255, %struct.value* %256, %struct.value* %257)
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %267

260:                                              ; preds = %254
  %261 = load %struct.value*, %struct.value** %16, align 8
  %262 = load %struct.value*, %struct.value** %17, align 8
  %263 = load i32, i32* %10, align 4
  %264 = load i32, i32* @OP_NULL, align 4
  %265 = load i32, i32* @EVAL_NORMAL, align 4
  %266 = call %struct.value* @value_x_binop(%struct.value* %261, %struct.value* %262, i32 %263, i32 %264, i32 %265)
  store %struct.value* %266, %struct.value** %5, align 8
  br label %1177

267:                                              ; preds = %254
  %268 = load %struct.value*, %struct.value** %16, align 8
  %269 = call %struct.type* @VALUE_TYPE(%struct.value* %268)
  %270 = call i32 @ada_is_fixed_point_type(%struct.type* %269)
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %277, label %272

272:                                              ; preds = %267
  %273 = load %struct.value*, %struct.value** %17, align 8
  %274 = call %struct.type* @VALUE_TYPE(%struct.value* %273)
  %275 = call i32 @ada_is_fixed_point_type(%struct.type* %274)
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %285

277:                                              ; preds = %272, %267
  %278 = load %struct.value*, %struct.value** %16, align 8
  %279 = call %struct.type* @VALUE_TYPE(%struct.value* %278)
  %280 = load %struct.value*, %struct.value** %17, align 8
  %281 = call %struct.type* @VALUE_TYPE(%struct.value* %280)
  %282 = icmp ne %struct.type* %279, %281
  br i1 %282, label %283, label %285

283:                                              ; preds = %277
  %284 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0))
  br label %285

285:                                              ; preds = %283, %277, %272
  %286 = load %struct.value*, %struct.value** %16, align 8
  %287 = call %struct.type* @VALUE_TYPE(%struct.value* %286)
  %288 = load %struct.value*, %struct.value** %16, align 8
  %289 = load %struct.value*, %struct.value** %17, align 8
  %290 = call %struct.value* @value_sub(%struct.value* %288, %struct.value* %289)
  %291 = call %struct.value* @value_cast(%struct.type* %287, %struct.value* %290)
  store %struct.value* %291, %struct.value** %5, align 8
  br label %1177

292:                                              ; preds = %4, %4
  %293 = load %struct.type*, %struct.type** @NULL_TYPE, align 8
  %294 = load %struct.expression*, %struct.expression** %7, align 8
  %295 = load i32*, i32** %8, align 8
  %296 = load i32, i32* %9, align 4
  %297 = call %struct.value* @evaluate_subexp(%struct.type* %293, %struct.expression* %294, i32* %295, i32 %296)
  store %struct.value* %297, %struct.value** %16, align 8
  %298 = load %struct.type*, %struct.type** @NULL_TYPE, align 8
  %299 = load %struct.expression*, %struct.expression** %7, align 8
  %300 = load i32*, i32** %8, align 8
  %301 = load i32, i32* %9, align 4
  %302 = call %struct.value* @evaluate_subexp(%struct.type* %298, %struct.expression* %299, i32* %300, i32 %301)
  store %struct.value* %302, %struct.value** %17, align 8
  %303 = load i32, i32* %9, align 4
  %304 = load i32, i32* @EVAL_SKIP, align 4
  %305 = icmp eq i32 %303, %304
  br i1 %305, label %306, label %307

306:                                              ; preds = %292
  br label %1174

307:                                              ; preds = %292
  %308 = load i32, i32* %10, align 4
  %309 = load %struct.value*, %struct.value** %16, align 8
  %310 = load %struct.value*, %struct.value** %17, align 8
  %311 = call i32 @binop_user_defined_p(i32 %308, %struct.value* %309, %struct.value* %310)
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %320

313:                                              ; preds = %307
  %314 = load %struct.value*, %struct.value** %16, align 8
  %315 = load %struct.value*, %struct.value** %17, align 8
  %316 = load i32, i32* %10, align 4
  %317 = load i32, i32* @OP_NULL, align 4
  %318 = load i32, i32* @EVAL_NORMAL, align 4
  %319 = call %struct.value* @value_x_binop(%struct.value* %314, %struct.value* %315, i32 %316, i32 %317, i32 %318)
  store %struct.value* %319, %struct.value** %5, align 8
  br label %1177

320:                                              ; preds = %307
  %321 = load i32, i32* %9, align 4
  %322 = load i32, i32* @EVAL_AVOID_SIDE_EFFECTS, align 4
  %323 = icmp eq i32 %321, %322
  br i1 %323, label %324, label %340

324:                                              ; preds = %320
  %325 = load i32, i32* %10, align 4
  %326 = icmp eq i32 %325, 147
  br i1 %326, label %335, label %327

327:                                              ; preds = %324
  %328 = load i32, i32* %10, align 4
  %329 = load i32, i32* @BINOP_REM, align 4
  %330 = icmp eq i32 %328, %329
  br i1 %330, label %335, label %331

331:                                              ; preds = %327
  %332 = load i32, i32* %10, align 4
  %333 = load i32, i32* @BINOP_MOD, align 4
  %334 = icmp eq i32 %332, %333
  br i1 %334, label %335, label %340

335:                                              ; preds = %331, %327, %324
  %336 = load %struct.value*, %struct.value** %16, align 8
  %337 = call %struct.type* @VALUE_TYPE(%struct.value* %336)
  %338 = load i32, i32* @not_lval, align 4
  %339 = call %struct.value* @value_zero(%struct.type* %337, i32 %338)
  store %struct.value* %339, %struct.value** %5, align 8
  br label %1177

340:                                              ; preds = %331, %320
  %341 = load %struct.value*, %struct.value** %16, align 8
  %342 = call %struct.type* @VALUE_TYPE(%struct.value* %341)
  %343 = call i32 @ada_is_fixed_point_type(%struct.type* %342)
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %348

345:                                              ; preds = %340
  %346 = load %struct.value*, %struct.value** %16, align 8
  %347 = call %struct.value* @cast_from_fixed_to_double(%struct.value* %346)
  store %struct.value* %347, %struct.value** %16, align 8
  br label %348

348:                                              ; preds = %345, %340
  %349 = load %struct.value*, %struct.value** %17, align 8
  %350 = call %struct.type* @VALUE_TYPE(%struct.value* %349)
  %351 = call i32 @ada_is_fixed_point_type(%struct.type* %350)
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %353, label %356

353:                                              ; preds = %348
  %354 = load %struct.value*, %struct.value** %17, align 8
  %355 = call %struct.value* @cast_from_fixed_to_double(%struct.value* %354)
  store %struct.value* %355, %struct.value** %17, align 8
  br label %356

356:                                              ; preds = %353, %348
  %357 = load %struct.value*, %struct.value** %16, align 8
  %358 = load %struct.value*, %struct.value** %17, align 8
  %359 = load i32, i32* %10, align 4
  %360 = call %struct.value* @value_binop(%struct.value* %357, %struct.value* %358, i32 %359)
  store %struct.value* %360, %struct.value** %5, align 8
  br label %1177

361:                                              ; preds = %4
  %362 = load %struct.type*, %struct.type** @NULL_TYPE, align 8
  %363 = load %struct.expression*, %struct.expression** %7, align 8
  %364 = load i32*, i32** %8, align 8
  %365 = load i32, i32* %9, align 4
  %366 = call %struct.value* @evaluate_subexp(%struct.type* %362, %struct.expression* %363, i32* %364, i32 %365)
  store %struct.value* %366, %struct.value** %16, align 8
  %367 = load i32, i32* %9, align 4
  %368 = load i32, i32* @EVAL_SKIP, align 4
  %369 = icmp eq i32 %367, %368
  br i1 %369, label %370, label %371

370:                                              ; preds = %361
  br label %1174

371:                                              ; preds = %361
  %372 = load i32, i32* %10, align 4
  %373 = load %struct.value*, %struct.value** %16, align 8
  %374 = call i32 @unop_user_defined_p(i32 %372, %struct.value* %373)
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %376, label %381

376:                                              ; preds = %371
  %377 = load %struct.value*, %struct.value** %16, align 8
  %378 = load i32, i32* %10, align 4
  %379 = load i32, i32* @EVAL_NORMAL, align 4
  %380 = call %struct.value* @value_x_unop(%struct.value* %377, i32 %378, i32 %379)
  store %struct.value* %380, %struct.value** %5, align 8
  br label %1177

381:                                              ; preds = %371
  %382 = load %struct.value*, %struct.value** %16, align 8
  %383 = call %struct.type* @VALUE_TYPE(%struct.value* %382)
  %384 = call i32 @ada_is_fixed_point_type(%struct.type* %383)
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %386, label %392

386:                                              ; preds = %381
  %387 = load %struct.value*, %struct.value** %16, align 8
  %388 = call %struct.type* @VALUE_TYPE(%struct.value* %387)
  %389 = load %struct.value*, %struct.value** %16, align 8
  %390 = call %struct.value* @value_neg(%struct.value* %389)
  %391 = call %struct.value* @value_cast(%struct.type* %388, %struct.value* %390)
  store %struct.value* %391, %struct.value** %5, align 8
  br label %1177

392:                                              ; preds = %381
  %393 = load %struct.value*, %struct.value** %16, align 8
  %394 = call %struct.value* @value_neg(%struct.value* %393)
  store %struct.value* %394, %struct.value** %5, align 8
  br label %1177

395:                                              ; preds = %4
  %396 = load i32*, i32** %8, align 8
  %397 = load i32, i32* %396, align 4
  %398 = sub nsw i32 %397, 1
  store i32 %398, i32* %396, align 4
  %399 = load i32, i32* %9, align 4
  %400 = load i32, i32* @EVAL_SKIP, align 4
  %401 = icmp eq i32 %399, %400
  br i1 %401, label %402, label %406

402:                                              ; preds = %395
  %403 = load i32*, i32** %8, align 8
  %404 = load i32, i32* %403, align 4
  %405 = add nsw i32 %404, 4
  store i32 %405, i32* %403, align 4
  br label %1174

406:                                              ; preds = %395
  %407 = load i32, i32* %9, align 4
  %408 = load i32, i32* @EVAL_AVOID_SIDE_EFFECTS, align 4
  %409 = icmp eq i32 %407, %408
  br i1 %409, label %410, label %428

410:                                              ; preds = %406
  %411 = load i32*, i32** %8, align 8
  %412 = load i32, i32* %411, align 4
  %413 = add nsw i32 %412, 4
  store i32 %413, i32* %411, align 4
  %414 = load %struct.expression*, %struct.expression** %7, align 8
  %415 = getelementptr inbounds %struct.expression, %struct.expression* %414, i32 0, i32 0
  %416 = load %struct.TYPE_2__*, %struct.TYPE_2__** %415, align 8
  %417 = load i32, i32* %15, align 4
  %418 = add nsw i32 %417, 2
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %416, i64 %419
  %421 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %420, i32 0, i32 3
  %422 = load i32, i32* %421, align 4
  %423 = call i32 @SYMBOL_TYPE(i32 %422)
  %424 = call %struct.type* @static_unwrap_type(i32 %423)
  %425 = call %struct.type* @to_static_fixed_type(%struct.type* %424)
  %426 = load i32, i32* @not_lval, align 4
  %427 = call %struct.value* @value_zero(%struct.type* %425, i32 %426)
  store %struct.value* %427, %struct.value** %5, align 8
  br label %1177

428:                                              ; preds = %406
  %429 = load %struct.type*, %struct.type** %6, align 8
  %430 = load %struct.expression*, %struct.expression** %7, align 8
  %431 = load i32*, i32** %8, align 8
  %432 = load i32, i32* %9, align 4
  %433 = call %struct.value* @evaluate_subexp_standard(%struct.type* %429, %struct.expression* %430, i32* %431, i32 %432)
  %434 = call %struct.value* @unwrap_value(%struct.value* %433)
  store %struct.value* %434, %struct.value** %16, align 8
  %435 = load %struct.value*, %struct.value** %16, align 8
  %436 = call %struct.type* @VALUE_TYPE(%struct.value* %435)
  %437 = load %struct.value*, %struct.value** %16, align 8
  %438 = call i64 @VALUE_ADDRESS(%struct.value* %437)
  %439 = load %struct.value*, %struct.value** %16, align 8
  %440 = call i64 @VALUE_OFFSET(%struct.value* %439)
  %441 = add nsw i64 %438, %440
  %442 = load %struct.value*, %struct.value** %16, align 8
  %443 = call %struct.value* @ada_to_fixed_value(%struct.type* %436, i32 0, i64 %441, %struct.value* %442)
  store %struct.value* %443, %struct.value** %5, align 8
  br label %1177

444:                                              ; preds = %4
  %445 = load i32*, i32** %8, align 8
  %446 = load i32, i32* %445, align 4
  %447 = add nsw i32 %446, 3
  store i32 %447, i32* %445, align 4
  %448 = load %struct.expression*, %struct.expression** %7, align 8
  %449 = getelementptr inbounds %struct.expression, %struct.expression* %448, i32 0, i32 0
  %450 = load %struct.TYPE_2__*, %struct.TYPE_2__** %449, align 8
  %451 = load i32, i32* %15, align 4
  %452 = add nsw i32 %451, 1
  %453 = sext i32 %452 to i64
  %454 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %450, i64 %453
  %455 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %454, i32 0, i32 2
  %456 = load i32, i32* %455, align 8
  %457 = call i32 @longest_to_int(i32 %456)
  store i32 %457, i32* %13, align 4
  %458 = load %struct.expression*, %struct.expression** %7, align 8
  %459 = getelementptr inbounds %struct.expression, %struct.expression* %458, i32 0, i32 0
  %460 = load %struct.TYPE_2__*, %struct.TYPE_2__** %459, align 8
  %461 = load i32, i32* %15, align 4
  %462 = add nsw i32 %461, 2
  %463 = sext i32 %462 to i64
  %464 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %460, i64 %463
  %465 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %464, i32 0, i32 2
  %466 = load i32, i32* %465, align 8
  %467 = call i32 @longest_to_int(i32 %466)
  store i32 %467, i32* %14, align 4
  %468 = load i32, i32* %14, align 4
  %469 = load i32, i32* %13, align 4
  %470 = sub nsw i32 %468, %469
  %471 = add nsw i32 %470, 1
  store i32 %471, i32* %20, align 4
  %472 = load %struct.type*, %struct.type** %6, align 8
  %473 = icmp ne %struct.type* %472, null
  br i1 %473, label %474, label %477

474:                                              ; preds = %444
  %475 = load %struct.type*, %struct.type** %6, align 8
  %476 = call %struct.type* @check_typedef(%struct.type* %475)
  br label %479

477:                                              ; preds = %444
  %478 = load %struct.type*, %struct.type** @NULL_TYPE, align 8
  br label %479

479:                                              ; preds = %477, %474
  %480 = phi %struct.type* [ %476, %474 ], [ %478, %477 ]
  store %struct.type* %480, %struct.type** %19, align 8
  %481 = load i32, i32* %20, align 4
  %482 = add nsw i32 %481, 1
  %483 = sext i32 %482 to i64
  %484 = mul i64 8, %483
  %485 = trunc i64 %484 to i32
  %486 = call i64 @alloca(i32 %485)
  %487 = inttoptr i64 %486 to %struct.value**
  store %struct.value** %487, %struct.value*** %21, align 8
  store i32 0, i32* %12, align 4
  br label %488

488:                                              ; preds = %506, %479
  %489 = load i32, i32* %12, align 4
  %490 = icmp eq i32 %489, 0
  br i1 %490, label %495, label %491

491:                                              ; preds = %488
  %492 = load i32, i32* %12, align 4
  %493 = load i32, i32* %20, align 4
  %494 = icmp slt i32 %492, %493
  br label %495

495:                                              ; preds = %491, %488
  %496 = phi i1 [ true, %488 ], [ %494, %491 ]
  br i1 %496, label %497, label %509

497:                                              ; preds = %495
  %498 = load %struct.expression*, %struct.expression** %7, align 8
  %499 = load i32*, i32** %8, align 8
  %500 = load i32, i32* %9, align 4
  %501 = call %struct.value* @evaluate_subexp_with_coercion(%struct.expression* %498, i32* %499, i32 %500)
  %502 = load %struct.value**, %struct.value*** %21, align 8
  %503 = load i32, i32* %12, align 4
  %504 = sext i32 %503 to i64
  %505 = getelementptr inbounds %struct.value*, %struct.value** %502, i64 %504
  store %struct.value* %501, %struct.value** %505, align 8
  br label %506

506:                                              ; preds = %497
  %507 = load i32, i32* %12, align 4
  %508 = add nsw i32 %507, 1
  store i32 %508, i32* %12, align 4
  br label %488

509:                                              ; preds = %495
  %510 = load i32, i32* %9, align 4
  %511 = load i32, i32* @EVAL_SKIP, align 4
  %512 = icmp eq i32 %510, %511
  br i1 %512, label %513, label %514

513:                                              ; preds = %509
  br label %1174

514:                                              ; preds = %509
  %515 = load i32, i32* %13, align 4
  %516 = load i32, i32* %14, align 4
  %517 = load %struct.value**, %struct.value*** %21, align 8
  %518 = call %struct.value* @value_array(i32 %515, i32 %516, %struct.value** %517)
  store %struct.value* %518, %struct.value** %5, align 8
  br label %1177

519:                                              ; preds = %4
  %520 = load i32*, i32** %8, align 8
  %521 = load i32, i32* %520, align 4
  %522 = add nsw i32 %521, 2
  store i32 %522, i32* %520, align 4
  %523 = load %struct.expression*, %struct.expression** %7, align 8
  %524 = getelementptr inbounds %struct.expression, %struct.expression* %523, i32 0, i32 0
  %525 = load %struct.TYPE_2__*, %struct.TYPE_2__** %524, align 8
  %526 = load i32, i32* %15, align 4
  %527 = add nsw i32 %526, 1
  %528 = sext i32 %527 to i64
  %529 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %525, i64 %528
  %530 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %529, i32 0, i32 2
  %531 = load i32, i32* %530, align 8
  %532 = call i32 @longest_to_int(i32 %531)
  store i32 %532, i32* %20, align 4
  %533 = load i32, i32* %20, align 4
  %534 = add nsw i32 %533, 2
  %535 = sext i32 %534 to i64
  %536 = mul i64 8, %535
  %537 = trunc i64 %536 to i32
  %538 = call i64 @alloca(i32 %537)
  %539 = inttoptr i64 %538 to %struct.value**
  store %struct.value** %539, %struct.value*** %21, align 8
  store i32 0, i32* %12, align 4
  br label %540

540:                                              ; preds = %554, %519
  %541 = load i32, i32* %12, align 4
  %542 = load i32, i32* %20, align 4
  %543 = icmp sle i32 %541, %542
  br i1 %543, label %544, label %557

544:                                              ; preds = %540
  %545 = load %struct.type*, %struct.type** @NULL_TYPE, align 8
  %546 = load %struct.expression*, %struct.expression** %7, align 8
  %547 = load i32*, i32** %8, align 8
  %548 = load i32, i32* %9, align 4
  %549 = call %struct.value* @evaluate_subexp(%struct.type* %545, %struct.expression* %546, i32* %547, i32 %548)
  %550 = load %struct.value**, %struct.value*** %21, align 8
  %551 = load i32, i32* %12, align 4
  %552 = sext i32 %551 to i64
  %553 = getelementptr inbounds %struct.value*, %struct.value** %550, i64 %552
  store %struct.value* %549, %struct.value** %553, align 8
  br label %554

554:                                              ; preds = %544
  %555 = load i32, i32* %12, align 4
  %556 = add nsw i32 %555, 1
  store i32 %556, i32* %12, align 4
  br label %540

557:                                              ; preds = %540
  %558 = load %struct.value**, %struct.value*** %21, align 8
  %559 = load i32, i32* %12, align 4
  %560 = sext i32 %559 to i64
  %561 = getelementptr inbounds %struct.value*, %struct.value** %558, i64 %560
  store %struct.value* null, %struct.value** %561, align 8
  %562 = load i32, i32* %9, align 4
  %563 = load i32, i32* @EVAL_SKIP, align 4
  %564 = icmp eq i32 %562, %563
  br i1 %564, label %565, label %566

565:                                              ; preds = %557
  br label %1174

566:                                              ; preds = %557
  %567 = load %struct.value**, %struct.value*** %21, align 8
  %568 = getelementptr inbounds %struct.value*, %struct.value** %567, i64 0
  %569 = load %struct.value*, %struct.value** %568, align 8
  %570 = call %struct.type* @VALUE_TYPE(%struct.value* %569)
  %571 = call i32 @TYPE_CODE(%struct.type* %570)
  %572 = load i32, i32* @TYPE_CODE_REF, align 4
  %573 = icmp eq i32 %571, %572
  br i1 %573, label %574, label %581

574:                                              ; preds = %566
  %575 = load %struct.value**, %struct.value*** %21, align 8
  %576 = getelementptr inbounds %struct.value*, %struct.value** %575, i64 0
  %577 = load %struct.value*, %struct.value** %576, align 8
  %578 = call %struct.value* @value_addr(%struct.value* %577)
  %579 = load %struct.value**, %struct.value*** %21, align 8
  %580 = getelementptr inbounds %struct.value*, %struct.value** %579, i64 0
  store %struct.value* %578, %struct.value** %580, align 8
  br label %581

581:                                              ; preds = %574, %566
  %582 = load %struct.value**, %struct.value*** %21, align 8
  %583 = getelementptr inbounds %struct.value*, %struct.value** %582, i64 0
  %584 = load %struct.value*, %struct.value** %583, align 8
  %585 = call %struct.type* @VALUE_TYPE(%struct.value* %584)
  %586 = call i32 @ada_is_packed_array_type(%struct.type* %585)
  %587 = icmp ne i32 %586, 0
  br i1 %587, label %588, label %595

588:                                              ; preds = %581
  %589 = load %struct.value**, %struct.value*** %21, align 8
  %590 = getelementptr inbounds %struct.value*, %struct.value** %589, i64 0
  %591 = load %struct.value*, %struct.value** %590, align 8
  %592 = call %struct.value* @ada_coerce_to_simple_array(%struct.value* %591)
  %593 = load %struct.value**, %struct.value*** %21, align 8
  %594 = getelementptr inbounds %struct.value*, %struct.value** %593, i64 0
  store %struct.value* %592, %struct.value** %594, align 8
  br label %595

595:                                              ; preds = %588, %581
  %596 = load %struct.value**, %struct.value*** %21, align 8
  %597 = getelementptr inbounds %struct.value*, %struct.value** %596, i64 0
  %598 = load %struct.value*, %struct.value** %597, align 8
  %599 = call %struct.type* @VALUE_TYPE(%struct.value* %598)
  %600 = call %struct.type* @check_typedef(%struct.type* %599)
  store %struct.type* %600, %struct.type** %19, align 8
  %601 = load %struct.type*, %struct.type** %19, align 8
  %602 = call i32 @TYPE_CODE(%struct.type* %601)
  %603 = icmp eq i32 %602, 134
  br i1 %603, label %604, label %637

604:                                              ; preds = %595
  %605 = load %struct.type*, %struct.type** %19, align 8
  %606 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %605)
  %607 = call %struct.type* @check_typedef(%struct.type* %606)
  %608 = call i32 @TYPE_CODE(%struct.type* %607)
  switch i32 %608, label %629 [
    i32 135, label %609
    i32 136, label %613
    i32 133, label %614
  ]

609:                                              ; preds = %604
  %610 = load %struct.type*, %struct.type** %19, align 8
  %611 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %610)
  %612 = call %struct.type* @check_typedef(%struct.type* %611)
  store %struct.type* %612, %struct.type** %19, align 8
  br label %636

613:                                              ; preds = %604
  br label %636

614:                                              ; preds = %604
  %615 = load i32, i32* %9, align 4
  %616 = load i32, i32* @EVAL_AVOID_SIDE_EFFECTS, align 4
  %617 = icmp ne i32 %615, %616
  br i1 %617, label %618, label %625

618:                                              ; preds = %614
  %619 = load %struct.value**, %struct.value*** %21, align 8
  %620 = getelementptr inbounds %struct.value*, %struct.value** %619, i64 0
  %621 = load %struct.value*, %struct.value** %620, align 8
  %622 = call %struct.value* @ada_value_ind(%struct.value* %621)
  %623 = load %struct.value**, %struct.value*** %21, align 8
  %624 = getelementptr inbounds %struct.value*, %struct.value** %623, i64 0
  store %struct.value* %622, %struct.value** %624, align 8
  br label %625

625:                                              ; preds = %618, %614
  %626 = load %struct.type*, %struct.type** %19, align 8
  %627 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %626)
  %628 = call %struct.type* @check_typedef(%struct.type* %627)
  store %struct.type* %628, %struct.type** %19, align 8
  br label %636

629:                                              ; preds = %604
  %630 = load %struct.value**, %struct.value*** %21, align 8
  %631 = getelementptr inbounds %struct.value*, %struct.value** %630, i64 0
  %632 = load %struct.value*, %struct.value** %631, align 8
  %633 = call %struct.type* @VALUE_TYPE(%struct.value* %632)
  %634 = call i32 @ada_type_name(%struct.type* %633)
  %635 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %634)
  br label %636

636:                                              ; preds = %629, %625, %613, %609
  br label %637

637:                                              ; preds = %636, %595
  %638 = load %struct.type*, %struct.type** %19, align 8
  %639 = call i32 @TYPE_CODE(%struct.type* %638)
  switch i32 %639, label %747 [
    i32 135, label %640
    i32 133, label %656
    i32 136, label %690
    i32 134, label %717
  ]

640:                                              ; preds = %637
  %641 = load i32, i32* %9, align 4
  %642 = load i32, i32* @EVAL_AVOID_SIDE_EFFECTS, align 4
  %643 = icmp eq i32 %641, %642
  br i1 %643, label %644, label %648

644:                                              ; preds = %640
  %645 = load %struct.type*, %struct.type** %19, align 8
  %646 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %645)
  %647 = call %struct.value* @allocate_value(%struct.type* %646)
  store %struct.value* %647, %struct.value** %5, align 8
  br label %1177

648:                                              ; preds = %640
  %649 = load %struct.value**, %struct.value*** %21, align 8
  %650 = getelementptr inbounds %struct.value*, %struct.value** %649, i64 0
  %651 = load %struct.value*, %struct.value** %650, align 8
  %652 = load i32, i32* %20, align 4
  %653 = load %struct.value**, %struct.value*** %21, align 8
  %654 = getelementptr inbounds %struct.value*, %struct.value** %653, i64 1
  %655 = call %struct.value* @call_function_by_hand(%struct.value* %651, i32 %652, %struct.value** %654)
  store %struct.value* %655, %struct.value** %5, align 8
  br label %1177

656:                                              ; preds = %637
  %657 = load %struct.type*, %struct.type** %19, align 8
  %658 = call i32 @ada_array_arity(%struct.type* %657)
  store i32 %658, i32* %22, align 4
  %659 = load %struct.type*, %struct.type** %19, align 8
  %660 = load i32, i32* %20, align 4
  %661 = call %struct.type* @ada_array_element_type(%struct.type* %659, i32 %660)
  store %struct.type* %661, %struct.type** %19, align 8
  %662 = load %struct.type*, %struct.type** %19, align 8
  %663 = icmp eq %struct.type* %662, null
  br i1 %663, label %664, label %666

664:                                              ; preds = %656
  %665 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  br label %666

666:                                              ; preds = %664, %656
  %667 = load i32, i32* %22, align 4
  %668 = load i32, i32* %20, align 4
  %669 = icmp ne i32 %667, %668
  br i1 %669, label %670, label %673

670:                                              ; preds = %666
  %671 = load i32, i32* %22, align 4
  %672 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i32 %671)
  br label %673

673:                                              ; preds = %670, %666
  %674 = load i32, i32* %9, align 4
  %675 = load i32, i32* @EVAL_AVOID_SIDE_EFFECTS, align 4
  %676 = icmp eq i32 %674, %675
  br i1 %676, label %677, label %681

677:                                              ; preds = %673
  %678 = load %struct.type*, %struct.type** %19, align 8
  %679 = call %struct.type* @ada_aligned_type(%struct.type* %678)
  %680 = call %struct.value* @allocate_value(%struct.type* %679)
  store %struct.value* %680, %struct.value** %5, align 8
  br label %1177

681:                                              ; preds = %673
  %682 = load %struct.value**, %struct.value*** %21, align 8
  %683 = getelementptr inbounds %struct.value*, %struct.value** %682, i64 0
  %684 = load %struct.value*, %struct.value** %683, align 8
  %685 = load i32, i32* %20, align 4
  %686 = load %struct.value**, %struct.value*** %21, align 8
  %687 = getelementptr inbounds %struct.value*, %struct.value** %686, i64 1
  %688 = call %struct.value* @ada_value_subscript(%struct.value* %684, i32 %685, %struct.value** %687)
  %689 = call %struct.value* @unwrap_value(%struct.value* %688)
  store %struct.value* %689, %struct.value** %5, align 8
  br label %1177

690:                                              ; preds = %637
  %691 = load i32, i32* %9, align 4
  %692 = load i32, i32* @EVAL_AVOID_SIDE_EFFECTS, align 4
  %693 = icmp eq i32 %691, %692
  br i1 %693, label %694, label %707

694:                                              ; preds = %690
  %695 = load %struct.type*, %struct.type** %19, align 8
  %696 = load i32, i32* %20, align 4
  %697 = call %struct.type* @ada_array_element_type(%struct.type* %695, i32 %696)
  store %struct.type* %697, %struct.type** %19, align 8
  %698 = load %struct.type*, %struct.type** %19, align 8
  %699 = icmp eq %struct.type* %698, null
  br i1 %699, label %700, label %702

700:                                              ; preds = %694
  %701 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  br label %706

702:                                              ; preds = %694
  %703 = load %struct.type*, %struct.type** %19, align 8
  %704 = call %struct.type* @ada_aligned_type(%struct.type* %703)
  %705 = call %struct.value* @allocate_value(%struct.type* %704)
  store %struct.value* %705, %struct.value** %5, align 8
  br label %1177

706:                                              ; preds = %700
  br label %707

707:                                              ; preds = %706, %690
  %708 = load %struct.value**, %struct.value*** %21, align 8
  %709 = getelementptr inbounds %struct.value*, %struct.value** %708, i64 0
  %710 = load %struct.value*, %struct.value** %709, align 8
  %711 = call %struct.value* @ada_coerce_to_simple_array(%struct.value* %710)
  %712 = load i32, i32* %20, align 4
  %713 = load %struct.value**, %struct.value*** %21, align 8
  %714 = getelementptr inbounds %struct.value*, %struct.value** %713, i64 1
  %715 = call %struct.value* @ada_value_subscript(%struct.value* %711, i32 %712, %struct.value** %714)
  %716 = call %struct.value* @unwrap_value(%struct.value* %715)
  store %struct.value* %716, %struct.value** %5, align 8
  br label %1177

717:                                              ; preds = %637
  %718 = load %struct.type*, %struct.type** %19, align 8
  %719 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %718)
  %720 = call %struct.type* @to_fixed_array_type(%struct.type* %719, i32* null, i32 1)
  store %struct.type* %720, %struct.type** %19, align 8
  %721 = load i32, i32* %9, align 4
  %722 = load i32, i32* @EVAL_AVOID_SIDE_EFFECTS, align 4
  %723 = icmp eq i32 %721, %722
  br i1 %723, label %724, label %737

724:                                              ; preds = %717
  %725 = load %struct.type*, %struct.type** %19, align 8
  %726 = load i32, i32* %20, align 4
  %727 = call %struct.type* @ada_array_element_type(%struct.type* %725, i32 %726)
  store %struct.type* %727, %struct.type** %19, align 8
  %728 = load %struct.type*, %struct.type** %19, align 8
  %729 = icmp eq %struct.type* %728, null
  br i1 %729, label %730, label %732

730:                                              ; preds = %724
  %731 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  br label %736

732:                                              ; preds = %724
  %733 = load %struct.type*, %struct.type** %19, align 8
  %734 = call %struct.type* @ada_aligned_type(%struct.type* %733)
  %735 = call %struct.value* @allocate_value(%struct.type* %734)
  store %struct.value* %735, %struct.value** %5, align 8
  br label %1177

736:                                              ; preds = %730
  br label %737

737:                                              ; preds = %736, %717
  %738 = load %struct.value**, %struct.value*** %21, align 8
  %739 = getelementptr inbounds %struct.value*, %struct.value** %738, i64 0
  %740 = load %struct.value*, %struct.value** %739, align 8
  %741 = load %struct.type*, %struct.type** %19, align 8
  %742 = load i32, i32* %20, align 4
  %743 = load %struct.value**, %struct.value*** %21, align 8
  %744 = getelementptr inbounds %struct.value*, %struct.value** %743, i64 1
  %745 = call %struct.value* @ada_value_ptr_subscript(%struct.value* %740, %struct.type* %741, i32 %742, %struct.value** %744)
  %746 = call %struct.value* @unwrap_value(%struct.value* %745)
  store %struct.value* %746, %struct.value** %5, align 8
  br label %1177

747:                                              ; preds = %637
  %748 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  br label %749

749:                                              ; preds = %747
  br label %750

750:                                              ; preds = %4, %749
  %751 = load %struct.type*, %struct.type** @NULL_TYPE, align 8
  %752 = load %struct.expression*, %struct.expression** %7, align 8
  %753 = load i32*, i32** %8, align 8
  %754 = load i32, i32* %9, align 4
  %755 = call %struct.value* @evaluate_subexp(%struct.type* %751, %struct.expression* %752, i32* %753, i32 %754)
  store %struct.value* %755, %struct.value** %23, align 8
  %756 = load %struct.type*, %struct.type** @NULL_TYPE, align 8
  %757 = load %struct.expression*, %struct.expression** %7, align 8
  %758 = load i32*, i32** %8, align 8
  %759 = load i32, i32* %9, align 4
  %760 = call %struct.value* @evaluate_subexp(%struct.type* %756, %struct.expression* %757, i32* %758, i32 %759)
  %761 = call i32 @value_as_long(%struct.value* %760)
  store i32 %761, i32* %24, align 4
  %762 = load %struct.type*, %struct.type** @NULL_TYPE, align 8
  %763 = load %struct.expression*, %struct.expression** %7, align 8
  %764 = load i32*, i32** %8, align 8
  %765 = load i32, i32* %9, align 4
  %766 = call %struct.value* @evaluate_subexp(%struct.type* %762, %struct.expression* %763, i32* %764, i32 %765)
  %767 = call i32 @value_as_long(%struct.value* %766)
  store i32 %767, i32* %25, align 4
  %768 = load i32, i32* %9, align 4
  %769 = load i32, i32* @EVAL_SKIP, align 4
  %770 = icmp eq i32 %768, %769
  br i1 %770, label %771, label %772

771:                                              ; preds = %750
  br label %1174

772:                                              ; preds = %750
  %773 = load %struct.value*, %struct.value** %23, align 8
  %774 = call %struct.type* @VALUE_TYPE(%struct.value* %773)
  %775 = call i32 @TYPE_CODE(%struct.type* %774)
  %776 = load i32, i32* @TYPE_CODE_REF, align 4
  %777 = icmp eq i32 %775, %776
  br i1 %777, label %778, label %798

778:                                              ; preds = %772
  %779 = load %struct.value*, %struct.value** %23, align 8
  %780 = call %struct.type* @VALUE_TYPE(%struct.value* %779)
  %781 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %780)
  %782 = icmp ne %struct.type* %781, null
  br i1 %782, label %783, label %798

783:                                              ; preds = %778
  %784 = load %struct.value*, %struct.value** %23, align 8
  %785 = call %struct.type* @VALUE_TYPE(%struct.value* %784)
  %786 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %785)
  %787 = call i32 @TYPE_CODE(%struct.type* %786)
  %788 = icmp eq i32 %787, 136
  br i1 %788, label %789, label %798

789:                                              ; preds = %783
  %790 = load %struct.value*, %struct.value** %23, align 8
  %791 = call %struct.type* @VALUE_TYPE(%struct.value* %790)
  %792 = call %struct.type* @check_typedef(%struct.type* %791)
  %793 = call i32 @ada_is_array_descriptor(%struct.type* %792)
  %794 = icmp ne i32 %793, 0
  br i1 %794, label %798, label %795

795:                                              ; preds = %789
  %796 = load %struct.value*, %struct.value** %23, align 8
  %797 = call %struct.value* @ada_coerce_ref(%struct.value* %796)
  store %struct.value* %797, %struct.value** %23, align 8
  br label %798

798:                                              ; preds = %795, %789, %783, %778, %772
  %799 = load i32, i32* %9, align 4
  %800 = load i32, i32* @EVAL_AVOID_SIDE_EFFECTS, align 4
  %801 = icmp eq i32 %799, %800
  br i1 %801, label %802, label %817

802:                                              ; preds = %798
  %803 = load %struct.value*, %struct.value** %23, align 8
  %804 = call %struct.type* @VALUE_TYPE(%struct.value* %803)
  %805 = call %struct.type* @check_typedef(%struct.type* %804)
  %806 = call i32 @ada_is_array_descriptor(%struct.type* %805)
  %807 = icmp ne i32 %806, 0
  br i1 %807, label %808, label %817

808:                                              ; preds = %802
  %809 = load %struct.value*, %struct.value** %23, align 8
  %810 = call %struct.type* @ada_type_of_array(%struct.value* %809, i32 0)
  store %struct.type* %810, %struct.type** %26, align 8
  %811 = load %struct.type*, %struct.type** %26, align 8
  %812 = icmp ne %struct.type* %811, null
  br i1 %812, label %813, label %816

813:                                              ; preds = %808
  %814 = load %struct.type*, %struct.type** %26, align 8
  %815 = call %struct.value* @value_at_lazy(%struct.type* %814, i32 0, i32* null)
  store %struct.value* %815, %struct.value** %23, align 8
  br label %816

816:                                              ; preds = %813, %808
  br label %817

817:                                              ; preds = %816, %802, %798
  %818 = load %struct.value*, %struct.value** %23, align 8
  %819 = call %struct.type* @VALUE_TYPE(%struct.value* %818)
  %820 = call i32 @ada_is_array_descriptor(%struct.type* %819)
  %821 = icmp ne i32 %820, 0
  br i1 %821, label %822, label %825

822:                                              ; preds = %817
  %823 = load %struct.value*, %struct.value** %23, align 8
  %824 = call %struct.value* @ada_coerce_to_simple_array(%struct.value* %823)
  store %struct.value* %824, %struct.value** %23, align 8
  br label %825

825:                                              ; preds = %822, %817
  %826 = load %struct.value*, %struct.value** %23, align 8
  %827 = call %struct.type* @VALUE_TYPE(%struct.value* %826)
  %828 = call i32 @TYPE_CODE(%struct.type* %827)
  %829 = icmp eq i32 %828, 134
  br i1 %829, label %830, label %844

830:                                              ; preds = %825
  %831 = load %struct.value*, %struct.value** %23, align 8
  %832 = call %struct.type* @VALUE_TYPE(%struct.value* %831)
  %833 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %832)
  %834 = icmp ne %struct.type* %833, null
  br i1 %834, label %835, label %844

835:                                              ; preds = %830
  %836 = load %struct.value*, %struct.value** %23, align 8
  %837 = call %struct.type* @VALUE_TYPE(%struct.value* %836)
  %838 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %837)
  %839 = call i32 @TYPE_CODE(%struct.type* %838)
  %840 = icmp eq i32 %839, 136
  br i1 %840, label %841, label %844

841:                                              ; preds = %835
  %842 = load %struct.value*, %struct.value** %23, align 8
  %843 = call %struct.value* @ada_value_ind(%struct.value* %842)
  store %struct.value* %843, %struct.value** %23, align 8
  br label %844

844:                                              ; preds = %841, %835, %830, %825
  %845 = load i32, i32* %9, align 4
  %846 = load i32, i32* @EVAL_AVOID_SIDE_EFFECTS, align 4
  %847 = icmp eq i32 %845, %846
  br i1 %847, label %848, label %850

848:                                              ; preds = %844
  %849 = load %struct.value*, %struct.value** %23, align 8
  store %struct.value* %849, %struct.value** %5, align 8
  br label %1177

850:                                              ; preds = %844
  %851 = load %struct.value*, %struct.value** %23, align 8
  %852 = load i32, i32* %24, align 4
  %853 = load i32, i32* %25, align 4
  %854 = load i32, i32* %24, align 4
  %855 = sub nsw i32 %853, %854
  %856 = add nsw i32 %855, 1
  %857 = call %struct.value* @value_slice(%struct.value* %851, i32 %852, i32 %856)
  store %struct.value* %857, %struct.value** %5, align 8
  br label %1177

858:                                              ; preds = %4
  %859 = load %struct.type*, %struct.type** @NULL_TYPE, align 8
  %860 = load %struct.expression*, %struct.expression** %7, align 8
  %861 = load i32*, i32** %8, align 8
  %862 = load i32, i32* %9, align 4
  %863 = call %struct.value* @evaluate_subexp(%struct.type* %859, %struct.expression* %860, i32* %861, i32 %862)
  store %struct.value* %863, %struct.value** %16, align 8
  %864 = load %struct.type*, %struct.type** @NULL_TYPE, align 8
  %865 = load %struct.expression*, %struct.expression** %7, align 8
  %866 = load i32*, i32** %8, align 8
  %867 = load i32, i32* %9, align 4
  %868 = call %struct.value* @evaluate_subexp(%struct.type* %864, %struct.expression* %865, i32* %866, i32 %867)
  store %struct.value* %868, %struct.value** %17, align 8
  %869 = load i32, i32* %9, align 4
  %870 = load i32, i32* @EVAL_SKIP, align 4
  %871 = icmp eq i32 %869, %870
  br i1 %871, label %872, label %873

872:                                              ; preds = %858
  br label %1174

873:                                              ; preds = %858
  %874 = load i32, i32* %10, align 4
  %875 = load %struct.value*, %struct.value** %16, align 8
  %876 = load %struct.value*, %struct.value** %17, align 8
  %877 = call i32 @binop_user_defined_p(i32 %874, %struct.value* %875, %struct.value* %876)
  %878 = icmp ne i32 %877, 0
  br i1 %878, label %879, label %887

879:                                              ; preds = %873
  %880 = load %struct.value*, %struct.value** %16, align 8
  %881 = load %struct.value*, %struct.value** %17, align 8
  %882 = load i32, i32* %10, align 4
  %883 = load i32, i32* @OP_NULL, align 4
  %884 = load i32, i32* @EVAL_NORMAL, align 4
  %885 = call %struct.value* @value_x_binop(%struct.value* %880, %struct.value* %881, i32 %882, i32 %883, i32 %884)
  %886 = call %struct.value* @unwrap_value(%struct.value* %885)
  store %struct.value* %886, %struct.value** %5, align 8
  br label %1177

887:                                              ; preds = %873
  %888 = load i32, i32* %9, align 4
  %889 = load i32, i32* @EVAL_AVOID_SIDE_EFFECTS, align 4
  %890 = icmp eq i32 %888, %889
  br i1 %890, label %891, label %896

891:                                              ; preds = %887
  %892 = load %struct.value*, %struct.value** %16, align 8
  %893 = call %struct.type* @VALUE_TYPE(%struct.value* %892)
  %894 = load i32, i32* @not_lval, align 4
  %895 = call %struct.value* @value_zero(%struct.type* %893, i32 %894)
  store %struct.value* %895, %struct.value** %5, align 8
  br label %1177

896:                                              ; preds = %887
  %897 = load %struct.value*, %struct.value** %16, align 8
  %898 = load %struct.value*, %struct.value** %17, align 8
  %899 = load i32, i32* %10, align 4
  %900 = call %struct.value* @value_binop(%struct.value* %897, %struct.value* %898, i32 %899)
  store %struct.value* %900, %struct.value** %5, align 8
  br label %1177

901:                                              ; preds = %4
  %902 = load %struct.type*, %struct.type** @NULL_TYPE, align 8
  %903 = load %struct.expression*, %struct.expression** %7, align 8
  %904 = load i32*, i32** %8, align 8
  %905 = load i32, i32* %9, align 4
  %906 = call %struct.value* @evaluate_subexp(%struct.type* %902, %struct.expression* %903, i32* %904, i32 %905)
  store %struct.value* %906, %struct.value** %16, align 8
  %907 = load i32, i32* %9, align 4
  %908 = load i32, i32* @EVAL_SKIP, align 4
  %909 = icmp eq i32 %907, %908
  br i1 %909, label %910, label %911

910:                                              ; preds = %901
  br label %1174

911:                                              ; preds = %901
  %912 = load i32, i32* %10, align 4
  %913 = load %struct.value*, %struct.value** %16, align 8
  %914 = call i32 @unop_user_defined_p(i32 %912, %struct.value* %913)
  %915 = icmp ne i32 %914, 0
  br i1 %915, label %916, label %922

916:                                              ; preds = %911
  %917 = load %struct.value*, %struct.value** %16, align 8
  %918 = load i32, i32* %10, align 4
  %919 = load i32, i32* @EVAL_NORMAL, align 4
  %920 = call %struct.value* @value_x_unop(%struct.value* %917, i32 %918, i32 %919)
  %921 = call %struct.value* @unwrap_value(%struct.value* %920)
  store %struct.value* %921, %struct.value** %5, align 8
  br label %1177

922:                                              ; preds = %911
  %923 = load %struct.value*, %struct.value** %16, align 8
  store %struct.value* %923, %struct.value** %5, align 8
  br label %1177

924:                                              ; preds = %4
  %925 = load %struct.type*, %struct.type** @NULL_TYPE, align 8
  %926 = load %struct.expression*, %struct.expression** %7, align 8
  %927 = load i32*, i32** %8, align 8
  %928 = load i32, i32* %9, align 4
  %929 = call %struct.value* @evaluate_subexp(%struct.type* %925, %struct.expression* %926, i32* %927, i32 %928)
  store %struct.value* %929, %struct.value** %16, align 8
  %930 = load i32, i32* %9, align 4
  %931 = load i32, i32* @EVAL_SKIP, align 4
  %932 = icmp eq i32 %930, %931
  br i1 %932, label %933, label %934

933:                                              ; preds = %924
  br label %1174

934:                                              ; preds = %924
  %935 = load %struct.value*, %struct.value** %16, align 8
  %936 = load %struct.value*, %struct.value** %16, align 8
  %937 = call %struct.type* @VALUE_TYPE(%struct.value* %936)
  %938 = load i32, i32* @not_lval, align 4
  %939 = call %struct.value* @value_zero(%struct.type* %937, i32 %938)
  %940 = call i32 @value_less(%struct.value* %935, %struct.value* %939)
  %941 = icmp ne i32 %940, 0
  br i1 %941, label %942, label %945

942:                                              ; preds = %934
  %943 = load %struct.value*, %struct.value** %16, align 8
  %944 = call %struct.value* @value_neg(%struct.value* %943)
  store %struct.value* %944, %struct.value** %5, align 8
  br label %1177

945:                                              ; preds = %934
  %946 = load %struct.value*, %struct.value** %16, align 8
  store %struct.value* %946, %struct.value** %5, align 8
  br label %1177

947:                                              ; preds = %4
  %948 = load %struct.type*, %struct.type** %6, align 8
  %949 = icmp ne %struct.type* %948, null
  br i1 %949, label %950, label %958

950:                                              ; preds = %947
  %951 = load %struct.type*, %struct.type** %6, align 8
  %952 = call i32 @TYPE_CODE(%struct.type* %951)
  %953 = icmp eq i32 %952, 134
  br i1 %953, label %954, label %958

954:                                              ; preds = %950
  %955 = load %struct.type*, %struct.type** %6, align 8
  %956 = call %struct.type* @check_typedef(%struct.type* %955)
  %957 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %956)
  store %struct.type* %957, %struct.type** %6, align 8
  br label %958

958:                                              ; preds = %954, %950, %947
  %959 = load %struct.type*, %struct.type** %6, align 8
  %960 = load %struct.expression*, %struct.expression** %7, align 8
  %961 = load i32*, i32** %8, align 8
  %962 = load i32, i32* %9, align 4
  %963 = call %struct.value* @evaluate_subexp(%struct.type* %959, %struct.expression* %960, i32* %961, i32 %962)
  store %struct.value* %963, %struct.value** %16, align 8
  %964 = load i32, i32* %9, align 4
  %965 = load i32, i32* @EVAL_SKIP, align 4
  %966 = icmp eq i32 %964, %965
  br i1 %966, label %967, label %968

967:                                              ; preds = %958
  br label %1174

968:                                              ; preds = %958
  %969 = load %struct.value*, %struct.value** %16, align 8
  %970 = call %struct.type* @VALUE_TYPE(%struct.value* %969)
  %971 = call %struct.type* @check_typedef(%struct.type* %970)
  store %struct.type* %971, %struct.type** %19, align 8
  %972 = load i32, i32* %9, align 4
  %973 = load i32, i32* @EVAL_AVOID_SIDE_EFFECTS, align 4
  %974 = icmp eq i32 %972, %973
  br i1 %974, label %975, label %1024

975:                                              ; preds = %968
  %976 = load %struct.type*, %struct.type** %19, align 8
  %977 = call i32 @ada_is_array_descriptor(%struct.type* %976)
  %978 = icmp ne i32 %977, 0
  br i1 %978, label %979, label %989

979:                                              ; preds = %975
  %980 = load %struct.value*, %struct.value** %16, align 8
  %981 = call %struct.type* @ada_type_of_array(%struct.value* %980, i32 0)
  store %struct.type* %981, %struct.type** %27, align 8
  %982 = load %struct.type*, %struct.type** %27, align 8
  %983 = icmp eq %struct.type* %982, null
  br i1 %983, label %984, label %986

984:                                              ; preds = %979
  %985 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i64 0, i64 0))
  br label %986

986:                                              ; preds = %984, %979
  %987 = load %struct.type*, %struct.type** %27, align 8
  %988 = call %struct.value* @value_at_lazy(%struct.type* %987, i32 0, i32* null)
  store %struct.value* %988, %struct.value** %5, align 8
  br label %1177

989:                                              ; preds = %975
  %990 = load %struct.type*, %struct.type** %19, align 8
  %991 = call i32 @TYPE_CODE(%struct.type* %990)
  %992 = icmp eq i32 %991, 134
  br i1 %992, label %1002, label %993

993:                                              ; preds = %989
  %994 = load %struct.type*, %struct.type** %19, align 8
  %995 = call i32 @TYPE_CODE(%struct.type* %994)
  %996 = load i32, i32* @TYPE_CODE_REF, align 4
  %997 = icmp eq i32 %995, %996
  br i1 %997, label %1002, label %998

998:                                              ; preds = %993
  %999 = load %struct.type*, %struct.type** %19, align 8
  %1000 = call i32 @TYPE_CODE(%struct.type* %999)
  %1001 = icmp eq i32 %1000, 136
  br i1 %1001, label %1002, label %1010

1002:                                             ; preds = %998, %993, %989
  %1003 = load %struct.type*, %struct.type** %19, align 8
  %1004 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %1003)
  %1005 = call %struct.type* @check_typedef(%struct.type* %1004)
  %1006 = call %struct.type* @ada_aligned_type(%struct.type* %1005)
  %1007 = call %struct.type* @to_static_fixed_type(%struct.type* %1006)
  %1008 = load i32, i32* @lval_memory, align 4
  %1009 = call %struct.value* @value_zero(%struct.type* %1007, i32 %1008)
  store %struct.value* %1009, %struct.value** %5, align 8
  br label %1177

1010:                                             ; preds = %998
  %1011 = load %struct.type*, %struct.type** %19, align 8
  %1012 = call i32 @TYPE_CODE(%struct.type* %1011)
  %1013 = load i32, i32* @TYPE_CODE_INT, align 4
  %1014 = icmp eq i32 %1012, %1013
  br i1 %1014, label %1015, label %1019

1015:                                             ; preds = %1010
  %1016 = load %struct.type*, %struct.type** @builtin_type_int, align 8
  %1017 = load i32, i32* @lval_memory, align 4
  %1018 = call %struct.value* @value_zero(%struct.type* %1016, i32 %1017)
  store %struct.value* %1018, %struct.value** %5, align 8
  br label %1177

1019:                                             ; preds = %1010
  %1020 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.9, i64 0, i64 0))
  br label %1021

1021:                                             ; preds = %1019
  br label %1022

1022:                                             ; preds = %1021
  br label %1023

1023:                                             ; preds = %1022
  br label %1024

1024:                                             ; preds = %1023, %968
  %1025 = load %struct.value*, %struct.value** %16, align 8
  %1026 = call %struct.value* @ada_coerce_ref(%struct.value* %1025)
  store %struct.value* %1026, %struct.value** %16, align 8
  %1027 = load %struct.value*, %struct.value** %16, align 8
  %1028 = call %struct.type* @VALUE_TYPE(%struct.value* %1027)
  %1029 = call %struct.type* @check_typedef(%struct.type* %1028)
  store %struct.type* %1029, %struct.type** %19, align 8
  %1030 = load %struct.type*, %struct.type** %19, align 8
  %1031 = call i32 @ada_is_array_descriptor(%struct.type* %1030)
  %1032 = icmp ne i32 %1031, 0
  br i1 %1032, label %1033, label %1036

1033:                                             ; preds = %1024
  %1034 = load %struct.value*, %struct.value** %16, align 8
  %1035 = call %struct.value* @ada_coerce_to_simple_array(%struct.value* %1034)
  store %struct.value* %1035, %struct.value** %5, align 8
  br label %1177

1036:                                             ; preds = %1024
  %1037 = load %struct.value*, %struct.value** %16, align 8
  %1038 = call %struct.value* @ada_value_ind(%struct.value* %1037)
  store %struct.value* %1038, %struct.value** %5, align 8
  br label %1177

1039:                                             ; preds = %4
  %1040 = load %struct.expression*, %struct.expression** %7, align 8
  %1041 = getelementptr inbounds %struct.expression, %struct.expression* %1040, i32 0, i32 0
  %1042 = load %struct.TYPE_2__*, %struct.TYPE_2__** %1041, align 8
  %1043 = load i32, i32* %15, align 4
  %1044 = add nsw i32 %1043, 1
  %1045 = sext i32 %1044 to i64
  %1046 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1042, i64 %1045
  %1047 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1046, i32 0, i32 2
  %1048 = load i32, i32* %1047, align 8
  %1049 = call i32 @longest_to_int(i32 %1048)
  store i32 %1049, i32* %12, align 4
  %1050 = load i32, i32* %12, align 4
  %1051 = add nsw i32 %1050, 1
  %1052 = call i32 @BYTES_TO_EXP_ELEM(i32 %1051)
  %1053 = add nsw i32 3, %1052
  %1054 = load i32*, i32** %8, align 8
  %1055 = load i32, i32* %1054, align 4
  %1056 = add nsw i32 %1055, %1053
  store i32 %1056, i32* %1054, align 4
  %1057 = load %struct.type*, %struct.type** @NULL_TYPE, align 8
  %1058 = load %struct.expression*, %struct.expression** %7, align 8
  %1059 = load i32*, i32** %8, align 8
  %1060 = load i32, i32* %9, align 4
  %1061 = call %struct.value* @evaluate_subexp(%struct.type* %1057, %struct.expression* %1058, i32* %1059, i32 %1060)
  store %struct.value* %1061, %struct.value** %16, align 8
  %1062 = load i32, i32* %9, align 4
  %1063 = load i32, i32* @EVAL_SKIP, align 4
  %1064 = icmp eq i32 %1062, %1063
  br i1 %1064, label %1065, label %1066

1065:                                             ; preds = %1039
  br label %1174

1066:                                             ; preds = %1039
  %1067 = load i32, i32* %9, align 4
  %1068 = load i32, i32* @EVAL_AVOID_SIDE_EFFECTS, align 4
  %1069 = icmp eq i32 %1067, %1068
  br i1 %1069, label %1070, label %1085

1070:                                             ; preds = %1066
  %1071 = load %struct.value*, %struct.value** %16, align 8
  %1072 = call %struct.type* @VALUE_TYPE(%struct.value* %1071)
  %1073 = load %struct.expression*, %struct.expression** %7, align 8
  %1074 = getelementptr inbounds %struct.expression, %struct.expression* %1073, i32 0, i32 0
  %1075 = load %struct.TYPE_2__*, %struct.TYPE_2__** %1074, align 8
  %1076 = load i32, i32* %15, align 4
  %1077 = add nsw i32 %1076, 2
  %1078 = sext i32 %1077 to i64
  %1079 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1075, i64 %1078
  %1080 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1079, i32 0, i32 1
  %1081 = call %struct.type* @ada_lookup_struct_elt_type(%struct.type* %1072, i32* %1080, i32 0, i32* null)
  %1082 = call %struct.type* @ada_aligned_type(%struct.type* %1081)
  %1083 = load i32, i32* @lval_memory, align 4
  %1084 = call %struct.value* @value_zero(%struct.type* %1082, i32 %1083)
  store %struct.value* %1084, %struct.value** %5, align 8
  br label %1177

1085:                                             ; preds = %1066
  %1086 = load %struct.value*, %struct.value** %16, align 8
  %1087 = load %struct.expression*, %struct.expression** %7, align 8
  %1088 = getelementptr inbounds %struct.expression, %struct.expression* %1087, i32 0, i32 0
  %1089 = load %struct.TYPE_2__*, %struct.TYPE_2__** %1088, align 8
  %1090 = load i32, i32* %15, align 4
  %1091 = add nsw i32 %1090, 2
  %1092 = sext i32 %1091 to i64
  %1093 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1089, i64 %1092
  %1094 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1093, i32 0, i32 1
  %1095 = call %struct.value* @ada_value_struct_elt(%struct.value* %1086, i32* %1094, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  %1096 = call %struct.value* @unwrap_value(%struct.value* %1095)
  store %struct.value* %1096, %struct.value** %5, align 8
  br label %1177

1097:                                             ; preds = %4
  %1098 = load i32*, i32** %8, align 8
  %1099 = load i32, i32* %1098, align 4
  %1100 = add nsw i32 %1099, 2
  store i32 %1100, i32* %1098, align 4
  %1101 = load i32, i32* %9, align 4
  %1102 = load i32, i32* @EVAL_SKIP, align 4
  %1103 = icmp eq i32 %1101, %1102
  br i1 %1103, label %1104, label %1105

1104:                                             ; preds = %1097
  br label %1174

1105:                                             ; preds = %1097
  %1106 = load i32, i32* %9, align 4
  %1107 = load i32, i32* @EVAL_AVOID_SIDE_EFFECTS, align 4
  %1108 = icmp eq i32 %1106, %1107
  br i1 %1108, label %1109, label %1112

1109:                                             ; preds = %1105
  %1110 = load %struct.type*, %struct.type** @builtin_type_void, align 8
  %1111 = call %struct.value* @allocate_value(%struct.type* %1110)
  store %struct.value* %1111, %struct.value** %5, align 8
  br label %1177

1112:                                             ; preds = %1105
  %1113 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.11, i64 0, i64 0))
  br label %1114

1114:                                             ; preds = %1112
  br label %1115

1115:                                             ; preds = %1114
  br label %1116

1116:                                             ; preds = %4, %1115
  %1117 = load %struct.expression*, %struct.expression** %7, align 8
  %1118 = getelementptr inbounds %struct.expression, %struct.expression* %1117, i32 0, i32 0
  %1119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %1118, align 8
  %1120 = load i32, i32* %15, align 4
  %1121 = add nsw i32 %1120, 1
  %1122 = sext i32 %1121 to i64
  %1123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1119, i64 %1122
  %1124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1123, i32 0, i32 2
  %1125 = load i32, i32* %1124, align 8
  %1126 = call i32 @longest_to_int(i32 %1125)
  store i32 %1126, i32* %12, align 4
  %1127 = load i32, i32* %12, align 4
  %1128 = add nsw i32 %1127, 1
  %1129 = call i32 @BYTES_TO_EXP_ELEM(i32 %1128)
  %1130 = add nsw i32 3, %1129
  %1131 = load i32*, i32** %8, align 8
  %1132 = load i32, i32* %1131, align 4
  %1133 = add nsw i32 %1132, %1130
  store i32 %1133, i32* %1131, align 4
  %1134 = load %struct.type*, %struct.type** @NULL_TYPE, align 8
  %1135 = load %struct.expression*, %struct.expression** %7, align 8
  %1136 = load i32*, i32** %8, align 8
  %1137 = load i32, i32* %9, align 4
  %1138 = call %struct.value* @evaluate_subexp(%struct.type* %1134, %struct.expression* %1135, i32* %1136, i32 %1137)
  store %struct.value* %1138, %struct.value** %16, align 8
  %1139 = load i32, i32* %9, align 4
  %1140 = load i32, i32* @EVAL_SKIP, align 4
  %1141 = icmp eq i32 %1139, %1140
  br i1 %1141, label %1142, label %1143

1142:                                             ; preds = %1116
  br label %1174

1143:                                             ; preds = %1116
  %1144 = load i32, i32* %9, align 4
  %1145 = load i32, i32* @EVAL_AVOID_SIDE_EFFECTS, align 4
  %1146 = icmp eq i32 %1144, %1145
  br i1 %1146, label %1147, label %1162

1147:                                             ; preds = %1143
  %1148 = load %struct.value*, %struct.value** %16, align 8
  %1149 = call %struct.type* @VALUE_TYPE(%struct.value* %1148)
  %1150 = load %struct.expression*, %struct.expression** %7, align 8
  %1151 = getelementptr inbounds %struct.expression, %struct.expression* %1150, i32 0, i32 0
  %1152 = load %struct.TYPE_2__*, %struct.TYPE_2__** %1151, align 8
  %1153 = load i32, i32* %15, align 4
  %1154 = add nsw i32 %1153, 2
  %1155 = sext i32 %1154 to i64
  %1156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1152, i64 %1155
  %1157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1156, i32 0, i32 1
  %1158 = call %struct.type* @ada_lookup_struct_elt_type(%struct.type* %1149, i32* %1157, i32 0, i32* null)
  %1159 = call %struct.type* @ada_aligned_type(%struct.type* %1158)
  %1160 = load i32, i32* @lval_memory, align 4
  %1161 = call %struct.value* @value_zero(%struct.type* %1159, i32 %1160)
  store %struct.value* %1161, %struct.value** %5, align 8
  br label %1177

1162:                                             ; preds = %1143
  %1163 = load %struct.value*, %struct.value** %16, align 8
  %1164 = load %struct.expression*, %struct.expression** %7, align 8
  %1165 = getelementptr inbounds %struct.expression, %struct.expression* %1164, i32 0, i32 0
  %1166 = load %struct.TYPE_2__*, %struct.TYPE_2__** %1165, align 8
  %1167 = load i32, i32* %15, align 4
  %1168 = add nsw i32 %1167, 2
  %1169 = sext i32 %1168 to i64
  %1170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1166, i64 %1169
  %1171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1170, i32 0, i32 1
  %1172 = call %struct.value* @ada_value_struct_elt(%struct.value* %1163, i32* %1171, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0))
  %1173 = call %struct.value* @unwrap_value(%struct.value* %1172)
  store %struct.value* %1173, %struct.value** %5, align 8
  br label %1177

1174:                                             ; preds = %1142, %1104, %1065, %967, %933, %910, %872, %771, %565, %513, %402, %370, %306, %253, %202, %73
  %1175 = load i32, i32* @builtin_type_long, align 4
  %1176 = call %struct.value* @value_from_longest(i32 %1175, i32 1)
  store %struct.value* %1176, %struct.value** %5, align 8
  br label %1177

1177:                                             ; preds = %1174, %1162, %1147, %1109, %1085, %1070, %1036, %1033, %1015, %1002, %986, %945, %942, %922, %916, %896, %891, %879, %850, %848, %737, %732, %707, %702, %681, %677, %648, %644, %514, %428, %410, %392, %386, %376, %356, %335, %313, %285, %260, %234, %209, %186, %156, %148, %127, %107, %42
  %1178 = load %struct.value*, %struct.value** %5, align 8
  ret %struct.value* %1178
}

declare dso_local %struct.value* @unwrap_value(%struct.value*) #1

declare dso_local %struct.value* @evaluate_subexp_standard(%struct.type*, %struct.expression*, i32*, i32) #1

declare dso_local %struct.value* @evaluate_subexp(%struct.type*, %struct.expression*, i32*, i32) #1

declare dso_local %struct.type* @check_typedef(%struct.type*) #1

declare dso_local %struct.type* @VALUE_TYPE(%struct.value*) #1

declare dso_local i32 @ada_is_fixed_point_type(%struct.type*) #1

declare dso_local %struct.value* @cast_to_fixed(%struct.type*, %struct.value*) #1

declare dso_local %struct.value* @value_cast(%struct.type*, %struct.value*) #1

declare dso_local %struct.value* @cast_from_fixed_to_double(%struct.value*) #1

declare dso_local i32 @VALUE_LVAL(%struct.value*) #1

declare dso_local %struct.value* @value_zero(%struct.type*, i32) #1

declare dso_local %struct.type* @to_static_fixed_type(%struct.type*) #1

declare dso_local %struct.value* @ada_to_fixed_value(%struct.type*, i32, i64, %struct.value*) #1

declare dso_local i64 @VALUE_ADDRESS(%struct.value*) #1

declare dso_local i64 @VALUE_OFFSET(%struct.value*) #1

declare dso_local i32 @binop_user_defined_p(i32, %struct.value*, %struct.value*) #1

declare dso_local %struct.value* @value_x_binop(%struct.value*, %struct.value*, i32, i32, i32) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local %struct.value* @coerce_for_assign(%struct.type*, %struct.value*) #1

declare dso_local %struct.value* @ada_value_assign(%struct.value*, %struct.value*) #1

declare dso_local %struct.value* @evaluate_subexp_with_coercion(%struct.expression*, i32*, i32) #1

declare dso_local %struct.value* @value_add(%struct.value*, %struct.value*) #1

declare dso_local %struct.value* @value_sub(%struct.value*, %struct.value*) #1

declare dso_local %struct.value* @value_binop(%struct.value*, %struct.value*, i32) #1

declare dso_local i32 @unop_user_defined_p(i32, %struct.value*) #1

declare dso_local %struct.value* @value_x_unop(%struct.value*, i32, i32) #1

declare dso_local %struct.value* @value_neg(%struct.value*) #1

declare dso_local %struct.type* @static_unwrap_type(i32) #1

declare dso_local i32 @SYMBOL_TYPE(i32) #1

declare dso_local i32 @longest_to_int(i32) #1

declare dso_local i64 @alloca(i32) #1

declare dso_local %struct.value* @value_array(i32, i32, %struct.value**) #1

declare dso_local i32 @TYPE_CODE(%struct.type*) #1

declare dso_local %struct.value* @value_addr(%struct.value*) #1

declare dso_local i32 @ada_is_packed_array_type(%struct.type*) #1

declare dso_local %struct.value* @ada_coerce_to_simple_array(%struct.value*) #1

declare dso_local %struct.type* @TYPE_TARGET_TYPE(%struct.type*) #1

declare dso_local %struct.value* @ada_value_ind(%struct.value*) #1

declare dso_local i32 @ada_type_name(%struct.type*) #1

declare dso_local %struct.value* @allocate_value(%struct.type*) #1

declare dso_local %struct.value* @call_function_by_hand(%struct.value*, i32, %struct.value**) #1

declare dso_local i32 @ada_array_arity(%struct.type*) #1

declare dso_local %struct.type* @ada_array_element_type(%struct.type*, i32) #1

declare dso_local %struct.type* @ada_aligned_type(%struct.type*) #1

declare dso_local %struct.value* @ada_value_subscript(%struct.value*, i32, %struct.value**) #1

declare dso_local %struct.type* @to_fixed_array_type(%struct.type*, i32*, i32) #1

declare dso_local %struct.value* @ada_value_ptr_subscript(%struct.value*, %struct.type*, i32, %struct.value**) #1

declare dso_local i32 @value_as_long(%struct.value*) #1

declare dso_local i32 @ada_is_array_descriptor(%struct.type*) #1

declare dso_local %struct.value* @ada_coerce_ref(%struct.value*) #1

declare dso_local %struct.type* @ada_type_of_array(%struct.value*, i32) #1

declare dso_local %struct.value* @value_at_lazy(%struct.type*, i32, i32*) #1

declare dso_local %struct.value* @value_slice(%struct.value*, i32, i32) #1

declare dso_local i32 @value_less(%struct.value*, %struct.value*) #1

declare dso_local i32 @BYTES_TO_EXP_ELEM(i32) #1

declare dso_local %struct.type* @ada_lookup_struct_elt_type(%struct.type*, i32*, i32, i32*) #1

declare dso_local %struct.value* @ada_value_struct_elt(%struct.value*, i32*, i8*) #1

declare dso_local %struct.value* @value_from_longest(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
