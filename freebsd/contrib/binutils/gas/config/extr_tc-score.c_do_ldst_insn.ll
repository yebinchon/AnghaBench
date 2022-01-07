; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-score.c_do_ldst_insn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-score.c_do_ldst_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i8*, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32* }

@REG_TYPE_SCORE = common dso_local global i32 0, align 4
@FAIL = common dso_local global i64 0, align 8
@SUCCESS = common dso_local global i64 0, align 8
@_SIMM12 = common dso_local global i64 0, align 8
@inst = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@OPC_PSEUDOLDST_MASK = common dso_local global i32 0, align 4
@INSN_LH = common dso_local global i32 0, align 4
@INSN_LHU = common dso_local global i32 0, align 4
@INSN_LW = common dso_local global i32 0, align 4
@INSN_LB = common dso_local global i32 0, align 4
@INSN_LBU = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"register same as write-back base\00", align 1
@score_ldst_insns = common dso_local global %struct.TYPE_7__* null, align 8
@LDST_POST = common dso_local global i32 0, align 4
@score_df_range = common dso_local global %struct.TYPE_8__* null, align 8
@LDST_NOUPDATE = common dso_local global i32 0, align 4
@INSN16_LBU = common dso_local global i32 0, align 4
@INSN16_LH = common dso_local global i32 0, align 4
@INSN16_LW = common dso_local global i32 0, align 4
@INSN_SB = common dso_local global i32 0, align 4
@INSN16_SB = common dso_local global i32 0, align 4
@INSN_SH = common dso_local global i32 0, align 4
@INSN16_SH = common dso_local global i32 0, align 4
@INSN_SW = common dso_local global i32 0, align 4
@INSN16_SW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"pre-indexed expression expected\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"missing ]\00", align 1
@O_constant = common dso_local global i64 0, align 8
@_SIMM15 = common dso_local global i32 0, align 4
@_SIMM16_LA = common dso_local global i32 0, align 4
@_VALUE_HI16 = common dso_local global i32 0, align 4
@_VALUE_LO16 = common dso_local global i32 0, align 4
@_IMM16 = common dso_local global i32 0, align 4
@_IMM15 = common dso_local global i32 0, align 4
@_IMM14 = common dso_local global i32 0, align 4
@_IMM4 = common dso_local global i32 0, align 4
@_IMM5 = common dso_local global i32 0, align 4
@_IMM8 = common dso_local global i32 0, align 4
@_IMM5_RSHIFT_1 = common dso_local global i32 0, align 4
@_IMM5_RSHIFT_2 = common dso_local global i32 0, align 4
@_SIMM14_NEG = common dso_local global i32 0, align 4
@_IMM10_RSHIFT_2 = common dso_local global i32 0, align 4
@err_msg = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [56 x i8] c"invalid constant: %d bit expression not in range %d..%d\00", align 1
@BAD_ARGS = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @do_ldst_insn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_ldst_insn(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %10, align 4
  %15 = load i8*, i8** %2, align 8
  store i8* %15, i8** %7, align 8
  %16 = load i8*, i8** %2, align 8
  %17 = call i32 @skip_whitespace(i8* %16)
  %18 = load i32, i32* @REG_TYPE_SCORE, align 4
  %19 = call i32 @reg_required_here(i8** %2, i32 20, i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i64, i64* @FAIL, align 8
  %21 = trunc i64 %20 to i32
  %22 = icmp eq i32 %19, %21
  br i1 %22, label %28, label %23

23:                                               ; preds = %1
  %24 = call i32 @skip_past_comma(i8** %2)
  %25 = load i64, i64* @FAIL, align 8
  %26 = trunc i64 %25 to i32
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %23, %1
  br label %995

29:                                               ; preds = %23
  %30 = load i8*, i8** %2, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 91
  br i1 %33, label %34, label %993

34:                                               ; preds = %29
  %35 = load i8*, i8** %2, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %2, align 8
  %37 = load i8*, i8** %2, align 8
  %38 = call i32 @skip_whitespace(i8* %37)
  %39 = load i32, i32* @REG_TYPE_SCORE, align 4
  %40 = call i32 @reg_required_here(i8** %2, i32 15, i32 %39)
  store i32 %40, i32* %9, align 4
  %41 = load i64, i64* @FAIL, align 8
  %42 = trunc i64 %41 to i32
  %43 = icmp eq i32 %40, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %34
  br label %995

45:                                               ; preds = %34
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp eq i32 %46, %47
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %4, align 4
  %50 = load i8*, i8** %2, align 8
  %51 = call i32 @skip_whitespace(i8* %50)
  %52 = load i8*, i8** %2, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 1
  store i8* %53, i8** %6, align 8
  %54 = load i8*, i8** %2, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 93
  br i1 %57, label %58, label %337

58:                                               ; preds = %45
  %59 = load i8*, i8** %2, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %2, align 8
  %61 = load i8*, i8** %2, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 43
  br i1 %64, label %65, label %221

65:                                               ; preds = %58
  %66 = load i8*, i8** %2, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %2, align 8
  %68 = call i32 @skip_past_comma(i8** %2)
  %69 = sext i32 %68 to i64
  %70 = load i64, i64* @SUCCESS, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %177

72:                                               ; preds = %65
  %73 = load i64, i64* @_SIMM12, align 8
  %74 = call i32 @exp_ldst_offset(i8** %2, i32 3, i64 %73)
  %75 = load i64, i64* @FAIL, align 8
  %76 = trunc i64 %75 to i32
  %77 = icmp eq i32 %74, %76
  br i1 %77, label %84, label %78

78:                                               ; preds = %72
  %79 = load i8*, i8** %2, align 8
  %80 = call i32 @end_of_line(i8* %79)
  %81 = load i64, i64* @FAIL, align 8
  %82 = trunc i64 %81 to i32
  %83 = icmp eq i32 %80, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %78, %72
  br label %995

85:                                               ; preds = %78
  %86 = load i32, i32* %4, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %114

88:                                               ; preds = %85
  %89 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 0), align 8
  %90 = load i32, i32* @OPC_PSEUDOLDST_MASK, align 4
  %91 = and i32 %89, %90
  store i32 %91, i32* %11, align 4
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* @INSN_LH, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %111, label %95

95:                                               ; preds = %88
  %96 = load i32, i32* %11, align 4
  %97 = load i32, i32* @INSN_LHU, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %111, label %99

99:                                               ; preds = %95
  %100 = load i32, i32* %11, align 4
  %101 = load i32, i32* @INSN_LW, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %111, label %103

103:                                              ; preds = %99
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* @INSN_LB, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %111, label %107

107:                                              ; preds = %103
  %108 = load i32, i32* %11, align 4
  %109 = load i32, i32* @INSN_LBU, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %107, %103, %99, %95, %88
  %112 = call i8* @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i8* %112, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 1), align 8
  br label %995

