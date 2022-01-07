; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-score.c_data_op2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-score.c_data_op2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i64, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_7__, i64, i32 }
%struct.TYPE_7__ = type { i32, i32, i64 }
%struct.TYPE_6__ = type { i32, i32* }

@MAX_LITERAL_POOL_SIZE = common dso_local global i32 0, align 4
@inst = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@FAIL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"0x\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"0X\00", align 1
@_IMM16 = common dso_local global i32 0, align 4
@_IMM15 = common dso_local global i32 0, align 4
@_IMM14 = common dso_local global i32 0, align 4
@_IMM4 = common dso_local global i32 0, align 4
@_IMM5 = common dso_local global i32 0, align 4
@_IMM8 = common dso_local global i32 0, align 4
@_IMM5_RSHIFT_1 = common dso_local global i32 0, align 4
@_IMM5_RSHIFT_2 = common dso_local global i32 0, align 4
@_SIMM14 = common dso_local global i32 0, align 4
@_SIMM14_NEG = common dso_local global i32 0, align 4
@_SIMM16_NEG = common dso_local global i32 0, align 4
@_IMM10_RSHIFT_2 = common dso_local global i32 0, align 4
@Insn_Type_SYN = common dso_local global i64 0, align 8
@Rd_rvalueRs_SI15 = common dso_local global i64 0, align 8
@Rd_lvalueRs_SI15 = common dso_local global i64 0, align 8
@Insn_internal = common dso_local global i64 0, align 8
@BAD_ARGS = common dso_local global i8* null, align 8
@_SIMM16 = common dso_local global i32 0, align 4
@_IMM16_NEG = common dso_local global i32 0, align 4
@_IMM20 = common dso_local global i32 0, align 4
@BFD_RELOC_HI16_S = common dso_local global i32 0, align 4
@BFD_RELOC_LO16 = common dso_local global i32 0, align 4
@BFD_RELOC_SCORE_GPREL15 = common dso_local global i32 0, align 4
@BFD_RELOC_SCORE_GOT_LO16 = common dso_local global i32 0, align 4
@BFD_RELOC_32 = common dso_local global i32 0, align 4
@_IMM16_pic = common dso_local global i32 0, align 4
@BFD_RELOC_SCORE_DUMMY_HI16 = common dso_local global i32 0, align 4
@_SIMM16_LA_POS = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@err_msg = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [56 x i8] c"invalid constant: %d bit expression not in range %d..%d\00", align 1
@score_df_range = common dso_local global %struct.TYPE_6__* null, align 8
@_IMM5_RANGE_8_31 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"invalid constant: bit expression not defined\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i32, i32)* @data_op2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @data_op2(i8** %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %16 = load i32, i32* @MAX_LITERAL_POOL_SIZE, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %9, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %10, align 8
  store i32 0, i32* %12, align 4
  store i8* null, i8** %13, align 8
  %20 = load i8**, i8*** %5, align 8
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @skip_whitespace(i8* %21)
  store i8* null, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  %23 = load i8**, i8*** %5, align 8
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %11, align 8
  store i32 0, i32* %14, align 4
  br label %25

25:                                               ; preds = %41, %3
  %26 = load i8*, i8** %11, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %25
  %31 = load i8*, i8** %11, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 124
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* @MAX_LITERAL_POOL_SIZE, align 4
  %38 = icmp sle i32 %36, %37
  br label %39

39:                                               ; preds = %35, %30, %25
  %40 = phi i1 [ false, %30 ], [ false, %25 ], [ %38, %35 ]
  br i1 %40, label %41, label %51

41:                                               ; preds = %39
  %42 = load i8*, i8** %11, align 8
  %43 = load i8, i8* %42, align 1
  %44 = load i32, i32* %12, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %19, i64 %45
  store i8 %43, i8* %46, align 1
  %47 = load i8*, i8** %11, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %11, align 8
  %49 = load i32, i32* %12, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %12, align 4
  br label %25

51:                                               ; preds = %39
  %52 = load i32, i32* %12, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %19, i64 %53
  store i8 0, i8* %54, align 1
  store i8* %19, i8** %13, align 8
  %55 = load i8*, i8** %11, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 124
  br i1 %58, label %59, label %78

