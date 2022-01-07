; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-i386.c_process_suffix.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-i386.c_process_suffix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32*, i32, %struct.TYPE_6__, i32, %struct.TYPE_5__*, i64 }
%struct.TYPE_6__ = type { i32, i32, i32*, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@i = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@Size16 = common dso_local global i32 0, align 4
@Size32 = common dso_local global i32 0, align 4
@Size64 = common dso_local global i32 0, align 4
@WORD_MNEM_SUFFIX = common dso_local global i64 0, align 8
@QWORD_MNEM_SUFFIX = common dso_local global i64 0, align 8
@LONG_MNEM_SUFFIX = common dso_local global i64 0, align 8
@Reg = common dso_local global i32 0, align 4
@Reg16 = common dso_local global i32 0, align 4
@Reg8 = common dso_local global i32 0, align 4
@BYTE_MNEM_SUFFIX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"ambiguous memory operand size for `%s`\00", align 1
@InOutPortReg = common dso_local global i32 0, align 4
@Reg64 = common dso_local global i32 0, align 4
@intel_syntax = common dso_local global i64 0, align 8
@IgnoreSize = common dso_local global i32 0, align 4
@DefaultSize = common dso_local global i32 0, align 4
@No_sSuf = common dso_local global i32 0, align 4
@stackop_size = common dso_local global i64 0, align 8
@JumpAbsolute = common dso_local global i32 0, align 4
@JumpByte = common dso_local global i32 0, align 4
@JumpInterSegment = common dso_local global i32 0, align 4
@flag_code = common dso_local global i32 0, align 4
@No_qSuf = common dso_local global i32 0, align 4
@No_lSuf = common dso_local global i32 0, align 4
@No_wSuf = common dso_local global i32 0, align 4
@W = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [86 x i8] c"no instruction mnemonic suffix given and no register operands; can't size instruction\00", align 1
@No_bSuf = common dso_local global i32 0, align 4
@No_xSuf = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"ambiguous operand size for `%s'\00", align 1
@ShortForm = common dso_local global i32 0, align 4
@Reg32 = common dso_local global i32 0, align 4
@ADDR_PREFIX_OPCODE = common dso_local global i32 0, align 4
@LONG_DOUBLE_MNEM_SUFFIX = common dso_local global i64 0, align 8
@FloatMF = common dso_local global i32 0, align 4
@DATA_PREFIX_OPCODE = common dso_local global i32 0, align 4
@NoRex64 = common dso_local global i32 0, align 4
@Acc = common dso_local global i32 0, align 4
@REX_W = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @process_suffix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_suffix() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 3, i32 0), align 8
  %6 = load i32, i32* @Size16, align 4
  %7 = load i32, i32* @Size32, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @Size64, align 4
  %10 = or i32 %8, %9
  %11 = and i32 %5, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %31

13:                                               ; preds = %0
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 3, i32 0), align 8
  %15 = load i32, i32* @Size16, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load i64, i64* @WORD_MNEM_SUFFIX, align 8
  store i64 %19, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 0), align 8
  br label %30

20:                                               ; preds = %13
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 3, i32 0), align 8
  %22 = load i32, i32* @Size64, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i64, i64* @QWORD_MNEM_SUFFIX, align 8
  store i64 %26, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 0), align 8
  br label %29

27:                                               ; preds = %20
  %28 = load i64, i64* @LONG_MNEM_SUFFIX, align 8
  store i64 %28, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 0), align 8
  br label %29

29:                                               ; preds = %27, %25
  br label %30

30:                                               ; preds = %29, %18
  br label %280

31:                                               ; preds = %0
  %32 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 6), align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %209

34:                                               ; preds = %31
  %35 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 0), align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %156, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 3, i32 1), align 4
  %39 = icmp eq i32 %38, -233883407
  br i1 %39, label %40, label %61

40:                                               ; preds = %37
  %41 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 1), align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @Reg, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %40
  %48 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 1), align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @Reg16, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = load i64, i64* @WORD_MNEM_SUFFIX, align 8
  br label %58

56:                                               ; preds = %47
  %57 = load i64, i64* @LONG_MNEM_SUFFIX, align 8
  br label %58