113:                                              ; preds = %107
  br label %114

114:                                              ; preds = %113, %85
  %115 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 0), align 8
  %116 = load i32, i32* @OPC_PSEUDOLDST_MASK, align 4
  %117 = and i32 %115, %116
  store i32 %117, i32* %10, align 4
  %118 = load i32, i32* @OPC_PSEUDOLDST_MASK, align 4
  %119 = xor i32 %118, -1
  %120 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 0), align 8
  %121 = and i32 %120, %119
  store i32 %121, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 0), align 8
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** @score_ldst_insns, align 8
  %123 = load i32, i32* %10, align 4
  %124 = mul nsw i32 %123, 3
  %125 = load i32, i32* @LDST_POST, align 4
  %126 = add nsw i32 %124, %125
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 0), align 8
  %132 = or i32 %131, %130
  store i32 %132, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 0), align 8
  %133 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 0), align 8
  %134 = and i32 %133, 1040187399
  %135 = icmp eq i32 %134, 234881024
  br i1 %135, label %136, label %176

136:                                              ; preds = %114
  %137 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 0), align 8
  %138 = ashr i32 %137, 15
  %139 = and i32 %138, 24
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %175

141:                                              ; preds = %136
  %142 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 0), align 8
  %143 = ashr i32 %142, 3
  %144 = and i32 %143, 4095
  %145 = icmp eq i32 %144, 4
  br i1 %145, label %146, label %175

146:                                              ; preds = %141
  %147 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 0), align 8
  %148 = ashr i32 %147, 20
  %149 = and i32 %148, 16
  %150 = icmp eq i32 %149, 16
  br i1 %150, label %151, label %163

151:                                              ; preds = %146
  %152 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 0), align 8
  %153 = ashr i32 %152, 20
  %154 = and i32 %153, 15
  %155 = shl i32 %154, 8
  %156 = or i32 8202, %155
  %157 = or i32 %156, 128
  %158 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 0), align 8
  %159 = ashr i32 %158, 15
  %160 = and i32 %159, 7
  %161 = shl i32 %160, 4
  %162 = or i32 %157, %161
  store i32 %162, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 2), align 8
  br label %174

163:                                              ; preds = %146
  %164 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 0), align 8
  %165 = ashr i32 %164, 20
  %166 = and i32 %165, 15
  %167 = shl i32 %166, 8
  %168 = or i32 8202, %167
  %169 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 0), align 8
  %170 = ashr i32 %169, 15
  %171 = and i32 %170, 7
  %172 = shl i32 %171, 4
  %173 = or i32 %168, %172
  store i32 %173, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 2), align 8
  br label %174

174:                                              ; preds = %163, %151
  store i32 2, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 3), align 4
  br label %175

175:                                              ; preds = %174, %141, %136
  br label %176

176:                                              ; preds = %175, %114
  br label %995

177:                                              ; preds = %65
  %178 = call i32 @SET_INSN_ERROR(i32* null)
  %179 = load i8*, i8** %2, align 8
  %180 = call i32 @end_of_line(i8* %179)
  %181 = load i64, i64* @FAIL, align 8
  %182 = trunc i64 %181 to i32
  %183 = icmp eq i32 %180, %182
  br i1 %183, label %184, label %185

184:                                              ; preds = %177
  br label %995

185:                                              ; preds = %177
  store i32 1, i32* %3, align 4
  %186 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 4, i32 1, i32 1), align 8
  %187 = load i64, i64* @_SIMM12, align 8
  %188 = trunc i64 %187 to i32
  %189 = call i32 @validate_immediate(i32 %186, i32 %188, i32 0)
  store i32 %189, i32* %5, align 4
  %190 = load %struct.TYPE_8__*, %struct.TYPE_8__** @score_df_range, align 8
  %191 = load i64, i64* @_SIMM12, align 8
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = shl i32 1, %194
  %196 = sub nsw i32 %195, 1
  %197 = load i32, i32* %5, align 4
  %198 = and i32 %197, %196
  store i32 %198, i32* %5, align 4
  %199 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 0), align 8
  %200 = load i32, i32* @OPC_PSEUDOLDST_MASK, align 4
  %201 = and i32 %199, %200
  store i32 %201, i32* %10, align 4
  %202 = load i32, i32* @OPC_PSEUDOLDST_MASK, align 4
  %203 = xor i32 %202, -1
  %204 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 0), align 8
  %205 = and i32 %204, %203
  store i32 %205, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 0), align 8
  %206 = load %struct.TYPE_7__*, %struct.TYPE_7__** @score_ldst_insns, align 8
  %207 = load i32, i32* %10, align 4
  %208 = mul nsw i32 %207, 3
  %209 = load i32, i32* %3, align 4
  %210 = add nsw i32 %208, %209
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %206, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 0), align 8
  %216 = or i32 %215, %214
  store i32 %216, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 0), align 8
  %217 = load i32, i32* %5, align 4
  %218 = shl i32 %217, 3
  %219 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 0), align 8
  %220 = or i32 %219, %218
  store i32 %220, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 0), align 8
  store i32 32768, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 2), align 8
  br label %995

221:                                              ; preds = %58
  %222 = load i8*, i8** %2, align 8
  %223 = call i32 @end_of_line(i8* %222)
  %224 = load i64, i64* @FAIL, align 8
  %225 = trunc i64 %224 to i32
  %226 = icmp eq i32 %223, %225
  br i1 %226, label %227, label %228

227:                                              ; preds = %221
  br label %995

228:                                              ; preds = %221
  %229 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 0), align 8
  %230 = load i32, i32* @OPC_PSEUDOLDST_MASK, align 4
  %231 = and i32 %229, %230
  store i32 %231, i32* %10, align 4
  %232 = load i32, i32* @OPC_PSEUDOLDST_MASK, align 4
  %233 = xor i32 %232, -1
  %234 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 0), align 8
  %235 = and i32 %234, %233
  store i32 %235, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 0), align 8
  %236 = load %struct.TYPE_7__*, %struct.TYPE_7__** @score_ldst_insns, align 8
  %237 = load i32, i32* %10, align 4
  %238 = mul nsw i32 %237, 3
  %239 = load i32, i32* @LDST_NOUPDATE, align 4
  %240 = add nsw i32 %238, %239
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %236, i64 %241
  %243 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 0), align 8
  %246 = or i32 %245, %244
  store i32 %246, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 0), align 8
  %247 = load i32, i32* %10, align 4
  %248 = load i32, i32* @INSN_LBU, align 4
  %249 = icmp eq i32 %247, %248
  br i1 %249, label %250, label %252

