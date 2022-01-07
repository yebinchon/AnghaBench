; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-i386.c_parse_insn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-i386.c_parse_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i8*, i32 }
%struct.TYPE_8__ = type { i32 }

@mnemonic_chars = common dso_local global i8* null, align 8
@MAX_MNEM_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"no such instruction: `%s'\00", align 1
@END_OF_INSN = common dso_local global i8 0, align 1
@intel_syntax = common dso_local global i64 0, align 8
@PREFIX_SEPARATOR = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"invalid character %s in mnemonic\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"expecting prefix; got nothing\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"expecting mnemonic; got nothing\00", align 1
@op_hash = common dso_local global i32 0, align 4
@current_templates = common dso_local global %struct.TYPE_6__* null, align 8
@IsPrefix = common dso_local global i32 0, align 4
@flag_code = common dso_local global i64 0, align 8
@CODE_64BIT = common dso_local global i64 0, align 8
@Cpu64 = common dso_local global i32 0, align 4
@CpuNo64 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"`%s' is only supported in 64-bit mode\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"`%s' is not supported in 64-bit mode\00", align 1
@Size16 = common dso_local global i32 0, align 4
@Size32 = common dso_local global i32 0, align 4
@CODE_16BIT = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [20 x i8] c"redundant %s prefix\00", align 1
@i = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@Jump = common dso_local global i32 0, align 4
@JumpByte = common dso_local global i32 0, align 4
@DS_PREFIX_OPCODE = common dso_local global i32 0, align 4
@CS_PREFIX_OPCODE = common dso_local global i32 0, align 4
@cpu_arch_flags = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [32 x i8] c"`%s' is not supported on `%s%s'\00", align 1
@cpu_arch_name = common dso_local global i32 0, align 4
@cpu_sub_arch_name = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@Cpu386 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [46 x i8] c"use .code16 to ensure correct addressing mode\00", align 1
@parse_insn.override = internal global %struct.TYPE_6__ zeroinitializer, align 8
@IsString = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [40 x i8] c"expecting string instruction after `%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*)* @parse_insn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @parse_insn(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %4, align 8
  store i8* %12, i8** %6, align 8
  %13 = load i8*, i8** %6, align 8
  store i8* %13, i8** %7, align 8
  store i8* null, i8** %11, align 8
  br label %14

14:                                               ; preds = %2, %221
  %15 = load i8*, i8** %5, align 8
  store i8* %15, i8** %8, align 8
  br label %16

16:                                               ; preds = %39, %14
  %17 = load i8*, i8** @mnemonic_chars, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i64
  %21 = getelementptr inbounds i8, i8* %17, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = load i8*, i8** %8, align 8
  store i8 %22, i8* %23, align 1
  %24 = sext i8 %22 to i32
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %42

26:                                               ; preds = %16
  %27 = load i8*, i8** %8, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %8, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = load i32, i32* @MAX_MNEM_SIZE, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  %34 = icmp uge i8* %29, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %26
  %36 = call i32 @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %37 = load i8*, i8** %7, align 8
  %38 = call i32 (i32, ...) @as_bad(i32 %36, i8* %37)
  store i8* null, i8** %3, align 8
  br label %520

39:                                               ; preds = %26
  %40 = load i8*, i8** %6, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %6, align 8
  br label %16