59:                                               ; preds = %51
  %60 = call i32 @my_get_expression(%struct.TYPE_7__* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 3, i32 0), i8** %13)
  %61 = load i64, i64* @FAIL, align 8
  %62 = trunc i64 %61 to i32
  %63 = icmp eq i32 %60, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load i64, i64* @FAIL, align 8
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %589

67:                                               ; preds = %59
  %68 = load i8*, i8** %13, align 8
  %69 = call i32 @end_of_line(i8* %68)
  %70 = load i8*, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load i64, i64* @FAIL, align 8
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %589

75:                                               ; preds = %67
  %76 = load i8*, i8** %11, align 8
  %77 = load i8**, i8*** %5, align 8
  store i8* %76, i8** %77, align 8
  br label %260

78:                                               ; preds = %51
  %79 = load i8**, i8*** %5, align 8
  %80 = call i32 @my_get_expression(%struct.TYPE_7__* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 3, i32 0), i8** %79)
  %81 = load i64, i64* @FAIL, align 8
  %82 = trunc i64 %81 to i32
  %83 = icmp eq i32 %80, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %78
  %85 = load i64, i64* @FAIL, align 8
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %589

87:                                               ; preds = %78
  store i8* %19, i8** %11, align 8
  br label %88

88:                                               ; preds = %109, %87
  %89 = load i8*, i8** %11, align 8
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %112

93:                                               ; preds = %88
  %94 = load i8*, i8** %11, align 8
  %95 = load i8, i8* %94, align 1
  %96 = call signext i8 @TOLOWER(i8 signext %95)
  %97 = load i8*, i8** %11, align 8
  store i8 %96, i8* %97, align 1
  %98 = load i8*, i8** %11, align 8
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp eq i32 %100, 33
  br i1 %101, label %107, label %102

102:                                              ; preds = %93
  %103 = load i8*, i8** %11, align 8
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp eq i32 %105, 32
  br i1 %106, label %107, label %108

107:                                              ; preds = %102, %93
  br label %112

108:                                              ; preds = %102
  br label %109

109:                                              ; preds = %108
  %110 = load i8*, i8** %11, align 8
  %111 = getelementptr inbounds i8, i8* %110, i32 1
  store i8* %111, i8** %11, align 8
  br label %88

112:                                              ; preds = %107, %88
  store i8* %19, i8** %11, align 8
  %113 = load i8*, i8** %11, align 8
  %114 = icmp ne i8* %113, null
  br i1 %114, label %115, label %187