250:                                              ; preds = %228
  %251 = load i32, i32* @INSN16_LBU, align 4
  store i32 %251, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 2), align 8
  br label %288

252:                                              ; preds = %228
  %253 = load i32, i32* %10, align 4
  %254 = load i32, i32* @INSN_LH, align 4
  %255 = icmp eq i32 %253, %254
  br i1 %255, label %256, label %258

256:                                              ; preds = %252
  %257 = load i32, i32* @INSN16_LH, align 4
  store i32 %257, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 2), align 8
  br label %287

258:                                              ; preds = %252
  %259 = load i32, i32* %10, align 4
  %260 = load i32, i32* @INSN_LW, align 4
  %261 = icmp eq i32 %259, %260
  br i1 %261, label %262, label %264

262:                                              ; preds = %258
  %263 = load i32, i32* @INSN16_LW, align 4
  store i32 %263, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 2), align 8
  br label %286

264:                                              ; preds = %258
  %265 = load i32, i32* %10, align 4
  %266 = load i32, i32* @INSN_SB, align 4
  %267 = icmp eq i32 %265, %266
  br i1 %267, label %268, label %270

268:                                              ; preds = %264
  %269 = load i32, i32* @INSN16_SB, align 4
  store i32 %269, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 2), align 8
  br label %285

270:                                              ; preds = %264
  %271 = load i32, i32* %10, align 4
  %272 = load i32, i32* @INSN_SH, align 4
  %273 = icmp eq i32 %271, %272
  br i1 %273, label %274, label %276

274:                                              ; preds = %270
  %275 = load i32, i32* @INSN16_SH, align 4
  store i32 %275, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 2), align 8
  br label %284

276:                                              ; preds = %270
  %277 = load i32, i32* %10, align 4
  %278 = load i32, i32* @INSN_SW, align 4
  %279 = icmp eq i32 %277, %278
  br i1 %279, label %280, label %282

280:                                              ; preds = %276
  %281 = load i32, i32* @INSN16_SW, align 4
  store i32 %281, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 2), align 8
  br label %283

282:                                              ; preds = %276
  store i32 32768, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 2), align 8
  br label %283

283:                                              ; preds = %282, %280
  br label %284

284:                                              ; preds = %283, %274
  br label %285

285:                                              ; preds = %284, %268
  br label %286

286:                                              ; preds = %285, %262
  br label %287

287:                                              ; preds = %286, %256
  br label %288

288:                                              ; preds = %287, %250
  %289 = load i32, i32* %10, align 4
  %290 = load i32, i32* @INSN_LBU, align 4
  %291 = icmp eq i32 %289, %290
  br i1 %291, label %312, label %292

292:                                              ; preds = %288
  %293 = load i32, i32* %10, align 4
  %294 = load i32, i32* @INSN_LH, align 4
  %295 = icmp eq i32 %293, %294
  br i1 %295, label %312, label %296

296:                                              ; preds = %292
  %297 = load i32, i32* %10, align 4
  %298 = load i32, i32* @INSN_LW, align 4
  %299 = icmp eq i32 %297, %298
  br i1 %299, label %312, label %300

300:                                              ; preds = %296
  %301 = load i32, i32* %10, align 4
  %302 = load i32, i32* @INSN_SB, align 4
  %303 = icmp eq i32 %301, %302
  br i1 %303, label %312, label %304

304:                                              ; preds = %300
  %305 = load i32, i32* %10, align 4
  %306 = load i32, i32* @INSN_SH, align 4
  %307 = icmp eq i32 %305, %306
  br i1 %307, label %312, label %308

308:                                              ; preds = %304
  %309 = load i32, i32* %10, align 4
  %310 = load i32, i32* @INSN_SW, align 4
  %311 = icmp eq i32 %309, %310
  br i1 %311, label %312, label %336

312:                                              ; preds = %308, %304, %300, %296, %292, %288
  %313 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 0), align 8
  %314 = ashr i32 %313, 15
  %315 = and i32 %314, 16
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %317, label %335

317:                                              ; preds = %312
  %318 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 0), align 8
  %319 = ashr i32 %318, 20
  %320 = and i32 %319, 16
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %322, label %335

322:                                              ; preds = %317
  %323 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 0), align 8
  %324 = ashr i32 %323, 20
  %325 = and i32 %324, 15
  %326 = shl i32 %325, 8
  %327 = or i32 8192, %326
  %328 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 0), align 8
  %329 = ashr i32 %328, 15
  %330 = and i32 %329, 15
  %331 = shl i32 %330, 4
  %332 = or i32 %327, %331
  %333 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 2), align 8
  %334 = or i32 %333, %332
  store i32 %334, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 2), align 8
  store i32 2, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 3), align 4
  br label %335

335:                                              ; preds = %322, %317, %312
  br label %336

336:                                              ; preds = %335, %308
  br label %995

337:                                              ; preds = %45
  %338 = call i32 @skip_past_comma(i8** %2)
  %339 = load i64, i64* @FAIL, align 8
  %340 = trunc i64 %339 to i32
  %341 = icmp eq i32 %338, %340
  br i1 %341, label %342, label %344

342:                                              ; preds = %337
  %343 = call i8* @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  store i8* %343, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 1), align 8
  br label %995

344:                                              ; preds = %337
  %345 = call i32 @my_get_expression(%struct.TYPE_9__* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 4, i32 1), i8** %2)
  %346 = load i64, i64* @FAIL, align 8
  %347 = trunc i64 %346 to i32
  %348 = icmp eq i32 %345, %347
  br i1 %348, label %349, label %350

349:                                              ; preds = %344
  br label %995

350:                                              ; preds = %344
  %351 = load i8*, i8** %2, align 8
  %352 = call i32 @skip_whitespace(i8* %351)
  %353 = load i8*, i8** %2, align 8
  %354 = getelementptr inbounds i8, i8* %353, i32 1
  store i8* %354, i8** %2, align 8
  %355 = load i8, i8* %353, align 1
  %356 = sext i8 %355 to i32
  %357 = icmp ne i32 %356, 93
  br i1 %357, label %358, label %360

358:                                              ; preds = %350
  %359 = call i8* @_(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  store i8* %359, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 1), align 8
  br label %995

360:                                              ; preds = %350
  %361 = load i8*, i8** %2, align 8
  %362 = call i32 @skip_whitespace(i8* %361)
  %363 = load i8*, i8** %2, align 8
  %364 = load i8, i8* %363, align 1
  %365 = sext i8 %364 to i32
  %366 = icmp eq i32 %365, 43
  br i1 %366, label %367, label %399