42:                                               ; preds = %16
  %43 = load i8*, i8** %6, align 8
  %44 = load i8, i8* %43, align 1
  %45 = call i32 @is_space_char(i8 signext %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %75, label %47

47:                                               ; preds = %42
  %48 = load i8*, i8** %6, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = load i8, i8* @END_OF_INSN, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp ne i32 %50, %52
  br i1 %53, label %54, label %75

54:                                               ; preds = %47
  %55 = load i64, i64* @intel_syntax, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %69, label %57

57:                                               ; preds = %54
  %58 = load i8*, i8** %6, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = load i8, i8* @PREFIX_SEPARATOR, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp ne i32 %60, %62
  br i1 %63, label %64, label %75

64:                                               ; preds = %57
  %65 = load i8*, i8** %6, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp ne i32 %67, 44
  br i1 %68, label %69, label %75

69:                                               ; preds = %64, %54
  %70 = call i32 @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %71 = load i8*, i8** %6, align 8
  %72 = load i8, i8* %71, align 1
  %73 = call i8* @output_invalid(i8 signext %72)
  %74 = call i32 (i32, ...) @as_bad(i32 %70, i8* %73)
  store i8* null, i8** %3, align 8
  br label %520

75:                                               ; preds = %64, %57, %47, %42
  %76 = load i8*, i8** %7, align 8
  %77 = load i8*, i8** %6, align 8
  %78 = icmp eq i8* %76, %77
  br i1 %78, label %79, label %96

79:                                               ; preds = %75
  %80 = load i64, i64* @intel_syntax, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %92, label %82

82:                                               ; preds = %79
  %83 = load i8*, i8** %6, align 8
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = load i8, i8* @PREFIX_SEPARATOR, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %85, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %82
  %90 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %91 = call i32 (i32, ...) @as_bad(i32 %90)
  br label %95

92:                                               ; preds = %82, %79
  %93 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %94 = call i32 (i32, ...) @as_bad(i32 %93)
  br label %95

95:                                               ; preds = %92, %89
  store i8* null, i8** %3, align 8
  br label %520

96:                                               ; preds = %75
  %97 = load i32, i32* @op_hash, align 4
  %98 = load i8*, i8** %5, align 8
  %99 = call %struct.TYPE_6__* @hash_find(i32 %97, i8* %98)
  store %struct.TYPE_6__* %99, %struct.TYPE_6__** @current_templates, align 8
  %100 = load i8*, i8** %6, align 8
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = load i8, i8* @END_OF_INSN, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp ne i32 %102, %104
  br i1 %105, label %106, label %220

106:                                              ; preds = %96
  %107 = load i8*, i8** %6, align 8
  %108 = load i8, i8* %107, align 1
  %109 = call i32 @is_space_char(i8 signext %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %106
  %112 = load i8*, i8** %6, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 1
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = load i8, i8* @END_OF_INSN, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp ne i32 %115, %117
  br i1 %118, label %119, label %220

119:                                              ; preds = %111, %106
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current_templates, align 8
  %121 = icmp ne %struct.TYPE_6__* %120, null
  br i1 %121, label %122, label %220

122:                                              ; preds = %119
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current_templates, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 1
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @IsPrefix, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %220

131:                                              ; preds = %122
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current_templates, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 1
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load i64, i64* @flag_code, align 8
  %138 = load i64, i64* @CODE_64BIT, align 8
  %139 = icmp ne i64 %137, %138
  br i1 %139, label %140, label %142

140:                                              ; preds = %131
  %141 = load i32, i32* @Cpu64, align 4
  br label %144

142:                                              ; preds = %131
  %143 = load i32, i32* @CpuNo64, align 4
  br label %144

144:                                              ; preds = %142, %140
  %145 = phi i32 [ %141, %140 ], [ %143, %142 ]
  %146 = and i32 %136, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %164

148:                                              ; preds = %144
  %149 = load i64, i64* @flag_code, align 8
  %150 = load i64, i64* @CODE_64BIT, align 8
  %151 = icmp ne i64 %149, %150
  br i1 %151, label %152, label %154

152:                                              ; preds = %148
  %153 = call i32 @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  br label %156

154:                                              ; preds = %148
  %155 = call i32 @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  br label %156

156:                                              ; preds = %154, %152
  %157 = phi i32 [ %153, %152 ], [ %155, %154 ]
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current_templates, align 8
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 1
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 2
  %162 = load i8*, i8** %161, align 8
  %163 = call i32 (i32, ...) @as_bad(i32 %157, i8* %162)
  store i8* null, i8** %3, align 8
  br label %520

164:                                              ; preds = %144
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current_templates, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 1
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* @Size16, align 4
  %171 = load i32, i32* @Size32, align 4
  %172 = or i32 %170, %171
  %173 = and i32 %169, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %203

175:                                              ; preds = %164
  %176 = load i64, i64* @flag_code, align 8
  %177 = load i64, i64* @CODE_64BIT, align 8
  %178 = icmp ne i64 %176, %177
  br i1 %178, label %179, label %203

179:                                              ; preds = %175
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current_templates, align 8
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 1
  %182 = load %struct.TYPE_7__*, %struct.TYPE_7__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* @Size32, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  %188 = zext i1 %187 to i32
  %189 = load i64, i64* @flag_code, align 8
  %190 = load i64, i64* @CODE_16BIT, align 8
  %191 = icmp eq i64 %189, %190
  %192 = zext i1 %191 to i32
  %193 = xor i32 %188, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %203

195:                                              ; preds = %179
  %196 = call i32 @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  %197 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current_templates, align 8
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 1
  %199 = load %struct.TYPE_7__*, %struct.TYPE_7__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i32 0, i32 2
  %201 = load i8*, i8** %200, align 8
  %202 = call i32 (i32, ...) @as_bad(i32 %196, i8* %201)
  store i8* null, i8** %3, align 8
  br label %520

203:                                              ; preds = %179, %175, %164
  %204 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current_templates, align 8
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 1
  %206 = load %struct.TYPE_7__*, %struct.TYPE_7__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 8
  %209 = call i32 @add_prefix(i32 %208)
  switch i32 %209, label %217 [
    i32 0, label %210
    i32 2, label %211
  ]

210:                                              ; preds = %203
  store i8* null, i8** %3, align 8
  br label %520

211:                                              ; preds = %203
  %212 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current_templates, align 8
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 1
  %214 = load %struct.TYPE_7__*, %struct.TYPE_7__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %214, i32 0, i32 2
  %216 = load i8*, i8** %215, align 8
  store i8* %216, i8** %11, align 8
  br label %217

217:                                              ; preds = %203, %211
  %218 = load i8*, i8** %6, align 8
  %219 = getelementptr inbounds i8, i8* %218, i32 1
  store i8* %219, i8** %6, align 8
  store i8* %219, i8** %7, align 8
  br label %221

220:                                              ; preds = %122, %119, %111, %96
  br label %222

221:                                              ; preds = %217
  br label %14

222:                                              ; preds = %220
  %223 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current_templates, align 8
  %224 = icmp ne %struct.TYPE_6__* %223, null
  br i1 %224, label %289, label %225

225:                                              ; preds = %222
  %226 = load i8*, i8** %8, align 8
  %227 = getelementptr inbounds i8, i8* %226, i64 -1
  %228 = load i8, i8* %227, align 1
  %229 = sext i8 %228 to i32
  switch i32 %229, label %281 [
    i32 128, label %230
    i32 132, label %240
    i32 130, label %240
    i32 129, label %251
    i32 131, label %251
    i32 100, label %265
  ]

230:                                              ; preds = %225
  %231 = load i64, i64* @intel_syntax, align 8
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %239

233:                                              ; preds = %230
  %234 = load i8*, i8** %5, align 8
  %235 = call i32 @intel_float_operand(i8* %234)
  %236 = and i32 %235, 2
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %239

238:                                              ; preds = %233
  store i32 129, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 0), align 4
  br label %245

239:                                              ; preds = %233, %230
  br label %240

240:                                              ; preds = %225, %225, %239
  %241 = load i8*, i8** %8, align 8
  %242 = getelementptr inbounds i8, i8* %241, i64 -1
  %243 = load i8, i8* %242, align 1
  %244 = sext i8 %243 to i32
  store i32 %244, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 0), align 4
  br label %245