115:                                              ; preds = %112
  %116 = load i8*, i8** %11, align 8
  %117 = call i32* @strstr(i8* %116, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %118 = icmp ne i32* %117, null
  br i1 %118, label %123, label %119

119:                                              ; preds = %115
  %120 = load i8*, i8** %11, align 8
  %121 = call i32* @strstr(i8* %120, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %122 = icmp ne i32* %121, null
  br i1 %122, label %123, label %187

123:                                              ; preds = %119, %115
  store i32 1, i32* %14, align 4
  %124 = load i32, i32* %7, align 4
  %125 = icmp ne i32 %124, 131
  br i1 %125, label %126, label %186

126:                                              ; preds = %123
  %127 = load i32, i32* %7, align 4
  %128 = icmp ne i32 %127, 129
  br i1 %128, label %129, label %186

129:                                              ; preds = %126
  %130 = load i32, i32* %7, align 4
  %131 = icmp ne i32 %130, 128
  br i1 %131, label %132, label %186

132:                                              ; preds = %129
  %133 = load i32, i32* %7, align 4
  %134 = load i32, i32* @_IMM16, align 4
  %135 = icmp ne i32 %133, %134
  br i1 %135, label %136, label %186

136:                                              ; preds = %132
  %137 = load i32, i32* %7, align 4
  %138 = load i32, i32* @_IMM15, align 4
  %139 = icmp ne i32 %137, %138
  br i1 %139, label %140, label %186

140:                                              ; preds = %136
  %141 = load i32, i32* %7, align 4
  %142 = load i32, i32* @_IMM14, align 4
  %143 = icmp ne i32 %141, %142
  br i1 %143, label %144, label %186

144:                                              ; preds = %140
  %145 = load i32, i32* %7, align 4
  %146 = load i32, i32* @_IMM4, align 4
  %147 = icmp ne i32 %145, %146
  br i1 %147, label %148, label %186

148:                                              ; preds = %144
  %149 = load i32, i32* %7, align 4
  %150 = load i32, i32* @_IMM5, align 4
  %151 = icmp ne i32 %149, %150
  br i1 %151, label %152, label %186

152:                                              ; preds = %148
  %153 = load i32, i32* %7, align 4
  %154 = load i32, i32* @_IMM8, align 4
  %155 = icmp ne i32 %153, %154
  br i1 %155, label %156, label %186

156:                                              ; preds = %152
  %157 = load i32, i32* %7, align 4
  %158 = load i32, i32* @_IMM5_RSHIFT_1, align 4
  %159 = icmp ne i32 %157, %158
  br i1 %159, label %160, label %186

160:                                              ; preds = %156
  %161 = load i32, i32* %7, align 4
  %162 = load i32, i32* @_IMM5_RSHIFT_2, align 4
  %163 = icmp ne i32 %161, %162
  br i1 %163, label %164, label %186

164:                                              ; preds = %160
  %165 = load i32, i32* %7, align 4
  %166 = load i32, i32* @_SIMM14, align 4
  %167 = icmp ne i32 %165, %166
  br i1 %167, label %168, label %186

168:                                              ; preds = %164
  %169 = load i32, i32* %7, align 4
  %170 = load i32, i32* @_SIMM14_NEG, align 4
  %171 = icmp ne i32 %169, %170
  br i1 %171, label %172, label %186

172:                                              ; preds = %168
  %173 = load i32, i32* %7, align 4
  %174 = load i32, i32* @_SIMM16_NEG, align 4
  %175 = icmp ne i32 %173, %174
  br i1 %175, label %176, label %186

176:                                              ; preds = %172
  %177 = load i32, i32* %7, align 4
  %178 = load i32, i32* @_IMM10_RSHIFT_2, align 4
  %179 = icmp ne i32 %177, %178
  br i1 %179, label %180, label %186

180:                                              ; preds = %176
  %181 = load i32, i32* %7, align 4
  %182 = icmp ne i32 %181, 133
  br i1 %182, label %183, label %186

183:                                              ; preds = %180
  %184 = load i32, i32* %7, align 4
  %185 = add i32 %184, 24
  store i32 %185, i32* %7, align 4
  br label %186

186:                                              ; preds = %183, %180, %176, %172, %168, %164, %160, %156, %152, %148, %144, %140, %136, %132, %129, %126, %123
  br label %187

187:                                              ; preds = %186, %119, %112
  %188 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 3, i32 0, i32 0), align 8
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %190, label %259

190:                                              ; preds = %187
  %191 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 1), align 8
  %192 = load i64, i64* @Insn_Type_SYN, align 8
  %193 = icmp ne i64 %191, %192
  br i1 %193, label %194, label %259

194:                                              ; preds = %190
  %195 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 1), align 8
  %196 = load i64, i64* @Rd_rvalueRs_SI15, align 8
  %197 = icmp ne i64 %195, %196
  br i1 %197, label %198, label %259

198:                                              ; preds = %194
  %199 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 1), align 8
  %200 = load i64, i64* @Rd_lvalueRs_SI15, align 8
  %201 = icmp ne i64 %199, %200
  br i1 %201, label %202, label %259

202:                                              ; preds = %198
  %203 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 1), align 8
  %204 = load i64, i64* @Insn_internal, align 8
  %205 = icmp ne i64 %203, %204
  br i1 %205, label %206, label %259

206:                                              ; preds = %202
  %207 = load i8*, i8** %11, align 8
  %208 = load i8, i8* %207, align 1
  %209 = sext i8 %208 to i32
  %210 = icmp sge i32 %209, 97
  br i1 %210, label %211, label %216

211:                                              ; preds = %206
  %212 = load i8*, i8** %11, align 8
  %213 = load i8, i8* %212, align 1
  %214 = sext i8 %213 to i32
  %215 = icmp sle i32 %214, 122
  br i1 %215, label %255, label %216

216:                                              ; preds = %211, %206
  %217 = load i8*, i8** %11, align 8
  %218 = load i8, i8* %217, align 1
  %219 = sext i8 %218 to i32
  %220 = icmp eq i32 %219, 48
  br i1 %220, label %221, label %233