58:                                               ; preds = %56, %54
  %59 = phi i64 [ %55, %54 ], [ %57, %56 ]
  store i64 %59, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 0), align 8
  br label %60

60:                                               ; preds = %58, %40
  br label %75

61:                                               ; preds = %37
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 3, i32 1), align 4
  %63 = icmp eq i32 %62, -233883408
  br i1 %63, label %64, label %74

64:                                               ; preds = %61
  %65 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 1), align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @Reg8, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %64
  %72 = load i64, i64* @BYTE_MNEM_SUFFIX, align 8
  store i64 %72, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 0), align 8
  br label %73

73:                                               ; preds = %71, %64
  br label %74

74:                                               ; preds = %73, %61
  br label %75

75:                                               ; preds = %74, %60
  %76 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 0), align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %155, label %78

78:                                               ; preds = %75
  %79 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 3, i32 1), align 4
  %80 = icmp eq i32 %79, -233883407
  br i1 %80, label %84, label %81

81:                                               ; preds = %78
  %82 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 3, i32 1), align 4
  %83 = icmp eq i32 %82, -233883408
  br i1 %83, label %84, label %88

84:                                               ; preds = %81, %78
  %85 = call i32 @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %86 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 3, i32 4), align 4
  %87 = call i32 (i32, ...) @as_bad(i32 %85, i32 %86)
  store i32 0, i32* %1, align 4
  br label %488

88:                                               ; preds = %81
  %89 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 2), align 8
  store i32 %89, i32* %2, align 4
  br label %90

90:                                               ; preds = %153, %88
  %91 = load i32, i32* %2, align 4
  %92 = add nsw i32 %91, -1
  store i32 %92, i32* %2, align 4
  %93 = icmp sge i32 %92, 0
  br i1 %93, label %94, label %154

94:                                               ; preds = %90
  %95 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 1), align 8
  %96 = load i32, i32* %2, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @Reg, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %153

103:                                              ; preds = %94
  %104 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 3, i32 2), align 8
  %105 = load i32, i32* %2, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @InOutPortReg, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %153, label %112

112:                                              ; preds = %103
  %113 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 1), align 8
  %114 = load i32, i32* %2, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @Reg8, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %112
  %122 = load i64, i64* @BYTE_MNEM_SUFFIX, align 8
  br label %151

123:                                              ; preds = %112
  %124 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 1), align 8
  %125 = load i32, i32* %2, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @Reg16, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %123
  %133 = load i64, i64* @WORD_MNEM_SUFFIX, align 8
  br label %149

134:                                              ; preds = %123
  %135 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 1), align 8
  %136 = load i32, i32* %2, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @Reg64, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %134
  %144 = load i64, i64* @QWORD_MNEM_SUFFIX, align 8
  br label %147

145:                                              ; preds = %134
  %146 = load i64, i64* @LONG_MNEM_SUFFIX, align 8
  br label %147

147:                                              ; preds = %145, %143
  %148 = phi i64 [ %144, %143 ], [ %146, %145 ]
  br label %149

149:                                              ; preds = %147, %132
  %150 = phi i64 [ %133, %132 ], [ %148, %147 ]
  br label %151

151:                                              ; preds = %149, %121
  %152 = phi i64 [ %122, %121 ], [ %150, %149 ]
  store i64 %152, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 0), align 8
  br label %154

153:                                              ; preds = %103, %94
  br label %90

154:                                              ; preds = %151, %90
  br label %155

155:                                              ; preds = %154, %75
  br label %208

156:                                              ; preds = %34
  %157 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 0), align 8
  %158 = load i64, i64* @BYTE_MNEM_SUFFIX, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %165

160:                                              ; preds = %156
  %161 = call i32 (...) @check_byte_reg()
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %164, label %163

163:                                              ; preds = %160
  store i32 0, i32* %1, align 4
  br label %488

164:                                              ; preds = %160
  br label %207

165:                                              ; preds = %156
  %166 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 0), align 8
  %167 = load i64, i64* @LONG_MNEM_SUFFIX, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %174

169:                                              ; preds = %165
  %170 = call i32 (...) @check_long_reg()
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %173, label %172