245:                                              ; preds = %240, %238
  %246 = load i8*, i8** %8, align 8
  %247 = getelementptr inbounds i8, i8* %246, i64 -1
  store i8 0, i8* %247, align 1
  %248 = load i32, i32* @op_hash, align 4
  %249 = load i8*, i8** %5, align 8
  %250 = call %struct.TYPE_6__* @hash_find(i32 %248, i8* %249)
  store %struct.TYPE_6__* %250, %struct.TYPE_6__** @current_templates, align 8
  br label %281

251:                                              ; preds = %225, %225
  %252 = load i64, i64* @intel_syntax, align 8
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %264, label %254

254:                                              ; preds = %251
  %255 = load i8*, i8** %8, align 8
  %256 = getelementptr inbounds i8, i8* %255, i64 -1
  %257 = load i8, i8* %256, align 1
  %258 = sext i8 %257 to i32
  store i32 %258, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 0), align 4
  %259 = load i8*, i8** %8, align 8
  %260 = getelementptr inbounds i8, i8* %259, i64 -1
  store i8 0, i8* %260, align 1
  %261 = load i32, i32* @op_hash, align 4
  %262 = load i8*, i8** %5, align 8
  %263 = call %struct.TYPE_6__* @hash_find(i32 %261, i8* %262)
  store %struct.TYPE_6__* %263, %struct.TYPE_6__** @current_templates, align 8
  br label %264