221:                                              ; preds = %216
  %222 = load i8*, i8** %11, align 8
  %223 = getelementptr inbounds i8, i8* %222, i64 1
  %224 = load i8, i8* %223, align 1
  %225 = sext i8 %224 to i32
  %226 = icmp eq i32 %225, 120
  br i1 %226, label %227, label %233

227:                                              ; preds = %221
  %228 = load i8*, i8** %11, align 8
  %229 = getelementptr inbounds i8, i8* %228, i64 2
  %230 = load i8, i8* %229, align 1
  %231 = sext i8 %230 to i32
  %232 = icmp ne i32 %231, 48
  br i1 %232, label %255, label %233

233:                                              ; preds = %227, %221, %216
  %234 = load i8*, i8** %11, align 8
  %235 = load i8, i8* %234, align 1
  %236 = sext i8 %235 to i32
  %237 = icmp eq i32 %236, 43
  br i1 %237, label %238, label %244

238:                                              ; preds = %233
  %239 = load i8*, i8** %11, align 8
  %240 = getelementptr inbounds i8, i8* %239, i64 1
  %241 = load i8, i8* %240, align 1
  %242 = sext i8 %241 to i32
  %243 = icmp ne i32 %242, 48
  br i1 %243, label %255, label %244

244:                                              ; preds = %238, %233
  %245 = load i8*, i8** %11, align 8
  %246 = load i8, i8* %245, align 1
  %247 = sext i8 %246 to i32
  %248 = icmp eq i32 %247, 45
  br i1 %248, label %249, label %259

249:                                              ; preds = %244
  %250 = load i8*, i8** %11, align 8
  %251 = getelementptr inbounds i8, i8* %250, i64 1
  %252 = load i8, i8* %251, align 1
  %253 = sext i8 %252 to i32
  %254 = icmp ne i32 %253, 48
  br i1 %254, label %255, label %259

255:                                              ; preds = %249, %238, %227, %211
  %256 = load i8*, i8** @BAD_ARGS, align 8
  store i8* %256, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  %257 = load i64, i64* @FAIL, align 8
  %258 = trunc i64 %257 to i32
  store i32 %258, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %589

259:                                              ; preds = %249, %244, %202, %198, %194, %190, %187
  br label %260

260:                                              ; preds = %259, %75
  %261 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 3, i32 0, i32 2), align 8
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %311

263:                                              ; preds = %260
  %264 = load i32, i32* %7, align 4
  %265 = load i32, i32* @_SIMM16, align 4
  %266 = icmp eq i32 %264, %265
  br i1 %266, label %307, label %267

267:                                              ; preds = %263
  %268 = load i32, i32* %7, align 4
  %269 = load i32, i32* @_SIMM16_NEG, align 4
  %270 = icmp eq i32 %268, %269
  br i1 %270, label %307, label %271

271:                                              ; preds = %267
  %272 = load i32, i32* %7, align 4
  %273 = load i32, i32* @_IMM16_NEG, align 4
  %274 = icmp eq i32 %272, %273
  br i1 %274, label %307, label %275

275:                                              ; preds = %271
  %276 = load i32, i32* %7, align 4
  %277 = load i32, i32* @_SIMM14, align 4
  %278 = icmp eq i32 %276, %277
  br i1 %278, label %307, label %279

279:                                              ; preds = %275
  %280 = load i32, i32* %7, align 4
  %281 = load i32, i32* @_SIMM14_NEG, align 4
  %282 = icmp eq i32 %280, %281
  br i1 %282, label %307, label %283

283:                                              ; preds = %279
  %284 = load i32, i32* %7, align 4
  %285 = load i32, i32* @_IMM5, align 4
  %286 = icmp eq i32 %284, %285
  br i1 %286, label %307, label %287

287:                                              ; preds = %283
  %288 = load i32, i32* %7, align 4
  %289 = load i32, i32* @_IMM14, align 4
  %290 = icmp eq i32 %288, %289
  br i1 %290, label %307, label %291

291:                                              ; preds = %287
  %292 = load i32, i32* %7, align 4
  %293 = load i32, i32* @_IMM20, align 4
  %294 = icmp eq i32 %292, %293
  br i1 %294, label %307, label %295

295:                                              ; preds = %291
  %296 = load i32, i32* %7, align 4
  %297 = load i32, i32* @_IMM16, align 4
  %298 = icmp eq i32 %296, %297
  br i1 %298, label %307, label %299