367:                                              ; preds = %360
  %368 = load i8*, i8** %2, align 8
  %369 = getelementptr inbounds i8, i8* %368, i32 1
  store i8* %369, i8** %2, align 8
  store i32 1, i32* %3, align 4
  %370 = load i32, i32* %4, align 4
  %371 = icmp ne i32 %370, 0
  br i1 %371, label %372, label %398

372:                                              ; preds = %367
  %373 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 0), align 8
  %374 = load i32, i32* @OPC_PSEUDOLDST_MASK, align 4
  %375 = and i32 %373, %374
  store i32 %375, i32* %12, align 4
  %376 = load i32, i32* %12, align 4
  %377 = load i32, i32* @INSN_LH, align 4
  %378 = icmp eq i32 %376, %377
  br i1 %378, label %395, label %379

379:                                              ; preds = %372
  %380 = load i32, i32* %12, align 4
  %381 = load i32, i32* @INSN_LHU, align 4
  %382 = icmp eq i32 %380, %381
  br i1 %382, label %395, label %383

383:                                              ; preds = %379
  %384 = load i32, i32* %12, align 4
  %385 = load i32, i32* @INSN_LW, align 4
  %386 = icmp eq i32 %384, %385
  br i1 %386, label %395, label %387

387:                                              ; preds = %383
  %388 = load i32, i32* %12, align 4
  %389 = load i32, i32* @INSN_LB, align 4
  %390 = icmp eq i32 %388, %389
  br i1 %390, label %395, label %391

391:                                              ; preds = %387
  %392 = load i32, i32* %12, align 4
  %393 = load i32, i32* @INSN_LBU, align 4
  %394 = icmp eq i32 %392, %393
  br i1 %394, label %395, label %397

395:                                              ; preds = %391, %387, %383, %379, %372
  %396 = call i8* @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i8* %396, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 1), align 8
  br label %995

397:                                              ; preds = %391
  br label %398

398:                                              ; preds = %397, %367
  br label %399

399:                                              ; preds = %398, %360
  %400 = load i8*, i8** %2, align 8
  %401 = call i32 @end_of_line(i8* %400)
  %402 = load i64, i64* @FAIL, align 8
  %403 = trunc i64 %402 to i32
  %404 = icmp eq i32 %401, %403
  br i1 %404, label %405, label %406

405:                                              ; preds = %399
  br label %995

406:                                              ; preds = %399
  %407 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 4, i32 1, i32 0), align 8
  %408 = load i64, i64* @O_constant, align 8
  %409 = icmp eq i64 %407, %408
  br i1 %409, label %410, label %990

410:                                              ; preds = %406
  %411 = load i32, i32* %3, align 4
  %412 = icmp eq i32 %411, 1
  br i1 %412, label %413, label %416

413:                                              ; preds = %410
  %414 = load i64, i64* @_SIMM12, align 8
  %415 = trunc i64 %414 to i32
  store i32 %415, i32* %14, align 4
  br label %418

416:                                              ; preds = %410
  %417 = load i32, i32* @_SIMM15, align 4
  store i32 %417, i32* %14, align 4
  br label %418

418:                                              ; preds = %416, %413
  %419 = load i8*, i8** %6, align 8
  store i8* %419, i8** %8, align 8
  %420 = load i8*, i8** %8, align 8
  %421 = load i8, i8* %420, align 1
  %422 = sext i8 %421 to i32
  %423 = icmp eq i32 %422, 48
  br i1 %423, label %424, label %485

424:                                              ; preds = %418
  %425 = load i8*, i8** %8, align 8
  %426 = getelementptr inbounds i8, i8* %425, i64 1
  %427 = load i8, i8* %426, align 1
  %428 = sext i8 %427 to i32
  %429 = icmp eq i32 %428, 120
  br i1 %429, label %430, label %485

430:                                              ; preds = %424
  %431 = load i32, i32* %14, align 4
  %432 = load i32, i32* @_SIMM16_LA, align 4
  %433 = icmp ne i32 %431, %432
  br i1 %433, label %434, label %485

434:                                              ; preds = %430
  %435 = load i32, i32* %14, align 4
  %436 = load i32, i32* @_VALUE_HI16, align 4
  %437 = icmp ne i32 %435, %436
  br i1 %437, label %438, label %485

438:                                              ; preds = %434
  %439 = load i32, i32* %14, align 4
  %440 = load i32, i32* @_VALUE_LO16, align 4
  %441 = icmp ne i32 %439, %440
  br i1 %441, label %442, label %485

442:                                              ; preds = %438
  %443 = load i32, i32* %14, align 4
  %444 = load i32, i32* @_IMM16, align 4
  %445 = icmp ne i32 %443, %444
  br i1 %445, label %446, label %485

446:                                              ; preds = %442
  %447 = load i32, i32* %14, align 4
  %448 = load i32, i32* @_IMM15, align 4
  %449 = icmp ne i32 %447, %448
  br i1 %449, label %450, label %485

450:                                              ; preds = %446
  %451 = load i32, i32* %14, align 4
  %452 = load i32, i32* @_IMM14, align 4
  %453 = icmp ne i32 %451, %452
  br i1 %453, label %454, label %485

454:                                              ; preds = %450
  %455 = load i32, i32* %14, align 4
  %456 = load i32, i32* @_IMM4, align 4
  %457 = icmp ne i32 %455, %456
  br i1 %457, label %458, label %485

458:                                              ; preds = %454
  %459 = load i32, i32* %14, align 4
  %460 = load i32, i32* @_IMM5, align 4
  %461 = icmp ne i32 %459, %460
  br i1 %461, label %462, label %485

462:                                              ; preds = %458
  %463 = load i32, i32* %14, align 4
  %464 = load i32, i32* @_IMM8, align 4
  %465 = icmp ne i32 %463, %464
  br i1 %465, label %466, label %485

466:                                              ; preds = %462
  %467 = load i32, i32* %14, align 4
  %468 = load i32, i32* @_IMM5_RSHIFT_1, align 4
  %469 = icmp ne i32 %467, %468
  br i1 %469, label %470, label %485

470:                                              ; preds = %466
  %471 = load i32, i32* %14, align 4
  %472 = load i32, i32* @_IMM5_RSHIFT_2, align 4
  %473 = icmp ne i32 %471, %472
  br i1 %473, label %474, label %485

474:                                              ; preds = %470
  %475 = load i32, i32* %14, align 4
  %476 = load i32, i32* @_SIMM14_NEG, align 4
  %477 = icmp ne i32 %475, %476
  br i1 %477, label %478, label %485

478:                                              ; preds = %474
  %479 = load i32, i32* %14, align 4
  %480 = load i32, i32* @_IMM10_RSHIFT_2, align 4
  %481 = icmp ne i32 %479, %480
  br i1 %481, label %482, label %485