172:                                              ; preds = %169
  store i32 0, i32* %1, align 4
  br label %488

173:                                              ; preds = %169
  br label %206

174:                                              ; preds = %165
  %175 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 0), align 8
  %176 = load i64, i64* @QWORD_MNEM_SUFFIX, align 8
  %177 = icmp eq i64 %175, %176
  br i1 %177, label %178, label %183

178:                                              ; preds = %174
  %179 = call i32 (...) @check_qword_reg()
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %182, label %181

181:                                              ; preds = %178
  store i32 0, i32* %1, align 4
  br label %488

182:                                              ; preds = %178
  br label %205

183:                                              ; preds = %174
  %184 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 0), align 8
  %185 = load i64, i64* @WORD_MNEM_SUFFIX, align 8
  %186 = icmp eq i64 %184, %185
  br i1 %186, label %187, label %192

187:                                              ; preds = %183
  %188 = call i32 (...) @check_word_reg()
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %191, label %190

190:                                              ; preds = %187
  store i32 0, i32* %1, align 4
  br label %488

191:                                              ; preds = %187
  br label %204

192:                                              ; preds = %183
  %193 = load i64, i64* @intel_syntax, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %201

195:                                              ; preds = %192
  %196 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 3, i32 0), align 8
  %197 = load i32, i32* @IgnoreSize, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %195
  br label %203

201:                                              ; preds = %195, %192
  %202 = call i32 (...) @abort() #3
  unreachable

203:                                              ; preds = %200
  br label %204

204:                                              ; preds = %203, %191
  br label %205

205:                                              ; preds = %204, %182
  br label %206

206:                                              ; preds = %205, %173
  br label %207

207:                                              ; preds = %206, %164
  br label %208

208:                                              ; preds = %207, %155
  br label %279

209:                                              ; preds = %31
  %210 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 3, i32 0), align 8
  %211 = load i32, i32* @DefaultSize, align 4
  %212 = and i32 %210, %211
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %224

214:                                              ; preds = %209
  %215 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 0), align 8
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %224, label %217

217:                                              ; preds = %214
  %218 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 3, i32 0), align 8
  %219 = load i32, i32* @No_sSuf, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %224

222:                                              ; preds = %217
  %223 = load i64, i64* @stackop_size, align 8
  store i64 %223, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 0), align 8
  br label %278

224:                                              ; preds = %217, %214, %209
  %225 = load i64, i64* @intel_syntax, align 8
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %277

227:                                              ; preds = %224
  %228 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 0), align 8
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %277, label %230

230:                                              ; preds = %227
  %231 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 3, i32 2), align 8
  %232 = getelementptr inbounds i32, i32* %231, i64 0
  %233 = load i32, i32* %232, align 4
  %234 = load i32, i32* @JumpAbsolute, align 4
  %235 = and i32 %233, %234
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %250, label %237

237:                                              ; preds = %230
  %238 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 3, i32 0), align 8
  %239 = load i32, i32* @JumpByte, align 4
  %240 = load i32, i32* @JumpInterSegment, align 4
  %241 = or i32 %239, %240
  %242 = and i32 %238, %241
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %250, label %244

244:                                              ; preds = %237
  %245 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 3, i32 1), align 4
  %246 = icmp eq i32 %245, 3841
  br i1 %246, label %247, label %277

247:                                              ; preds = %244
  %248 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 3, i32 3), align 8
  %249 = icmp sle i32 %248, 3
  br i1 %249, label %250, label %277

250:                                              ; preds = %247, %237, %230
  %251 = load i32, i32* @flag_code, align 4
  switch i32 %251, label %276 [
    i32 128, label %252
    i32 129, label %260
    i32 130, label %268
  ]

252:                                              ; preds = %250
  %253 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 3, i32 0), align 8
  %254 = load i32, i32* @No_qSuf, align 4
  %255 = and i32 %253, %254
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %259, label %257

257:                                              ; preds = %252
  %258 = load i64, i64* @QWORD_MNEM_SUFFIX, align 8
  store i64 %258, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 0), align 8
  br label %276

259:                                              ; preds = %252
  br label %260