299:                                              ; preds = %295
  %300 = load i32, i32* %7, align 4
  %301 = load i32, i32* @_IMM15, align 4
  %302 = icmp eq i32 %300, %301
  br i1 %302, label %307, label %303

303:                                              ; preds = %299
  %304 = load i32, i32* %7, align 4
  %305 = load i32, i32* @_IMM4, align 4
  %306 = icmp eq i32 %304, %305
  br i1 %306, label %307, label %311

307:                                              ; preds = %303, %299, %295, %291, %287, %283, %279, %275, %271, %267, %263
  %308 = load i8*, i8** @BAD_ARGS, align 8
  store i8* %308, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  %309 = load i64, i64* @FAIL, align 8
  %310 = trunc i64 %309 to i32
  store i32 %310, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %589

311:                                              ; preds = %303, %260
  %312 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 3, i32 0, i32 2), align 8
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %314, label %330

314:                                              ; preds = %311
  %315 = load i32, i32* %7, align 4
  switch i32 %315, label %327 [
    i32 131, label %316
    i32 129, label %319
    i32 128, label %321
    i32 133, label %323
    i32 130, label %325
    i32 132, label %325
  ]

316:                                              ; preds = %314
  %317 = load i64, i64* @FAIL, align 8
  %318 = trunc i64 %317 to i32
  store i32 %318, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %589

319:                                              ; preds = %314
  %320 = load i32, i32* @BFD_RELOC_HI16_S, align 4
  store i32 %320, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 3, i32 2), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 3, i32 1), align 8
  br label %329

321:                                              ; preds = %314
  %322 = load i32, i32* @BFD_RELOC_LO16, align 4
  store i32 %322, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 3, i32 2), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 3, i32 1), align 8
  br label %329

323:                                              ; preds = %314
  %324 = load i32, i32* @BFD_RELOC_SCORE_GPREL15, align 4
  store i32 %324, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 3, i32 2), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 3, i32 1), align 8
  br label %329

325:                                              ; preds = %314, %314
  %326 = load i32, i32* @BFD_RELOC_SCORE_GOT_LO16, align 4
  store i32 %326, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 3, i32 2), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 3, i32 1), align 8
  br label %329

327:                                              ; preds = %314
  %328 = load i32, i32* @BFD_RELOC_32, align 4
  store i32 %328, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 3, i32 2), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 3, i32 1), align 8
  br label %329

329:                                              ; preds = %327, %325, %323, %321, %319
  br label %478

330:                                              ; preds = %311
  %331 = load i32, i32* %7, align 4
  %332 = load i32, i32* @_IMM16_pic, align 4
  %333 = icmp eq i32 %331, %332
  br i1 %333, label %334, label %336

334:                                              ; preds = %330
  %335 = load i32, i32* @BFD_RELOC_SCORE_DUMMY_HI16, align 4
  store i32 %335, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 3, i32 2), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 3, i32 1), align 8
  br label %336

336:                                              ; preds = %334, %330
  %337 = load i32, i32* %7, align 4
  %338 = icmp eq i32 %337, 131
  br i1 %338, label %339, label %367

339:                                              ; preds = %336
  %340 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 3, i32 0, i32 1), align 4
  %341 = icmp eq i32 %340, 1
  br i1 %341, label %342, label %367

342:                                              ; preds = %339
  %343 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 3, i32 0, i32 0), align 8
  %344 = load i32, i32* @_SIMM16_LA_POS, align 4
  %345 = load i32, i32* %14, align 4
  %346 = call i32 @validate_immediate(i32 %343, i32 %344, i32 %345)
  store i32 %346, i32* %8, align 4
  %347 = load i32, i32* %8, align 4
  %348 = load i64, i64* @FAIL, align 8
  %349 = trunc i64 %348 to i32
  %350 = icmp eq i32 %347, %349
  br i1 %350, label %351, label %366

351:                                              ; preds = %342
  %352 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 3, i32 0, i32 0), align 8
  %353 = and i32 %352, 65535
  %354 = icmp eq i32 %353, 0
  br i1 %354, label %355, label %365