482:                                              ; preds = %478
  %483 = load i32, i32* %14, align 4
  %484 = add i32 %483, 24
  store i32 %484, i32* %14, align 4
  br label %485

485:                                              ; preds = %482, %478, %474, %470, %466, %462, %458, %454, %450, %446, %442, %438, %434, %430, %424, %418
  %486 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 4, i32 1, i32 1), align 8
  %487 = load i32, i32* %14, align 4
  %488 = call i32 @validate_immediate(i32 %486, i32 %487, i32 0)
  store i32 %488, i32* %13, align 4
  %489 = load i32, i32* %13, align 4
  %490 = load i64, i64* @FAIL, align 8
  %491 = trunc i64 %490 to i32
  %492 = icmp eq i32 %489, %491
  br i1 %492, label %493, label %553

493:                                              ; preds = %485
  %494 = load i32, i32* %14, align 4
  %495 = icmp ult i32 %494, 30
  br i1 %495, label %496, label %522

496:                                              ; preds = %493
  %497 = load i8*, i8** @err_msg, align 8
  %498 = call i8* @_(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0))
  %499 = load %struct.TYPE_8__*, %struct.TYPE_8__** @score_df_range, align 8
  %500 = load i32, i32* %14, align 4
  %501 = zext i32 %500 to i64
  %502 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %499, i64 %501
  %503 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %502, i32 0, i32 0
  %504 = load i32, i32* %503, align 8
  %505 = load %struct.TYPE_8__*, %struct.TYPE_8__** @score_df_range, align 8
  %506 = load i32, i32* %14, align 4
  %507 = zext i32 %506 to i64
  %508 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %505, i64 %507
  %509 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %508, i32 0, i32 1
  %510 = load i32*, i32** %509, align 8
  %511 = getelementptr inbounds i32, i32* %510, i64 0
  %512 = load i32, i32* %511, align 4
  %513 = load %struct.TYPE_8__*, %struct.TYPE_8__** @score_df_range, align 8
  %514 = load i32, i32* %14, align 4
  %515 = zext i32 %514 to i64
  %516 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %513, i64 %515
  %517 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %516, i32 0, i32 1
  %518 = load i32*, i32** %517, align 8
  %519 = getelementptr inbounds i32, i32* %518, i64 1
  %520 = load i32, i32* %519, align 4
  %521 = call i32 @sprintf(i8* %497, i8* %498, i32 %504, i32 %512, i32 %520)
  br label %551

522:                                              ; preds = %493
  %523 = load i8*, i8** @err_msg, align 8
  %524 = call i8* @_(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0))
  %525 = load %struct.TYPE_8__*, %struct.TYPE_8__** @score_df_range, align 8
  %526 = load i32, i32* %14, align 4
  %527 = sub i32 %526, 24
  %528 = zext i32 %527 to i64
  %529 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %525, i64 %528
  %530 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %529, i32 0, i32 0
  %531 = load i32, i32* %530, align 8
  %532 = load %struct.TYPE_8__*, %struct.TYPE_8__** @score_df_range, align 8
  %533 = load i32, i32* %14, align 4
  %534 = sub i32 %533, 24
  %535 = zext i32 %534 to i64
  %536 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %532, i64 %535
  %537 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %536, i32 0, i32 1
  %538 = load i32*, i32** %537, align 8
  %539 = getelementptr inbounds i32, i32* %538, i64 0
  %540 = load i32, i32* %539, align 4
  %541 = load %struct.TYPE_8__*, %struct.TYPE_8__** @score_df_range, align 8
  %542 = load i32, i32* %14, align 4
  %543 = sub i32 %542, 24
  %544 = zext i32 %543 to i64
  %545 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %541, i64 %544
  %546 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %545, i32 0, i32 1
  %547 = load i32*, i32** %546, align 8
  %548 = getelementptr inbounds i32, i32* %547, i64 1
  %549 = load i32, i32* %548, align 4
  %550 = call i32 @sprintf(i8* %523, i8* %524, i32 %531, i32 %540, i32 %549)
  br label %551

551:                                              ; preds = %522, %496
  %552 = load i8*, i8** @err_msg, align 8
  store i8* %552, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 1), align 8
  br label %995

553:                                              ; preds = %485
  %554 = load %struct.TYPE_8__*, %struct.TYPE_8__** @score_df_range, align 8
  %555 = load i32, i32* %14, align 4
  %556 = zext i32 %555 to i64
  %557 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %554, i64 %556
  %558 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %557, i32 0, i32 0
  %559 = load i32, i32* %558, align 8
  %560 = shl i32 1, %559
  %561 = sub nsw i32 %560, 1
  %562 = load i32, i32* %13, align 4
  %563 = and i32 %562, %561
  store i32 %563, i32* %13, align 4
  %564 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 0), align 8
  %565 = load i32, i32* @OPC_PSEUDOLDST_MASK, align 4
  %566 = and i32 %564, %565
  store i32 %566, i32* %10, align 4
  %567 = load i32, i32* @OPC_PSEUDOLDST_MASK, align 4
  %568 = xor i32 %567, -1
  %569 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 0), align 8
  %570 = and i32 %569, %568
  store i32 %570, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 0), align 8
  %571 = load %struct.TYPE_7__*, %struct.TYPE_7__** @score_ldst_insns, align 8
  %572 = load i32, i32* %10, align 4
  %573 = mul nsw i32 %572, 3
  %574 = load i32, i32* %3, align 4
  %575 = add nsw i32 %573, %574
  %576 = sext i32 %575 to i64
  %577 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %571, i64 %576
  %578 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %577, i32 0, i32 0
  %579 = load i32, i32* %578, align 4
  %580 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 0), align 8
  %581 = or i32 %580, %579
  store i32 %581, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 0), align 8
  %582 = load i32, i32* %3, align 4
  %583 = icmp eq i32 %582, 1
  br i1 %583, label %584, label %589

584:                                              ; preds = %553
  %585 = load i32, i32* %13, align 4
  %586 = shl i32 %585, 3
  %587 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 0), align 8
  %588 = or i32 %587, %586
  store i32 %588, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 0), align 8
  br label %593

589:                                              ; preds = %553
  %590 = load i32, i32* %13, align 4
  %591 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 0), align 8
  %592 = or i32 %591, %590
  store i32 %592, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 0), align 8
  br label %593

593:                                              ; preds = %589, %584
  %594 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 0), align 8
  %595 = and i32 %594, 1040187392
  %596 = icmp eq i32 %595, 536870912
  br i1 %596, label %597, label %652

