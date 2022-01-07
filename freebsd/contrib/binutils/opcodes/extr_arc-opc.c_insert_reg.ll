; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_arc-opc.c_insert_reg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_arc-opc.c_insert_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.arc_operand = type { i8, i32 }
%struct.arc_operand_value = type { i64, i32, i32 }

@insert_reg.buf = internal global [100 x i8] zeroinitializer, align 16
@OP_NONE = common dso_local global i32 0, align 4
@cond_p = common dso_local global i32 0, align 4
@shimm_p = common dso_local global i32 0, align 4
@shimm = common dso_local global i64 0, align 8
@OP_SHIMM = common dso_local global i32 0, align 4
@flagshimm_handled_p = common dso_local global i32 0, align 4
@flag_p = common dso_local global i64 0, align 8
@ARC_REG_SHIMM_UPDATE = common dso_local global i32 0, align 4
@ARC_REG_SHIMM = common dso_local global i32 0, align 4
@limm_p = common dso_local global i32 0, align 4
@limm = common dso_local global i64 0, align 8
@OP_LIMM = common dso_local global i32 0, align 4
@ARC_REG_LIMM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"unable to fit different valued constants into instruction\00", align 1
@AUXREG = common dso_local global i64 0, align 8
@ARC_MOD_AUXREG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"auxiliary register not allowed here\00", align 1
@ARC_REGISTER_READONLY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"attempt to set readonly register\00", align 1
@ARC_REGISTER_WRITEONLY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"attempt to read writeonly register\00", align 1
@arc_operands = common dso_local global %struct.TYPE_2__* null, align 8
@.str.4 = private unnamed_addr constant [29 x i8] c"invalid register number `%d'\00", align 1
@OP_REG = common dso_local global i32 0, align 4
@ls_operand = common dso_local global i32* null, align 8
@LS_DEST = common dso_local global i64 0, align 8
@LS_BASE = common dso_local global i64 0, align 8
@LS_VALUE = common dso_local global i64 0, align 8
@LS_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.arc_operand*, i32, %struct.arc_operand_value*, i64, i8**)* @insert_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @insert_reg(i32 %0, %struct.arc_operand* %1, i32 %2, %struct.arc_operand_value* %3, i64 %4, i8** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.arc_operand*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.arc_operand_value*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct.arc_operand* %1, %struct.arc_operand** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.arc_operand_value* %3, %struct.arc_operand_value** %10, align 8
  store i64 %4, i64* %11, align 8
  store i8** %5, i8*** %12, align 8
  %15 = load i32, i32* @OP_NONE, align 4
  store i32 %15, i32* %13, align 4
  %16 = load %struct.arc_operand_value*, %struct.arc_operand_value** %10, align 8
  %17 = icmp eq %struct.arc_operand_value* %16, null
  br i1 %17, label %18, label %81

18:                                               ; preds = %6
  %19 = load i64, i64* %11, align 8
  %20 = call i64 @ARC_SHIMM_CONST_P(i64 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %59

22:                                               ; preds = %18
  %23 = load i32, i32* @cond_p, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %59, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* @shimm_p, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load i64, i64* @shimm, align 8
  %30 = load i64, i64* %11, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %59

32:                                               ; preds = %28, %25
  %33 = load i32, i32* @OP_SHIMM, align 4
  store i32 %33, i32* %13, align 4
  %34 = load %struct.arc_operand*, %struct.arc_operand** %8, align 8
  %35 = getelementptr inbounds %struct.arc_operand, %struct.arc_operand* %34, i32 0, i32 0
  %36 = load i8, i8* %35, align 4
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 97, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %32
  store i32 1, i32* @shimm_p, align 4
  %40 = load i64, i64* %11, align 8
  store i64 %40, i64* @shimm, align 8
  store i32 1, i32* @flagshimm_handled_p, align 4
  %41 = load i64, i64* @flag_p, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i32, i32* @ARC_REG_SHIMM_UPDATE, align 4
  br label %47

45:                                               ; preds = %39
  %46 = load i32, i32* @ARC_REG_SHIMM, align 4
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi i32 [ %44, %43 ], [ %46, %45 ]
  store i32 %48, i32* %14, align 4
  br label %51

49:                                               ; preds = %32
  %50 = load i32, i32* @ARC_REG_SHIMM, align 4
  store i32 %50, i32* %14, align 4
  br label %51

51:                                               ; preds = %49, %47
  %52 = load i32, i32* %14, align 4
  %53 = load %struct.arc_operand*, %struct.arc_operand** %8, align 8
  %54 = getelementptr inbounds %struct.arc_operand, %struct.arc_operand* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = shl i32 %52, %55
  %57 = load i32, i32* %7, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %7, align 4
  br label %80

59:                                               ; preds = %28, %22, %18
  %60 = load i32, i32* @limm_p, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load i64, i64* @limm, align 8
  %64 = load i64, i64* %11, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %76

66:                                               ; preds = %62, %59
  %67 = load i32, i32* @OP_LIMM, align 4
  store i32 %67, i32* %13, align 4
  store i32 1, i32* @limm_p, align 4
  %68 = load i64, i64* %11, align 8
  store i64 %68, i64* @limm, align 8
  %69 = load i32, i32* @ARC_REG_LIMM, align 4
  %70 = load %struct.arc_operand*, %struct.arc_operand** %8, align 8
  %71 = getelementptr inbounds %struct.arc_operand, %struct.arc_operand* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = shl i32 %69, %72
  %74 = load i32, i32* %7, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %7, align 4
  br label %79

76:                                               ; preds = %62
  %77 = call i8* @_(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  %78 = load i8**, i8*** %12, align 8
  store i8* %77, i8** %78, align 8
  br label %79

79:                                               ; preds = %76, %66
  br label %80

80:                                               ; preds = %79, %51
  br label %209

81:                                               ; preds = %6
  %82 = load %struct.arc_operand_value*, %struct.arc_operand_value** %10, align 8
  %83 = getelementptr inbounds %struct.arc_operand_value, %struct.arc_operand_value* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @AUXREG, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %145

87:                                               ; preds = %81
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* @ARC_MOD_AUXREG, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %87
  %93 = call i8* @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %94 = load i8**, i8*** %12, align 8
  store i8* %93, i8** %94, align 8
  br label %144

95:                                               ; preds = %87
  %96 = load i32, i32* %7, align 4
  %97 = call i32 @I(i32 -1)
  %98 = and i32 %96, %97
  %99 = call i32 @I(i32 2)
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %112

101:                                              ; preds = %95
  %102 = load %struct.arc_operand_value*, %struct.arc_operand_value** %10, align 8
  %103 = getelementptr inbounds %struct.arc_operand_value, %struct.arc_operand_value* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @ARC_REGISTER_READONLY, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %101
  %109 = call i8* @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %110 = load i8**, i8*** %12, align 8
  store i8* %109, i8** %110, align 8
  br label %111

111:                                              ; preds = %108, %101
  br label %123

112:                                              ; preds = %95
  %113 = load %struct.arc_operand_value*, %struct.arc_operand_value** %10, align 8
  %114 = getelementptr inbounds %struct.arc_operand_value, %struct.arc_operand_value* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @ARC_REGISTER_WRITEONLY, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %112
  %120 = call i8* @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %121 = load i8**, i8*** %12, align 8
  store i8* %120, i8** %121, align 8
  br label %122

122:                                              ; preds = %119, %112
  br label %123

123:                                              ; preds = %122, %111
  %124 = load i32, i32* @ARC_REG_SHIMM, align 4
  %125 = load %struct.arc_operand*, %struct.arc_operand** %8, align 8
  %126 = getelementptr inbounds %struct.arc_operand, %struct.arc_operand* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = shl i32 %124, %127
  %129 = load i32, i32* %7, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %7, align 4
  %131 = load %struct.arc_operand_value*, %struct.arc_operand_value** %10, align 8
  %132 = getelementptr inbounds %struct.arc_operand_value, %struct.arc_operand_value* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** @arc_operands, align 8
  %135 = load %struct.arc_operand_value*, %struct.arc_operand_value** %10, align 8
  %136 = getelementptr inbounds %struct.arc_operand_value, %struct.arc_operand_value* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = shl i32 %133, %140
  %142 = load i32, i32* %7, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %7, align 4
  br label %144

144:                                              ; preds = %123, %92
  br label %208

145:                                              ; preds = %81
  %146 = load %struct.arc_operand*, %struct.arc_operand** %8, align 8
  %147 = getelementptr inbounds %struct.arc_operand, %struct.arc_operand* %146, i32 0, i32 0
  %148 = load i8, i8* %147, align 4
  %149 = sext i8 %148 to i32
  %150 = icmp eq i32 97, %149
  br i1 %150, label %157, label %151

151:                                              ; preds = %145
  %152 = load i32, i32* %7, align 4
  %153 = call i32 @I(i32 -1)
  %154 = and i32 %152, %153
  %155 = call i32 @I(i32 2)
  %156 = icmp slt i32 %154, %155
  br i1 %156, label %157, label %168

157:                                              ; preds = %151, %145
  %158 = load %struct.arc_operand_value*, %struct.arc_operand_value** %10, align 8
  %159 = getelementptr inbounds %struct.arc_operand_value, %struct.arc_operand_value* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @ARC_REGISTER_READONLY, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %157
  %165 = call i8* @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %166 = load i8**, i8*** %12, align 8
  store i8* %165, i8** %166, align 8
  br label %167

167:                                              ; preds = %164, %157
  br label %168

168:                                              ; preds = %167, %151
  %169 = load %struct.arc_operand*, %struct.arc_operand** %8, align 8
  %170 = getelementptr inbounds %struct.arc_operand, %struct.arc_operand* %169, i32 0, i32 0
  %171 = load i8, i8* %170, align 4
  %172 = sext i8 %171 to i32
  %173 = icmp ne i32 97, %172
  br i1 %173, label %174, label %185

174:                                              ; preds = %168
  %175 = load %struct.arc_operand_value*, %struct.arc_operand_value** %10, align 8
  %176 = getelementptr inbounds %struct.arc_operand_value, %struct.arc_operand_value* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* @ARC_REGISTER_WRITEONLY, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %174
  %182 = call i8* @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %183 = load i8**, i8*** %12, align 8
  store i8* %182, i8** %183, align 8
  br label %184

184:                                              ; preds = %181, %174
  br label %185

185:                                              ; preds = %184, %168
  %186 = load %struct.arc_operand_value*, %struct.arc_operand_value** %10, align 8
  %187 = getelementptr inbounds %struct.arc_operand_value, %struct.arc_operand_value* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 4
  %189 = icmp ugt i32 %188, 60
  br i1 %189, label %190, label %197

190:                                              ; preds = %185
  %191 = call i8* @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %192 = load %struct.arc_operand_value*, %struct.arc_operand_value** %10, align 8
  %193 = getelementptr inbounds %struct.arc_operand_value, %struct.arc_operand_value* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @sprintf(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @insert_reg.buf, i64 0, i64 0), i8* %191, i32 %194)
  %196 = load i8**, i8*** %12, align 8
  store i8* getelementptr inbounds ([100 x i8], [100 x i8]* @insert_reg.buf, i64 0, i64 0), i8** %196, align 8
  br label %197

197:                                              ; preds = %190, %185
  %198 = load %struct.arc_operand_value*, %struct.arc_operand_value** %10, align 8
  %199 = getelementptr inbounds %struct.arc_operand_value, %struct.arc_operand_value* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.arc_operand*, %struct.arc_operand** %8, align 8
  %202 = getelementptr inbounds %struct.arc_operand, %struct.arc_operand* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = shl i32 %200, %203
  %205 = load i32, i32* %7, align 4
  %206 = or i32 %205, %204
  store i32 %206, i32* %7, align 4
  %207 = load i32, i32* @OP_REG, align 4
  store i32 %207, i32* %13, align 4
  br label %208

208:                                              ; preds = %197, %144
  br label %209

209:                                              ; preds = %208, %80
  %210 = load %struct.arc_operand*, %struct.arc_operand** %8, align 8
  %211 = getelementptr inbounds %struct.arc_operand, %struct.arc_operand* %210, i32 0, i32 0
  %212 = load i8, i8* %211, align 4
  %213 = sext i8 %212 to i32
  switch i32 %213, label %246 [
    i32 97, label %214
    i32 115, label %219
    i32 99, label %224
    i32 111, label %241
    i32 79, label %241
  ]

214:                                              ; preds = %209
  %215 = load i32, i32* %13, align 4
  %216 = load i32*, i32** @ls_operand, align 8
  %217 = load i64, i64* @LS_DEST, align 8
  %218 = getelementptr inbounds i32, i32* %216, i64 %217
  store i32 %215, i32* %218, align 4
  br label %246

219:                                              ; preds = %209
  %220 = load i32, i32* %13, align 4
  %221 = load i32*, i32** @ls_operand, align 8
  %222 = load i64, i64* @LS_BASE, align 8
  %223 = getelementptr inbounds i32, i32* %221, i64 %222
  store i32 %220, i32* %223, align 4
  br label %246

224:                                              ; preds = %209
  %225 = load i32, i32* %7, align 4
  %226 = call i32 @I(i32 -1)
  %227 = and i32 %225, %226
  %228 = call i32 @I(i32 2)
  %229 = icmp eq i32 %227, %228
  br i1 %229, label %230, label %235

230:                                              ; preds = %224
  %231 = load i32, i32* %13, align 4
  %232 = load i32*, i32** @ls_operand, align 8
  %233 = load i64, i64* @LS_VALUE, align 8
  %234 = getelementptr inbounds i32, i32* %232, i64 %233
  store i32 %231, i32* %234, align 4
  br label %240

235:                                              ; preds = %224
  %236 = load i32, i32* %13, align 4
  %237 = load i32*, i32** @ls_operand, align 8
  %238 = load i64, i64* @LS_OFFSET, align 8
  %239 = getelementptr inbounds i32, i32* %237, i64 %238
  store i32 %236, i32* %239, align 4
  br label %240

240:                                              ; preds = %235, %230
  br label %246

241:                                              ; preds = %209, %209
  %242 = load i32, i32* %13, align 4
  %243 = load i32*, i32** @ls_operand, align 8
  %244 = load i64, i64* @LS_OFFSET, align 8
  %245 = getelementptr inbounds i32, i32* %243, i64 %244
  store i32 %242, i32* %245, align 4
  br label %246

246:                                              ; preds = %209, %241, %240, %219, %214
  %247 = load i32, i32* %7, align 4
  ret i32 %247
}

declare dso_local i64 @ARC_SHIMM_CONST_P(i64) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @I(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