355:                                              ; preds = %351
  %356 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 2), align 8
  %357 = or i32 %356, 134217728
  store i32 %357, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 2), align 8
  %358 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 3, i32 0, i32 0), align 8
  %359 = ashr i32 %358, 16
  %360 = shl i32 %359, 1
  %361 = and i32 %360, 131070
  %362 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 2), align 8
  %363 = or i32 %362, %361
  store i32 %363, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 2), align 8
  %364 = load i32, i32* @SUCCESS, align 4
  store i32 %364, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %589

365:                                              ; preds = %351
  br label %366

366:                                              ; preds = %365, %342
  br label %372

367:                                              ; preds = %339, %336
  %368 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 3, i32 0, i32 0), align 8
  %369 = load i32, i32* %7, align 4
  %370 = load i32, i32* %14, align 4
  %371 = call i32 @validate_immediate(i32 %368, i32 %369, i32 %370)
  store i32 %371, i32* %8, align 4
  br label %372

372:                                              ; preds = %367, %366
  %373 = load i32, i32* %8, align 4
  %374 = load i64, i64* @FAIL, align 8
  %375 = trunc i64 %374 to i32
  %376 = icmp eq i32 %373, %375
  br i1 %376, label %377, label %447

377:                                              ; preds = %372
  %378 = load i32, i32* %7, align 4
  %379 = load i32, i32* @_SIMM14_NEG, align 4
  %380 = icmp ne i32 %378, %379
  br i1 %380, label %381, label %415

381:                                              ; preds = %377
  %382 = load i32, i32* %7, align 4
  %383 = load i32, i32* @_SIMM16_NEG, align 4
  %384 = icmp ne i32 %382, %383
  br i1 %384, label %385, label %415

385:                                              ; preds = %381
  %386 = load i32, i32* %7, align 4
  %387 = load i32, i32* @_IMM16_NEG, align 4
  %388 = icmp ne i32 %386, %387
  br i1 %388, label %389, label %415

389:                                              ; preds = %385
  %390 = load i8*, i8** @err_msg, align 8
  %391 = call i8* @_(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0))
  %392 = load %struct.TYPE_6__*, %struct.TYPE_6__** @score_df_range, align 8
  %393 = load i32, i32* %7, align 4
  %394 = zext i32 %393 to i64
  %395 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %392, i64 %394
  %396 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %395, i32 0, i32 0
  %397 = load i32, i32* %396, align 8
  %398 = load %struct.TYPE_6__*, %struct.TYPE_6__** @score_df_range, align 8
  %399 = load i32, i32* %7, align 4
  %400 = zext i32 %399 to i64
  %401 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %398, i64 %400
  %402 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %401, i32 0, i32 1
  %403 = load i32*, i32** %402, align 8
  %404 = getelementptr inbounds i32, i32* %403, i64 0
  %405 = load i32, i32* %404, align 4
  %406 = load %struct.TYPE_6__*, %struct.TYPE_6__** @score_df_range, align 8
  %407 = load i32, i32* %7, align 4
  %408 = zext i32 %407 to i64
  %409 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %406, i64 %408
  %410 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %409, i32 0, i32 1
  %411 = load i32*, i32** %410, align 8
  %412 = getelementptr inbounds i32, i32* %411, i64 1
  %413 = load i32, i32* %412, align 4
  %414 = call i32 @sprintf(i8* %390, i8* %391, i32 %397, i32 %405, i32 %413)
  br label %443

415:                                              ; preds = %385, %381, %377
  %416 = load i8*, i8** @err_msg, align 8
  %417 = call i8* @_(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0))
  %418 = load %struct.TYPE_6__*, %struct.TYPE_6__** @score_df_range, align 8
  %419 = load i32, i32* %7, align 4
  %420 = zext i32 %419 to i64
  %421 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %418, i64 %420
  %422 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %421, i32 0, i32 0
  %423 = load i32, i32* %422, align 8
  %424 = load %struct.TYPE_6__*, %struct.TYPE_6__** @score_df_range, align 8
  %425 = load i32, i32* %7, align 4
  %426 = zext i32 %425 to i64
  %427 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %424, i64 %426
  %428 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %427, i32 0, i32 1
  %429 = load i32*, i32** %428, align 8
  %430 = getelementptr inbounds i32, i32* %429, i64 1
  %431 = load i32, i32* %430, align 4
  %432 = sub nsw i32 0, %431
  %433 = load %struct.TYPE_6__*, %struct.TYPE_6__** @score_df_range, align 8
  %434 = load i32, i32* %7, align 4
  %435 = zext i32 %434 to i64
  %436 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %433, i64 %435
  %437 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %436, i32 0, i32 1
  %438 = load i32*, i32** %437, align 8
  %439 = getelementptr inbounds i32, i32* %438, i64 0
  %440 = load i32, i32* %439, align 4
  %441 = sub nsw i32 0, %440
  %442 = call i32 @sprintf(i8* %416, i8* %417, i32 %423, i32 %432, i32 %441)
  br label %443