597:                                              ; preds = %593
  %598 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 0), align 8
  %599 = ashr i32 %598, 15
  %600 = and i32 %599, 16
  %601 = icmp eq i32 %600, 0
  br i1 %601, label %602, label %650

602:                                              ; preds = %597
  %603 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 0), align 8
  %604 = ashr i32 %603, 20
  %605 = and i32 %604, 16
  %606 = icmp eq i32 %605, 0
  br i1 %606, label %607, label %650

607:                                              ; preds = %602
  %608 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 0), align 8
  %609 = and i32 %608, 32767
  %610 = icmp eq i32 %609, 0
  br i1 %610, label %611, label %623

611:                                              ; preds = %607
  %612 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 0), align 8
  %613 = ashr i32 %612, 15
  %614 = and i32 %613, 15
  %615 = shl i32 %614, 4
  %616 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 0), align 8
  %617 = ashr i32 %616, 20
  %618 = and i32 %617, 15
  %619 = shl i32 %618, 8
  %620 = or i32 %615, %619
  %621 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 2), align 8
  %622 = or i32 %621, %620
  store i32 %622, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 2), align 8
  store i32 2, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 3), align 4
  br label %649

623:                                              ; preds = %607
  %624 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 0), align 8
  %625 = ashr i32 %624, 15
  %626 = and i32 %625, 15
  %627 = icmp eq i32 %626, 2
  br i1 %627, label %628, label %647

628:                                              ; preds = %623
  %629 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 0), align 8
  %630 = and i32 %629, 3
  %631 = icmp eq i32 %630, 0
  br i1 %631, label %632, label %647

632:                                              ; preds = %628
  %633 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 0), align 8
  %634 = and i32 %633, 32767
  %635 = icmp slt i32 %634, 128
  br i1 %635, label %636, label %647

636:                                              ; preds = %632
  %637 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 0), align 8
  %638 = ashr i32 %637, 20
  %639 = and i32 %638, 15
  %640 = shl i32 %639, 8
  %641 = or i32 28672, %640
  %642 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 0), align 8
  %643 = and i32 %642, 32767
  %644 = ashr i32 %643, 2
  %645 = shl i32 %644, 3
  %646 = or i32 %641, %645
  store i32 %646, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 2), align 8
  store i32 2, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 3), align 4
  br label %648

647:                                              ; preds = %632, %628, %623
  store i32 32768, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 2), align 8
  br label %648

648:                                              ; preds = %647, %636
  br label %649

649:                                              ; preds = %648, %611
  br label %651

650:                                              ; preds = %602, %597
  store i32 32768, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 2), align 8
  br label %651

651:                                              ; preds = %650, %649
  br label %989

652:                                              ; preds = %593
  %653 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 0), align 8
  %654 = and i32 %653, 1040187392
  %655 = icmp eq i32 %654, 671088640
  br i1 %655, label %656, label %711

656:                                              ; preds = %652
  %657 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 0), align 8
  %658 = ashr i32 %657, 15
  %659 = and i32 %658, 16
  %660 = icmp eq i32 %659, 0
  br i1 %660, label %661, label %709

661:                                              ; preds = %656
  %662 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 0), align 8
  %663 = ashr i32 %662, 20
  %664 = and i32 %663, 16
  %665 = icmp eq i32 %664, 0
  br i1 %665, label %666, label %709

666:                                              ; preds = %661
  %667 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 0), align 8
  %668 = and i32 %667, 32767
  %669 = icmp eq i32 %668, 0
  br i1 %669, label %670, label %682

670:                                              ; preds = %666
  %671 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 0), align 8
  %672 = ashr i32 %671, 15
  %673 = and i32 %672, 15
  %674 = shl i32 %673, 4
  %675 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 0), align 8
  %676 = ashr i32 %675, 20
  %677 = and i32 %676, 15
  %678 = shl i32 %677, 8
  %679 = or i32 %674, %678
  %680 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 2), align 8
  %681 = or i32 %680, %679
  store i32 %681, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 2), align 8
  store i32 2, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 3), align 4
  br label %708

682:                                              ; preds = %666
  %683 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 0), align 8
  %684 = ashr i32 %683, 15
  %685 = and i32 %684, 15
  %686 = icmp eq i32 %685, 2
  br i1 %686, label %687, label %706

687:                                              ; preds = %682
  %688 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 0), align 8
  %689 = and i32 %688, 3
  %690 = icmp eq i32 %689, 0
  br i1 %690, label %691, label %706

691:                                              ; preds = %687
  %692 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 0), align 8
  %693 = and i32 %692, 32767
  %694 = icmp slt i32 %693, 128
  br i1 %694, label %695, label %706

695:                                              ; preds = %691
  %696 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 0), align 8
  %697 = ashr i32 %696, 20
  %698 = and i32 %697, 15
  %699 = shl i32 %698, 8
  %700 = or i32 28676, %699
  %701 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 0), align 8
  %702 = and i32 %701, 32767
  %703 = ashr i32 %702, 2
  %704 = shl i32 %703, 3
  %705 = or i32 %700, %704
  store i32 %705, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 2), align 8
  store i32 2, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 3), align 4
  br label %707

706:                                              ; preds = %691, %687, %682
  store i32 32768, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 2), align 8
  br label %707

707:                                              ; preds = %706, %695
  br label %708

708:                                              ; preds = %707, %670
  br label %710

709:                                              ; preds = %661, %656
  store i32 32768, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 2), align 8
  br label %710

710:                                              ; preds = %709, %708
  br label %988

711:                                              ; preds = %652
  %712 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 0), align 8
  %713 = and i32 %712, 1040187399
  %714 = icmp eq i32 %713, 100663300
  br i1 %714, label %715, label %756

715:                                              ; preds = %711
  %716 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 0), align 8
  %717 = ashr i32 %716, 15
  %718 = and i32 %717, 24
  %719 = icmp eq i32 %718, 0
  br i1 %719, label %720, label %754

720:                                              ; preds = %715
  %721 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 0), align 8
  %722 = ashr i32 %721, 3
  %723 = and i32 %722, 4095
  %724 = icmp eq i32 %723, 4092
  br i1 %724, label %725, label %754

725:                                              ; preds = %720
  %726 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 0), align 8
  %727 = ashr i32 %726, 20
  %728 = and i32 %727, 16
  %729 = icmp eq i32 %728, 16
  br i1 %729, label %730, label %742

730:                                              ; preds = %725
  %731 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 0), align 8
  %732 = ashr i32 %731, 20
  %733 = and i32 %732, 15
  %734 = shl i32 %733, 8
  %735 = or i32 8206, %734
  %736 = or i32 %735, 128
  %737 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 0), align 8
  %738 = ashr i32 %737, 15
  %739 = and i32 %738, 7
  %740 = shl i32 %739, 4
  %741 = or i32 %736, %740
  store i32 %741, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 2), align 8
  store i32 2, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 3), align 4
  br label %753