264:                                              ; preds = %254, %251
  br label %281

265:                                              ; preds = %225
  %266 = load i64, i64* @intel_syntax, align 8
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %280

268:                                              ; preds = %265
  %269 = load i8*, i8** %5, align 8
  %270 = call i32 @intel_float_operand(i8* %269)
  %271 = icmp eq i32 %270, 1
  br i1 %271, label %272, label %273

272:                                              ; preds = %268
  store i32 129, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 0), align 4
  br label %274

273:                                              ; preds = %268
  store i32 131, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 0), align 4
  br label %274

274:                                              ; preds = %273, %272
  %275 = load i8*, i8** %8, align 8
  %276 = getelementptr inbounds i8, i8* %275, i64 -1
  store i8 0, i8* %276, align 1
  %277 = load i32, i32* @op_hash, align 4
  %278 = load i8*, i8** %5, align 8
  %279 = call %struct.TYPE_6__* @hash_find(i32 %277, i8* %278)
  store %struct.TYPE_6__* %279, %struct.TYPE_6__** @current_templates, align 8
  br label %280

280:                                              ; preds = %274, %265
  br label %281

281:                                              ; preds = %225, %280, %264, %245
  %282 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current_templates, align 8
  %283 = icmp ne %struct.TYPE_6__* %282, null
  br i1 %283, label %288, label %284

284:                                              ; preds = %281
  %285 = call i32 @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %286 = load i8*, i8** %7, align 8
  %287 = call i32 (i32, ...) @as_bad(i32 %285, i8* %286)
  store i8* null, i8** %3, align 8
  br label %520

288:                                              ; preds = %281
  br label %289

289:                                              ; preds = %288, %222
  %290 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current_templates, align 8
  %291 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %290, i32 0, i32 1
  %292 = load %struct.TYPE_7__*, %struct.TYPE_7__** %291, align 8
  %293 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 8
  %295 = load i32, i32* @Jump, align 4
  %296 = load i32, i32* @JumpByte, align 4
  %297 = or i32 %295, %296
  %298 = and i32 %294, %297
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %343

300:                                              ; preds = %289
  %301 = load i8*, i8** %6, align 8
  %302 = getelementptr inbounds i8, i8* %301, i64 0
  %303 = load i8, i8* %302, align 1
  %304 = sext i8 %303 to i32
  %305 = icmp eq i32 %304, 44
  br i1 %305, label %306, label %342

306:                                              ; preds = %300
  %307 = load i8*, i8** %6, align 8
  %308 = getelementptr inbounds i8, i8* %307, i64 1
  %309 = load i8, i8* %308, align 1
  %310 = sext i8 %309 to i32
  %311 = icmp eq i32 %310, 112
  br i1 %311, label %312, label %342

312:                                              ; preds = %306
  %313 = load i8*, i8** %6, align 8
  %314 = getelementptr inbounds i8, i8* %313, i64 2
  %315 = load i8, i8* %314, align 1
  %316 = sext i8 %315 to i32
  %317 = icmp eq i32 %316, 116
  br i1 %317, label %318, label %326

318:                                              ; preds = %312
  %319 = load i32, i32* @DS_PREFIX_OPCODE, align 4
  %320 = call i32 @add_prefix(i32 %319)
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %323, label %322