443:                                              ; preds = %415, %389
  %444 = load i8*, i8** @err_msg, align 8
  store i8* %444, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  %445 = load i64, i64* @FAIL, align 8
  %446 = trunc i64 %445 to i32
  store i32 %446, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %589

447:                                              ; preds = %372
  %448 = load %struct.TYPE_6__*, %struct.TYPE_6__** @score_df_range, align 8
  %449 = load i32, i32* %7, align 4
  %450 = zext i32 %449 to i64
  %451 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %448, i64 %450
  %452 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %451, i32 0, i32 1
  %453 = load i32*, i32** %452, align 8
  %454 = getelementptr inbounds i32, i32* %453, i64 0
  %455 = load i32, i32* %454, align 4
  %456 = icmp ne i32 %455, 0
  br i1 %456, label %461, label %457

457:                                              ; preds = %447
  %458 = load i32, i32* %7, align 4
  %459 = load i32, i32* @_IMM5_RANGE_8_31, align 4
  %460 = icmp eq i32 %458, %459
  br i1 %460, label %461, label %472

461:                                              ; preds = %457, %447
  %462 = load %struct.TYPE_6__*, %struct.TYPE_6__** @score_df_range, align 8
  %463 = load i32, i32* %7, align 4
  %464 = zext i32 %463 to i64
  %465 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %462, i64 %464
  %466 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %465, i32 0, i32 0
  %467 = load i32, i32* %466, align 8
  %468 = shl i32 1, %467
  %469 = sub nsw i32 %468, 1
  %470 = load i32, i32* %8, align 4
  %471 = and i32 %470, %469
  store i32 %471, i32* %8, align 4
  br label %472

472:                                              ; preds = %461, %457
  %473 = load i32, i32* %8, align 4
  %474 = load i32, i32* %6, align 4
  %475 = shl i32 %473, %474
  %476 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 2), align 8
  %477 = or i32 %476, %475
  store i32 %477, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 2), align 8
  br label %478

478:                                              ; preds = %472, %329
  %479 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 2), align 8
  %480 = and i32 %479, -268435456
  %481 = icmp eq i32 %480, 805306368
  br i1 %481, label %482, label %587

482:                                              ; preds = %478
  %483 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 2), align 8
  %484 = ashr i32 %483, 20
  %485 = and i32 %484, 31
  %486 = icmp ne i32 %485, 0
  br i1 %486, label %487, label %586

487:                                              ; preds = %482
  %488 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 2), align 8
  %489 = ashr i32 %488, 20
  %490 = and i32 %489, 31
  %491 = icmp ne i32 %490, 1
  br i1 %491, label %492, label %586

492:                                              ; preds = %487
  %493 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 2), align 8
  %494 = ashr i32 %493, 20
  %495 = and i32 %494, 31
  %496 = icmp ne i32 %495, 2
  br i1 %496, label %497, label %586

497:                                              ; preds = %492
  %498 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 2), align 8
  %499 = ashr i32 %498, 20
  %500 = and i32 %499, 31
  %501 = icmp ne i32 %500, 3
  br i1 %501, label %502, label %586

502:                                              ; preds = %497
  %503 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 2), align 8
  %504 = ashr i32 %503, 20
  %505 = and i32 %504, 31
  %506 = icmp ne i32 %505, 4
  br i1 %506, label %507, label %586

507:                                              ; preds = %502
  %508 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 2), align 8
  %509 = ashr i32 %508, 20
  %510 = and i32 %509, 31
  %511 = icmp ne i32 %510, 8
  br i1 %511, label %512, label %586

512:                                              ; preds = %507
  %513 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 2), align 8
  %514 = ashr i32 %513, 20
  %515 = and i32 %514, 31
  %516 = icmp ne i32 %515, 9
  br i1 %516, label %517, label %586