260:                                              ; preds = %250, %259
  %261 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 3, i32 0), align 8
  %262 = load i32, i32* @No_lSuf, align 4
  %263 = and i32 %261, %262
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %267, label %265

265:                                              ; preds = %260
  %266 = load i64, i64* @LONG_MNEM_SUFFIX, align 8
  store i64 %266, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 0), align 8
  br label %267

267:                                              ; preds = %265, %260
  br label %276

268:                                              ; preds = %250
  %269 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 3, i32 0), align 8
  %270 = load i32, i32* @No_wSuf, align 4
  %271 = and i32 %269, %270
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %275, label %273

273:                                              ; preds = %268
  %274 = load i64, i64* @WORD_MNEM_SUFFIX, align 8
  store i64 %274, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 0), align 8
  br label %275

275:                                              ; preds = %273, %268
  br label %276

276:                                              ; preds = %250, %275, %267, %257
  br label %277

277:                                              ; preds = %276, %247, %244, %227, %224
  br label %278

278:                                              ; preds = %277, %222
  br label %279

279:                                              ; preds = %278, %208
  br label %280

280:                                              ; preds = %279, %30
  %281 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 0), align 8
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %333, label %283

283:                                              ; preds = %280
  %284 = load i64, i64* @intel_syntax, align 8
  %285 = icmp ne i64 %284, 0
  br i1 %285, label %295, label %286

286:                                              ; preds = %283
  %287 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 3, i32 0), align 8
  %288 = load i32, i32* @W, align 4
  %289 = and i32 %287, %288
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %294

291:                                              ; preds = %286
  %292 = call i32 @_(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0))
  %293 = call i32 (i32, ...) @as_bad(i32 %292)
  store i32 0, i32* %1, align 4
  br label %488

294:                                              ; preds = %286
  br label %332

295:                                              ; preds = %283
  %296 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 3, i32 0), align 8
  %297 = xor i32 %296, -1
  %298 = load i32, i32* @No_bSuf, align 4
  %299 = load i32, i32* @No_wSuf, align 4
  %300 = or i32 %298, %299
  %301 = load i32, i32* @No_lSuf, align 4
  %302 = or i32 %300, %301
  %303 = load i32, i32* @No_sSuf, align 4
  %304 = or i32 %302, %303
  %305 = load i32, i32* @No_xSuf, align 4
  %306 = or i32 %304, %305
  %307 = load i32, i32* @No_qSuf, align 4
  %308 = or i32 %306, %307
  %309 = and i32 %297, %308
  store i32 %309, i32* %3, align 4
  %310 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 3, i32 0), align 8
  %311 = load i32, i32* @W, align 4
  %312 = and i32 %310, %311
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %327, label %314

314:                                              ; preds = %295
  %315 = load i32, i32* %3, align 4
  %316 = load i32, i32* %3, align 4
  %317 = sub i32 %316, 1
  %318 = and i32 %315, %317
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %331

320:                                              ; preds = %314
  %321 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 3, i32 0), align 8
  %322 = load i32, i32* @DefaultSize, align 4
  %323 = load i32, i32* @IgnoreSize, align 4
  %324 = or i32 %322, %323
  %325 = and i32 %321, %324
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %331, label %327

327:                                              ; preds = %320, %295
  %328 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %329 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 3, i32 4), align 4
  %330 = call i32 (i32, ...) @as_bad(i32 %328, i32 %329)
  store i32 0, i32* %1, align 4
  br label %488

331:                                              ; preds = %320, %314
  br label %332

332:                                              ; preds = %331, %294
  br label %333

333:                                              ; preds = %332, %280
  %334 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 0), align 8
  %335 = icmp ne i64 %334, 0
  br i1 %335, label %336, label %487

336:                                              ; preds = %333
  %337 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 0), align 8
  %338 = load i64, i64* @BYTE_MNEM_SUFFIX, align 8
  %339 = icmp ne i64 %337, %338
  br i1 %339, label %340, label %487

340:                                              ; preds = %336
  %341 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 3, i32 0), align 8
  %342 = load i32, i32* @W, align 4
  %343 = and i32 %341, %342
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %357

345:                                              ; preds = %340
  %346 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 3, i32 0), align 8
  %347 = load i32, i32* @ShortForm, align 4
  %348 = and i32 %346, %347
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %353