322:                                              ; preds = %318
  store i8* null, i8** %3, align 8
  br label %520

323:                                              ; preds = %318
  %324 = load i8*, i8** %6, align 8
  %325 = getelementptr inbounds i8, i8* %324, i64 3
  store i8* %325, i8** %6, align 8
  br label %341

326:                                              ; preds = %312
  %327 = load i8*, i8** %6, align 8
  %328 = getelementptr inbounds i8, i8* %327, i64 2
  %329 = load i8, i8* %328, align 1
  %330 = sext i8 %329 to i32
  %331 = icmp eq i32 %330, 110
  br i1 %331, label %332, label %340

332:                                              ; preds = %326
  %333 = load i32, i32* @CS_PREFIX_OPCODE, align 4
  %334 = call i32 @add_prefix(i32 %333)
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %337, label %336

336:                                              ; preds = %332
  store i8* null, i8** %3, align 8
  br label %520

337:                                              ; preds = %332
  %338 = load i8*, i8** %6, align 8
  %339 = getelementptr inbounds i8, i8* %338, i64 3
  store i8* %339, i8** %6, align 8
  br label %340

340:                                              ; preds = %337, %326
  br label %341

341:                                              ; preds = %340, %323
  br label %342

342:                                              ; preds = %341, %306, %300
  br label %343

343:                                              ; preds = %342, %289
  %344 = load i8*, i8** %6, align 8
  %345 = load i8, i8* %344, align 1
  %346 = sext i8 %345 to i32
  %347 = icmp eq i32 %346, 44
  br i1 %347, label %348, label %354

348:                                              ; preds = %343
  %349 = call i32 @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %350 = load i8*, i8** %6, align 8
  %351 = load i8, i8* %350, align 1
  %352 = call i8* @output_invalid(i8 signext %351)
  %353 = call i32 (i32, ...) @as_bad(i32 %349, i8* %352)
  store i8* null, i8** %3, align 8
  br label %520

354:                                              ; preds = %343
  store i32 0, i32* %9, align 4
  %355 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current_templates, align 8
  %356 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %355, i32 0, i32 1
  %357 = load %struct.TYPE_7__*, %struct.TYPE_7__** %356, align 8
  store %struct.TYPE_7__* %357, %struct.TYPE_7__** %10, align 8
  br label %358

358:                                              ; preds = %404, %354
  %359 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %360 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current_templates, align 8
  %361 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %360, i32 0, i32 0
  %362 = load %struct.TYPE_7__*, %struct.TYPE_7__** %361, align 8
  %363 = icmp ult %struct.TYPE_7__* %359, %362
  br i1 %363, label %364, label %407

364:                                              ; preds = %358
  %365 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %366 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %365, i32 0, i32 1
  %367 = load i32, i32* %366, align 4
  %368 = load i32, i32* @Cpu64, align 4
  %369 = load i32, i32* @CpuNo64, align 4
  %370 = or i32 %368, %369
  %371 = xor i32 %370, -1
  %372 = and i32 %367, %371
  %373 = load i32, i32* @cpu_arch_flags, align 4
  %374 = load i32, i32* @Cpu64, align 4
  %375 = load i32, i32* @CpuNo64, align 4
  %376 = or i32 %374, %375
  %377 = xor i32 %376, -1
  %378 = and i32 %373, %377
  %379 = xor i32 %378, -1
  %380 = and i32 %372, %379
  %381 = icmp ne i32 %380, 0
  br i1 %381, label %385, label %382

382:                                              ; preds = %364
  %383 = load i32, i32* %9, align 4
  %384 = or i32 %383, 1
  store i32 %384, i32* %9, align 4
  br label %385

385:                                              ; preds = %382, %364
  %386 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %387 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %386, i32 0, i32 1
  %388 = load i32, i32* %387, align 4
  %389 = load i64, i64* @flag_code, align 8
  %390 = load i64, i64* @CODE_64BIT, align 8
  %391 = icmp eq i64 %389, %390
  br i1 %391, label %392, label %394