517:                                              ; preds = %512
  %518 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 2), align 8
  %519 = ashr i32 %518, 20
  %520 = and i32 %519, 31
  %521 = icmp ne i32 %520, 10
  br i1 %521, label %522, label %586

522:                                              ; preds = %517
  %523 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 2), align 8
  %524 = ashr i32 %523, 20
  %525 = and i32 %524, 31
  %526 = icmp ne i32 %525, 11
  br i1 %526, label %527, label %586

527:                                              ; preds = %522
  %528 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 2), align 8
  %529 = ashr i32 %528, 20
  %530 = and i32 %529, 31
  %531 = icmp ne i32 %530, 12
  br i1 %531, label %532, label %586

532:                                              ; preds = %527
  %533 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 2), align 8
  %534 = ashr i32 %533, 20
  %535 = and i32 %534, 31
  %536 = icmp ne i32 %535, 13
  br i1 %536, label %537, label %586

537:                                              ; preds = %532
  %538 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 2), align 8
  %539 = ashr i32 %538, 20
  %540 = and i32 %539, 31
  %541 = icmp ne i32 %540, 14
  br i1 %541, label %542, label %586

542:                                              ; preds = %537
  %543 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 2), align 8
  %544 = ashr i32 %543, 20
  %545 = and i32 %544, 31
  %546 = icmp ne i32 %545, 16
  br i1 %546, label %547, label %586

547:                                              ; preds = %542
  %548 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 2), align 8
  %549 = ashr i32 %548, 20
  %550 = and i32 %549, 31
  %551 = icmp ne i32 %550, 17
  br i1 %551, label %552, label %586

552:                                              ; preds = %547
  %553 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 2), align 8
  %554 = ashr i32 %553, 20
  %555 = and i32 %554, 31
  %556 = icmp ne i32 %555, 24
  br i1 %556, label %557, label %586

557:                                              ; preds = %552
  %558 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 2), align 8
  %559 = ashr i32 %558, 20
  %560 = and i32 %559, 31
  %561 = icmp ne i32 %560, 26
  br i1 %561, label %562, label %586

562:                                              ; preds = %557
  %563 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 2), align 8
  %564 = ashr i32 %563, 20
  %565 = and i32 %564, 31
  %566 = icmp ne i32 %565, 27
  br i1 %566, label %567, label %586

567:                                              ; preds = %562
  %568 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 2), align 8
  %569 = ashr i32 %568, 20
  %570 = and i32 %569, 31
  %571 = icmp ne i32 %570, 29
  br i1 %571, label %572, label %586

572:                                              ; preds = %567
  %573 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 2), align 8
  %574 = ashr i32 %573, 20
  %575 = and i32 %574, 31
  %576 = icmp ne i32 %575, 30
  br i1 %576, label %577, label %586

577:                                              ; preds = %572
  %578 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 2), align 8
  %579 = ashr i32 %578, 20
  %580 = and i32 %579, 31
  %581 = icmp ne i32 %580, 31
  br i1 %581, label %582, label %586

582:                                              ; preds = %577
  %583 = call i8* @_(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  store i8* %583, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  %584 = load i64, i64* @FAIL, align 8
  %585 = trunc i64 %584 to i32
  store i32 %585, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %589

586:                                              ; preds = %577, %572, %567, %562, %557, %552, %547, %542, %537, %532, %527, %522, %517, %512, %507, %502, %497, %492, %487, %482
  br label %587

587:                                              ; preds = %586, %478
  %588 = load i32, i32* @SUCCESS, align 4
  store i32 %588, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %589

589:                                              ; preds = %587, %582, %443, %355, %316, %307, %255, %84, %72, %64
  %590 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %590)
  %591 = load i32, i32* %4, align 4
  ret i32 %591
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @skip_whitespace(i8*) #2

declare dso_local i32 @my_get_expression(%struct.TYPE_7__*, i8**) #2

declare dso_local i32 @end_of_line(i8*) #2

declare dso_local signext i8 @TOLOWER(i8 signext) #2

declare dso_local i32* @strstr(i8*, i8*) #2

declare dso_local i32 @validate_immediate(i32, i32, i32) #2

declare dso_local i32 @sprintf(i8*, i8*, i32, i32, i32) #2

declare dso_local i8* @_(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