742:                                              ; preds = %725
  %743 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 0), align 8
  %744 = ashr i32 %743, 20
  %745 = and i32 %744, 15
  %746 = shl i32 %745, 8
  %747 = or i32 8206, %746
  %748 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 0), align 8
  %749 = ashr i32 %748, 15
  %750 = and i32 %749, 7
  %751 = shl i32 %750, 4
  %752 = or i32 %747, %751
  store i32 %752, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 2), align 8
  store i32 2, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 3), align 4
  br label %753

753:                                              ; preds = %742, %730
  br label %755

754:                                              ; preds = %720, %715
  store i32 32768, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 2), align 8
  br label %755

755:                                              ; preds = %754, %753
  br label %987

756:                                              ; preds = %711
  %757 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 0), align 8
  %758 = and i32 %757, 1040187392
  %759 = icmp eq i32 %758, 570425344
  br i1 %759, label %760, label %815

760:                                              ; preds = %756
  %761 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 0), align 8
  %762 = ashr i32 %761, 15
  %763 = and i32 %762, 16
  %764 = icmp eq i32 %763, 0
  br i1 %764, label %765, label %813

765:                                              ; preds = %760
  %766 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 0), align 8
  %767 = ashr i32 %766, 20
  %768 = and i32 %767, 16
  %769 = icmp eq i32 %768, 0
  br i1 %769, label %770, label %813

770:                                              ; preds = %765
  %771 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 0), align 8
  %772 = and i32 %771, 32767
  %773 = icmp eq i32 %772, 0
  br i1 %773, label %774, label %786

774:                                              ; preds = %770
  %775 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 0), align 8
  %776 = ashr i32 %775, 15
  %777 = and i32 %776, 15
  %778 = shl i32 %777, 4
  %779 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 0), align 8
  %780 = ashr i32 %779, 20
  %781 = and i32 %780, 15
  %782 = shl i32 %781, 8
  %783 = or i32 %778, %782
  %784 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 2), align 8
  %785 = or i32 %784, %783
  store i32 %785, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 2), align 8
  store i32 2, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 3), align 4
  br label %812

786:                                              ; preds = %770
  %787 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 0), align 8
  %788 = ashr i32 %787, 15
  %789 = and i32 %788, 15
  %790 = icmp eq i32 %789, 2
  br i1 %790, label %791, label %810

791:                                              ; preds = %786
  %792 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 0), align 8
  %793 = and i32 %792, 1
  %794 = icmp eq i32 %793, 0
  br i1 %794, label %795, label %810

795:                                              ; preds = %791
  %796 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 0), align 8
  %797 = and i32 %796, 32767
  %798 = icmp slt i32 %797, 64
  br i1 %798, label %799, label %810

799:                                              ; preds = %795
  %800 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 0), align 8
  %801 = ashr i32 %800, 20
  %802 = and i32 %801, 15
  %803 = shl i32 %802, 8
  %804 = or i32 28673, %803
  %805 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 0), align 8
  %806 = and i32 %805, 32767
  %807 = ashr i32 %806, 1
  %808 = shl i32 %807, 3
  %809 = or i32 %804, %808
  store i32 %809, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 2), align 8
  store i32 2, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 3), align 4
  br label %811

810:                                              ; preds = %795, %791, %786
  store i32 32768, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 2), align 8
  br label %811

811:                                              ; preds = %810, %799
  br label %812

812:                                              ; preds = %811, %774
  br label %814

813:                                              ; preds = %765, %760
  store i32 32768, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 2), align 8
  br label %814

814:                                              ; preds = %813, %812
  br label %986

815:                                              ; preds = %756
  %816 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 0), align 8
  %817 = and i32 %816, 1040187392
  %818 = icmp eq i32 %817, 704643072
  br i1 %818, label %819, label %874

819:                                              ; preds = %815
  %820 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 0), align 8
  %821 = ashr i32 %820, 15
  %822 = and i32 %821, 16
  %823 = icmp eq i32 %822, 0
  br i1 %823, label %824, label %872

824:                                              ; preds = %819
  %825 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 0), align 8
  %826 = ashr i32 %825, 20
  %827 = and i32 %826, 16
  %828 = icmp eq i32 %827, 0
  br i1 %828, label %829, label %872

829:                                              ; preds = %824
  %830 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 0), align 8
  %831 = and i32 %830, 32767
  %832 = icmp eq i32 %831, 0
  br i1 %832, label %833, label %845

833:                                              ; preds = %829
  %834 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 0), align 8
  %835 = ashr i32 %834, 15
  %836 = and i32 %835, 15
  %837 = shl i32 %836, 4
  %838 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 0), align 8
  %839 = ashr i32 %838, 20
  %840 = and i32 %839, 15
  %841 = shl i32 %840, 8
  %842 = or i32 %837, %841
  %843 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 2), align 8
  %844 = or i32 %843, %842
  store i32 %844, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 2), align 8
  store i32 2, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 3), align 4
  br label %871

845:                                              ; preds = %829
  %846 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 0), align 8
  %847 = ashr i32 %846, 15
  %848 = and i32 %847, 15
  %849 = icmp eq i32 %848, 2
  br i1 %849, label %850, label %869

850:                                              ; preds = %845
  %851 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 0), align 8
  %852 = and i32 %851, 1
  %853 = icmp eq i32 %852, 0
  br i1 %853, label %854, label %869

854:                                              ; preds = %850
  %855 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 0), align 8
  %856 = and i32 %855, 32767
  %857 = icmp slt i32 %856, 64
  br i1 %857, label %858, label %869

858:                                              ; preds = %854
  %859 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 0), align 8
  %860 = ashr i32 %859, 20
  %861 = and i32 %860, 15
  %862 = shl i32 %861, 8
  %863 = or i32 28677, %862
  %864 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 0), align 8
  %865 = and i32 %864, 32767
  %866 = ashr i32 %865, 1
  %867 = shl i32 %866, 3
  %868 = or i32 %863, %867
  store i32 %868, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 2), align 8
  store i32 2, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 3), align 4
  br label %870

869:                                              ; preds = %854, %850, %845
  store i32 32768, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 2), align 8
  br label %870

870:                                              ; preds = %869, %858
  br label %871

871:                                              ; preds = %870, %833
  br label %873

872:                                              ; preds = %824, %819
  store i32 32768, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 2), align 8
  br label %873

873:                                              ; preds = %872, %871
  br label %985