392:                                              ; preds = %385
  %393 = load i32, i32* @CpuNo64, align 4
  br label %396

394:                                              ; preds = %385
  %395 = load i32, i32* @Cpu64, align 4
  br label %396

396:                                              ; preds = %394, %392
  %397 = phi i32 [ %393, %392 ], [ %395, %394 ]
  %398 = and i32 %388, %397
  %399 = icmp ne i32 %398, 0
  br i1 %399, label %403, label %400

400:                                              ; preds = %396
  %401 = load i32, i32* %9, align 4
  %402 = or i32 %401, 2
  store i32 %402, i32* %9, align 4
  br label %403

403:                                              ; preds = %400, %396
  br label %404

404:                                              ; preds = %403
  %405 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %406 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %405, i32 1
  store %struct.TYPE_7__* %406, %struct.TYPE_7__** %10, align 8
  br label %358

407:                                              ; preds = %358
  %408 = load i32, i32* %9, align 4
  %409 = and i32 %408, 2
  %410 = icmp ne i32 %409, 0
  br i1 %410, label %427, label %411

411:                                              ; preds = %407
  %412 = load i64, i64* @flag_code, align 8
  %413 = load i64, i64* @CODE_64BIT, align 8
  %414 = icmp eq i64 %412, %413
  br i1 %414, label %415, label %417

415:                                              ; preds = %411
  %416 = call i32 @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  br label %419

417:                                              ; preds = %411
  %418 = call i32 @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  br label %419

419:                                              ; preds = %417, %415
  %420 = phi i32 [ %416, %415 ], [ %418, %417 ]
  %421 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current_templates, align 8
  %422 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %421, i32 0, i32 1
  %423 = load %struct.TYPE_7__*, %struct.TYPE_7__** %422, align 8
  %424 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %423, i32 0, i32 2
  %425 = load i8*, i8** %424, align 8
  %426 = call i32 (i32, ...) @as_bad(i32 %420, i8* %425)
  store i8* null, i8** %3, align 8
  br label %520

427:                                              ; preds = %407
  %428 = load i32, i32* %9, align 4
  %429 = and i32 %428, 1
  %430 = icmp ne i32 %429, 0
  br i1 %430, label %447, label %431

431:                                              ; preds = %427
  %432 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  %433 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current_templates, align 8
  %434 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %433, i32 0, i32 1
  %435 = load %struct.TYPE_7__*, %struct.TYPE_7__** %434, align 8
  %436 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %435, i32 0, i32 2
  %437 = load i8*, i8** %436, align 8
  %438 = load i32, i32* @cpu_arch_name, align 4
  %439 = load i8*, i8** @cpu_sub_arch_name, align 8
  %440 = icmp ne i8* %439, null
  br i1 %440, label %441, label %443

441:                                              ; preds = %431
  %442 = load i8*, i8** @cpu_sub_arch_name, align 8
  br label %444

443:                                              ; preds = %431
  br label %444

444:                                              ; preds = %443, %441
  %445 = phi i8* [ %442, %441 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), %443 ]
  %446 = call i32 (i32, ...) @as_warn(i32 %432, i8* %437, i32 %438, i8* %445)
  br label %461

447:                                              ; preds = %427
  %448 = load i32, i32* @Cpu386, align 4
  %449 = load i32, i32* @cpu_arch_flags, align 4
  %450 = xor i32 %449, -1
  %451 = and i32 %448, %450
  %452 = icmp ne i32 %451, 0
  br i1 %452, label %453, label %460

453:                                              ; preds = %447
  %454 = load i64, i64* @flag_code, align 8
  %455 = load i64, i64* @CODE_16BIT, align 8
  %456 = icmp ne i64 %454, %455
  br i1 %456, label %457, label %460

457:                                              ; preds = %453
  %458 = call i32 @_(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.9, i64 0, i64 0))
  %459 = call i32 (i32, ...) @as_warn(i32 %458)
  br label %460

460:                                              ; preds = %457, %453, %447
  br label %461

461:                                              ; preds = %460, %444
  %462 = load i8*, i8** %11, align 8
  %463 = icmp ne i8* %462, null
  br i1 %463, label %464, label %518