350:                                              ; preds = %345
  %351 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 3, i32 1), align 4
  %352 = or i32 %351, 8
  store i32 %352, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 3, i32 1), align 4
  br label %356

353:                                              ; preds = %345
  %354 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 3, i32 1), align 4
  %355 = or i32 %354, 1
  store i32 %355, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 3, i32 1), align 4
  br label %356

356:                                              ; preds = %353, %350
  br label %357

357:                                              ; preds = %356, %340
  %358 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 3, i32 1), align 4
  %359 = icmp eq i32 %358, 3841
  br i1 %359, label %360, label %387

360:                                              ; preds = %357
  %361 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 3, i32 3), align 8
  %362 = icmp eq i32 %361, 200
  br i1 %362, label %363, label %387

363:                                              ; preds = %360
  %364 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 5), align 8
  %365 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %364, i32 0, i32 0
  %366 = load %struct.TYPE_7__*, %struct.TYPE_7__** %365, align 8
  %367 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %366, i64 0
  %368 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %367, i32 0, i32 0
  %369 = load i32, i32* %368, align 4
  %370 = load i32, i32* @flag_code, align 4
  %371 = icmp eq i32 %370, 129
  br i1 %371, label %372, label %374

372:                                              ; preds = %363
  %373 = load i32, i32* @Reg16, align 4
  br label %376

374:                                              ; preds = %363
  %375 = load i32, i32* @Reg32, align 4
  br label %376

376:                                              ; preds = %374, %372
  %377 = phi i32 [ %373, %372 ], [ %375, %374 ]
  %378 = and i32 %369, %377
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %380, label %386

380:                                              ; preds = %376
  %381 = load i32, i32* @ADDR_PREFIX_OPCODE, align 4
  %382 = call i32 @add_prefix(i32 %381)
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %385, label %384

384:                                              ; preds = %380
  store i32 0, i32* %1, align 4
  br label %488

385:                                              ; preds = %380
  br label %386

386:                                              ; preds = %385, %376
  br label %434

387:                                              ; preds = %360, %357
  %388 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 0), align 8
  %389 = load i64, i64* @QWORD_MNEM_SUFFIX, align 8
  %390 = icmp ne i64 %388, %389
  br i1 %390, label %391, label %433

391:                                              ; preds = %387
  %392 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 0), align 8
  %393 = load i64, i64* @LONG_DOUBLE_MNEM_SUFFIX, align 8
  %394 = icmp ne i64 %392, %393
  br i1 %394, label %395, label %433

395:                                              ; preds = %391
  %396 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 3, i32 0), align 8
  %397 = load i32, i32* @IgnoreSize, align 4
  %398 = load i32, i32* @FloatMF, align 4
  %399 = or i32 %397, %398
  %400 = and i32 %396, %399
  %401 = icmp ne i32 %400, 0
  br i1 %401, label %433, label %402

402:                                              ; preds = %395
  %403 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 0), align 8
  %404 = load i64, i64* @LONG_MNEM_SUFFIX, align 8
  %405 = icmp eq i64 %403, %404
  %406 = zext i1 %405 to i32
  %407 = load i32, i32* @flag_code, align 4
  %408 = icmp eq i32 %407, 130
  %409 = zext i1 %408 to i32
  %410 = icmp eq i32 %406, %409
  br i1 %410, label %419, label %411

411:                                              ; preds = %402
  %412 = load i32, i32* @flag_code, align 4
  %413 = icmp eq i32 %412, 128
  br i1 %413, label %414, label %433

414:                                              ; preds = %411
  %415 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 3, i32 0), align 8
  %416 = load i32, i32* @JumpByte, align 4
  %417 = and i32 %415, %416
  %418 = icmp ne i32 %417, 0
  br i1 %418, label %419, label %433

419:                                              ; preds = %414, %402
  %420 = load i32, i32* @DATA_PREFIX_OPCODE, align 4
  store i32 %420, i32* %4, align 4
  %421 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 3, i32 0), align 8
  %422 = load i32, i32* @JumpByte, align 4
  %423 = and i32 %421, %422
  %424 = icmp ne i32 %423, 0
  br i1 %424, label %425, label %427