874:                                              ; preds = %815
  %875 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 0), align 8
  %876 = and i32 %875, 1040187392
  %877 = icmp eq i32 %876, 738197504
  br i1 %877, label %878, label %928

878:                                              ; preds = %874
  %879 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 0), align 8
  %880 = ashr i32 %879, 15
  %881 = and i32 %880, 16
  %882 = icmp eq i32 %881, 0
  br i1 %882, label %883, label %926

883:                                              ; preds = %878
  %884 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 0), align 8
  %885 = ashr i32 %884, 20
  %886 = and i32 %885, 16
  %887 = icmp eq i32 %886, 0
  br i1 %887, label %888, label %926

888:                                              ; preds = %883
  %889 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 0), align 8
  %890 = and i32 %889, 32767
  %891 = icmp eq i32 %890, 0
  br i1 %891, label %892, label %904

892:                                              ; preds = %888
  %893 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 0), align 8
  %894 = ashr i32 %893, 15
  %895 = and i32 %894, 15
  %896 = shl i32 %895, 4
  %897 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 0), align 8
  %898 = ashr i32 %897, 20
  %899 = and i32 %898, 15
  %900 = shl i32 %899, 8
  %901 = or i32 %896, %900
  %902 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 2), align 8
  %903 = or i32 %902, %901
  store i32 %903, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 2), align 8
  store i32 2, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 3), align 4
  br label %925

904:                                              ; preds = %888
  %905 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 0), align 8
  %906 = ashr i32 %905, 15
  %907 = and i32 %906, 15
  %908 = icmp eq i32 %907, 2
  br i1 %908, label %909, label %923

909:                                              ; preds = %904
  %910 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 0), align 8
  %911 = and i32 %910, 32767
  %912 = icmp slt i32 %911, 32
  br i1 %912, label %913, label %923

913:                                              ; preds = %909
  %914 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 0), align 8
  %915 = ashr i32 %914, 20
  %916 = and i32 %915, 15
  %917 = shl i32 %916, 8
  %918 = or i32 28675, %917
  %919 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 0), align 8
  %920 = and i32 %919, 32767
  %921 = shl i32 %920, 3
  %922 = or i32 %918, %921
  store i32 %922, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 2), align 8
  store i32 2, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 3), align 4
  br label %924

923:                                              ; preds = %909, %904
  store i32 32768, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 2), align 8
  br label %924

924:                                              ; preds = %923, %913
  br label %925

925:                                              ; preds = %924, %892
  br label %927

926:                                              ; preds = %883, %878
  store i32 32768, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 2), align 8
  br label %927

927:                                              ; preds = %926, %925
  br label %984

928:                                              ; preds = %874
  %929 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 0), align 8
  %930 = and i32 %929, 1040187392
  %931 = icmp eq i32 %930, 771751936
  br i1 %931, label %932, label %982

932:                                              ; preds = %928
  %933 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 0), align 8
  %934 = ashr i32 %933, 15
  %935 = and i32 %934, 16
  %936 = icmp eq i32 %935, 0
  br i1 %936, label %937, label %980

937:                                              ; preds = %932
  %938 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 0), align 8
  %939 = ashr i32 %938, 20
  %940 = and i32 %939, 16
  %941 = icmp eq i32 %940, 0
  br i1 %941, label %942, label %980

942:                                              ; preds = %937
  %943 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 0), align 8
  %944 = and i32 %943, 32767
  %945 = icmp eq i32 %944, 0
  br i1 %945, label %946, label %958

946:                                              ; preds = %942
  %947 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 0), align 8
  %948 = ashr i32 %947, 15
  %949 = and i32 %948, 15
  %950 = shl i32 %949, 4
  %951 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 0), align 8
  %952 = ashr i32 %951, 20
  %953 = and i32 %952, 15
  %954 = shl i32 %953, 8
  %955 = or i32 %950, %954
  %956 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 2), align 8
  %957 = or i32 %956, %955
  store i32 %957, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 2), align 8
  store i32 2, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 3), align 4
  br label %979

958:                                              ; preds = %942
  %959 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 0), align 8
  %960 = ashr i32 %959, 15
  %961 = and i32 %960, 15
  %962 = icmp eq i32 %961, 2
  br i1 %962, label %963, label %977

963:                                              ; preds = %958
  %964 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 0), align 8
  %965 = and i32 %964, 32767
  %966 = icmp slt i32 %965, 32
  br i1 %966, label %967, label %977

967:                                              ; preds = %963
  %968 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 0), align 8
  %969 = ashr i32 %968, 20
  %970 = and i32 %969, 15
  %971 = shl i32 %970, 8
  %972 = or i32 28679, %971
  %973 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 0), align 8
  %974 = and i32 %973, 32767
  %975 = shl i32 %974, 3
  %976 = or i32 %972, %975
  store i32 %976, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 2), align 8
  store i32 2, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 3), align 4
  br label %978

977:                                              ; preds = %963, %958
  store i32 32768, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 2), align 8
  br label %978

978:                                              ; preds = %977, %967
  br label %979

979:                                              ; preds = %978, %946
  br label %981

980:                                              ; preds = %937, %932
  store i32 32768, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 2), align 8
  br label %981

981:                                              ; preds = %980, %979
  br label %983

982:                                              ; preds = %928
  store i32 32768, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 2), align 8
  br label %983

983:                                              ; preds = %982, %981
  br label %984

984:                                              ; preds = %983, %927
  br label %985

985:                                              ; preds = %984, %873
  br label %986

986:                                              ; preds = %985, %814
  br label %987

987:                                              ; preds = %986, %755
  br label %988

988:                                              ; preds = %987, %710
  br label %989

989:                                              ; preds = %988, %651
  br label %995

990:                                              ; preds = %406
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 4, i32 0), align 8
  br label %991

991:                                              ; preds = %990
  br label %992

992:                                              ; preds = %991
  br label %995

993:                                              ; preds = %29
  %994 = load i8*, i8** @BAD_ARGS, align 8
  store i8* %994, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @inst, i32 0, i32 1), align 8
  br label %995

995:                                              ; preds = %28, %44, %84, %111, %176, %184, %185, %227, %336, %342, %349, %358, %395, %405, %551, %989, %993, %992
  ret void
}

declare dso_local i32 @skip_whitespace(i8*) #1

declare dso_local i32 @reg_required_here(i8**, i32, i32) #1

declare dso_local i32 @skip_past_comma(i8**) #1

declare dso_local i32 @exp_ldst_offset(i8**, i32, i64) #1

declare dso_local i32 @end_of_line(i8*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @SET_INSN_ERROR(i32*) #1

declare dso_local i32 @validate_immediate(i32, i32, i32) #1

declare dso_local i32 @my_get_expression(%struct.TYPE_9__*, i8**) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