464:                                              ; preds = %461
  %465 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current_templates, align 8
  %466 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %465, i32 0, i32 1
  %467 = load %struct.TYPE_7__*, %struct.TYPE_7__** %466, align 8
  store %struct.TYPE_7__* %467, %struct.TYPE_7__** %10, align 8
  br label %468

468:                                              ; preds = %483, %464
  %469 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %470 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current_templates, align 8
  %471 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %470, i32 0, i32 0
  %472 = load %struct.TYPE_7__*, %struct.TYPE_7__** %471, align 8
  %473 = icmp ult %struct.TYPE_7__* %469, %472
  br i1 %473, label %474, label %486

474:                                              ; preds = %468
  %475 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %476 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %475, i32 0, i32 0
  %477 = load i32, i32* %476, align 8
  %478 = load i32, i32* @IsString, align 4
  %479 = and i32 %477, %478
  %480 = icmp ne i32 %479, 0
  br i1 %480, label %481, label %482

481:                                              ; preds = %474
  br label %486

482:                                              ; preds = %474
  br label %483

483:                                              ; preds = %482
  %484 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %485 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %484, i32 1
  store %struct.TYPE_7__* %485, %struct.TYPE_7__** %10, align 8
  br label %468

486:                                              ; preds = %481, %468
  %487 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %488 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current_templates, align 8
  %489 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %488, i32 0, i32 0
  %490 = load %struct.TYPE_7__*, %struct.TYPE_7__** %489, align 8
  %491 = icmp uge %struct.TYPE_7__* %487, %490
  br i1 %491, label %492, label %496

492:                                              ; preds = %486
  %493 = call i32 @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i64 0, i64 0))
  %494 = load i8*, i8** %11, align 8
  %495 = call i32 (i32, ...) @as_bad(i32 %493, i8* %494)
  store i8* null, i8** %3, align 8
  br label %520

496:                                              ; preds = %486
  %497 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  store %struct.TYPE_7__* %497, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @parse_insn.override, i32 0, i32 1), align 8
  br label %498

498:                                              ; preds = %513, %496
  %499 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %500 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current_templates, align 8
  %501 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %500, i32 0, i32 0
  %502 = load %struct.TYPE_7__*, %struct.TYPE_7__** %501, align 8
  %503 = icmp ult %struct.TYPE_7__* %499, %502
  br i1 %503, label %504, label %516

504:                                              ; preds = %498
  %505 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %506 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %505, i32 0, i32 0
  %507 = load i32, i32* %506, align 8
  %508 = load i32, i32* @IsString, align 4
  %509 = and i32 %507, %508
  %510 = icmp ne i32 %509, 0
  br i1 %510, label %512, label %511

511:                                              ; preds = %504
  br label %516

512:                                              ; preds = %504
  br label %513

513:                                              ; preds = %512
  %514 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %515 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %514, i32 1
  store %struct.TYPE_7__* %515, %struct.TYPE_7__** %10, align 8
  br label %498

516:                                              ; preds = %511, %498
  %517 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  store %struct.TYPE_7__* %517, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @parse_insn.override, i32 0, i32 0), align 8
  store %struct.TYPE_6__* @parse_insn.override, %struct.TYPE_6__** @current_templates, align 8
  br label %518

518:                                              ; preds = %516, %461
  %519 = load i8*, i8** %6, align 8
  store i8* %519, i8** %3, align 8
  br label %520

520:                                              ; preds = %518, %492, %419, %348, %336, %322, %284, %210, %195, %156, %95, %69, %35
  %521 = load i8*, i8** %3, align 8
  ret i8* %521
}

declare dso_local i32 @as_bad(i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @is_space_char(i8 signext) #1

declare dso_local i8* @output_invalid(i8 signext) #1

declare dso_local %struct.TYPE_6__* @hash_find(i32, i8*) #1

declare dso_local i32 @add_prefix(i32) #1

declare dso_local i32 @intel_float_operand(i8*) #1

declare dso_local i32 @as_warn(i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