425:                                              ; preds = %419
  %426 = load i32, i32* @ADDR_PREFIX_OPCODE, align 4
  store i32 %426, i32* %4, align 4
  br label %427

427:                                              ; preds = %425, %419
  %428 = load i32, i32* %4, align 4
  %429 = call i32 @add_prefix(i32 %428)
  %430 = icmp ne i32 %429, 0
  br i1 %430, label %432, label %431

431:                                              ; preds = %427
  store i32 0, i32* %1, align 4
  br label %488

432:                                              ; preds = %427
  br label %433

433:                                              ; preds = %432, %414, %411, %395, %391, %387
  br label %434

434:                                              ; preds = %433, %386
  %435 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 0), align 8
  %436 = load i64, i64* @QWORD_MNEM_SUFFIX, align 8
  %437 = icmp eq i64 %435, %436
  br i1 %437, label %438, label %473

438:                                              ; preds = %434
  %439 = load i32, i32* @flag_code, align 4
  %440 = icmp eq i32 %439, 128
  br i1 %440, label %441, label %473

441:                                              ; preds = %438
  %442 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 3, i32 0), align 8
  %443 = load i32, i32* @NoRex64, align 4
  %444 = and i32 %442, %443
  %445 = icmp eq i32 %444, 0
  br i1 %445, label %446, label %473

446:                                              ; preds = %441
  %447 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 2), align 8
  %448 = icmp ne i32 %447, 2
  br i1 %448, label %468, label %449

449:                                              ; preds = %446
  %450 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 1), align 8
  %451 = getelementptr inbounds i32, i32* %450, i64 0
  %452 = load i32, i32* %451, align 4
  %453 = load i32, i32* @Acc, align 4
  %454 = load i32, i32* @Reg64, align 4
  %455 = or i32 %453, %454
  %456 = icmp ne i32 %452, %455
  br i1 %456, label %468, label %457

457:                                              ; preds = %449
  %458 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 1), align 8
  %459 = getelementptr inbounds i32, i32* %458, i64 1
  %460 = load i32, i32* %459, align 4
  %461 = load i32, i32* @Acc, align 4
  %462 = load i32, i32* @Reg64, align 4
  %463 = or i32 %461, %462
  %464 = icmp ne i32 %460, %463
  br i1 %464, label %468, label %465

465:                                              ; preds = %457
  %466 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 3, i32 1), align 4
  %467 = icmp ne i32 %466, 144
  br i1 %467, label %468, label %472

468:                                              ; preds = %465, %457, %449, %446
  %469 = load i32, i32* @REX_W, align 4
  %470 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 4), align 8
  %471 = or i32 %470, %469
  store i32 %471, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 4), align 8
  br label %472

472:                                              ; preds = %468, %465
  br label %473

473:                                              ; preds = %472, %441, %438, %434
  %474 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 0), align 8
  %475 = load i64, i64* @LONG_MNEM_SUFFIX, align 8
  %476 = icmp eq i64 %474, %475
  br i1 %476, label %477, label %486

477:                                              ; preds = %473
  %478 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 3, i32 0), align 8
  %479 = load i32, i32* @FloatMF, align 4
  %480 = and i32 %478, %479
  %481 = icmp ne i32 %480, 0
  br i1 %481, label %482, label %485

482:                                              ; preds = %477
  %483 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 3, i32 1), align 4
  %484 = xor i32 %483, 4
  store i32 %484, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 3, i32 1), align 4
  br label %485

485:                                              ; preds = %482, %477
  br label %486

486:                                              ; preds = %485, %473
  br label %487

487:                                              ; preds = %486, %336, %333
  store i32 1, i32* %1, align 4
  br label %488

488:                                              ; preds = %487, %431, %384, %327, %291, %190, %181, %172, %163, %84
  %489 = load i32, i32* %1, align 4
  ret i32 %489
}

declare dso_local i32 @as_bad(i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @check_byte_reg(...) #1

declare dso_local i32 @check_long_reg(...) #1

declare dso_local i32 @check_qword_reg(...) #1

declare dso_local i32 @check_word_reg(...) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @add_prefix(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
