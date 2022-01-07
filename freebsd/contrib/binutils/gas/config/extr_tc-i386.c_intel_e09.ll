; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-i386.c_intel_e09.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-i386.c_intel_e09.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i8 }
%struct.TYPE_9__ = type { i32, i32, i8*, i8*, i64, i64, i32 }
%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i8*, i32, i32, i32* }
%struct.TYPE_10__ = type { i32*, i8, i64 }

@NUM_ADDRESS_REGS = common dso_local global i32 0, align 4
@cur_token = common dso_local global %struct.TYPE_12__ zeroinitializer, align 1
@T_CONST = common dso_local global i32 0, align 4
@T_OFFSET = common dso_local global i32 0, align 4
@intel_parser = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@T_SHORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"+\00", align 1
@T_PTR = common dso_local global i8 0, align 1
@prev_token = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@T_BYTE = common dso_local global i64 0, align 8
@BYTE_MNEM_SUFFIX = common dso_local global i8 0, align 1
@T_WORD = common dso_local global i64 0, align 8
@current_templates = common dso_local global %struct.TYPE_11__* null, align 8
@SHORT_MNEM_SUFFIX = common dso_local global i8 0, align 1
@WORD_MNEM_SUFFIX = common dso_local global i8 0, align 1
@T_DWORD = common dso_local global i64 0, align 8
@flag_code = common dso_local global i64 0, align 8
@CODE_16BIT = common dso_local global i64 0, align 8
@Jump = common dso_local global i32 0, align 4
@JumpDword = common dso_local global i32 0, align 4
@LONG_DOUBLE_MNEM_SUFFIX = common dso_local global i8 0, align 1
@LONG_MNEM_SUFFIX = common dso_local global i8 0, align 1
@T_FWORD = common dso_local global i64 0, align 8
@DATA_PREFIX_OPCODE = common dso_local global i32 0, align 4
@T_QWORD = common dso_local global i64 0, align 8
@QWORD_MNEM_SUFFIX = common dso_local global i8 0, align 1
@T_TBYTE = common dso_local global i64 0, align 8
@T_XMMWORD = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"Unknown operand modifier `%s'\00", align 1
@JumpAbsolute = common dso_local global i32 0, align 4
@i = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@this_operand = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"Conflicting operand modifiers\00", align 1
@T_REG = common dso_local global i64 0, align 8
@JumpInterSegment = common dso_local global i32 0, align 4
@T_NIL = common dso_local global i8 0, align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Invalid operand to `OFFSET'\00", align 1
@i386_regtab = common dso_local global i64 0, align 8
@REGNAM_AL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @intel_e09 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_e09() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [2 x i8], align 1
  %6 = alloca i8, align 1
  %7 = load i32, i32* @NUM_ADDRESS_REGS, align 4
  %8 = xor i32 %7, -1
  store i32 %8, i32* %2, align 4
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %83, %0
  %10 = load i8, i8* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cur_token, i32 0, i32 0), align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 43
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = load i8, i8* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cur_token, i32 0, i32 0), align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 45
  br i1 %16, label %17, label %28

17:                                               ; preds = %13, %9
  %18 = load i8, i8* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cur_token, i32 0, i32 0), align 1
  %19 = call i32 @intel_match_token(i8 signext %18)
  %20 = load i8, i8* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cur_token, i32 0, i32 0), align 1
  %21 = sext i8 %20 to i32
  store i32 %21, i32* %4, align 4
  %22 = call i32 (...) @intel_putback_token()
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @T_CONST, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  br label %86

27:                                               ; preds = %17
  br label %28

28:                                               ; preds = %27, %13
  %29 = load i8, i8* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cur_token, i32 0, i32 0), align 1
  %30 = sext i8 %29 to i32
  %31 = load i32, i32* @T_OFFSET, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %28
  %34 = load i32, i32* %3, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %3, align 4
  %36 = icmp ne i32 %34, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %33
  %38 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @intel_parser, i32 0, i32 4), align 8
  %39 = add nsw i64 %38, 1
  store i64 %39, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @intel_parser, i32 0, i32 4), align 8
  br label %40

40:                                               ; preds = %37, %33
  br label %83

41:                                               ; preds = %28
  %42 = load i8, i8* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cur_token, i32 0, i32 0), align 1
  %43 = sext i8 %42 to i32
  %44 = load i32, i32* @T_SHORT, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load i32, i32* @T_SHORT, align 4
  %48 = shl i32 1, %47
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @intel_parser, i32 0, i32 0), align 8
  %50 = or i32 %49, %48
  store i32 %50, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @intel_parser, i32 0, i32 0), align 8
  br label %82

51:                                               ; preds = %41
  %52 = load i8, i8* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cur_token, i32 0, i32 0), align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 43
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @intel_parser, i32 0, i32 6), align 8
  %57 = call i32 @strcat(i32 %56, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %81

58:                                               ; preds = %51
  %59 = load i8, i8* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cur_token, i32 0, i32 0), align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 45
  br i1 %61, label %66, label %62

62:                                               ; preds = %58
  %63 = load i8, i8* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cur_token, i32 0, i32 0), align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 126
  br i1 %65, label %66, label %79

66:                                               ; preds = %62, %58
  %67 = load i32, i32* %2, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load i32, i32* %2, align 4
  %71 = xor i32 %70, -1
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %69, %66
  %73 = load i8, i8* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cur_token, i32 0, i32 0), align 1
  %74 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 0
  store i8 %73, i8* %74, align 1
  %75 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 1
  store i8 0, i8* %75, align 1
  %76 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @intel_parser, i32 0, i32 6), align 8
  %77 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 0
  %78 = call i32 @strcat(i32 %76, i8* %77)
  br label %80

79:                                               ; preds = %62
  br label %86

80:                                               ; preds = %72
  br label %81

81:                                               ; preds = %80, %55
  br label %82

82:                                               ; preds = %81, %46
  br label %83

83:                                               ; preds = %82, %40
  %84 = load i8, i8* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cur_token, i32 0, i32 0), align 1
  %85 = call i32 @intel_match_token(i8 signext %84)
  br label %9

86:                                               ; preds = %79, %26
  br label %87

87:                                               ; preds = %397, %86
  %88 = call i32 (...) @intel_e10()
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %87
  store i32 0, i32* %1, align 4
  br label %436

91:                                               ; preds = %87
  %92 = load i8, i8* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cur_token, i32 0, i32 0), align 1
  %93 = sext i8 %92 to i32
  %94 = load i8, i8* @T_PTR, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %93, %95
  br i1 %96, label %97, label %345

97:                                               ; preds = %91
  %98 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @prev_token, i32 0, i32 0), align 8
  %99 = load i64, i64* @T_BYTE, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %97
  %102 = load i8, i8* @BYTE_MNEM_SUFFIX, align 1
  store i8 %102, i8* %6, align 1
  br label %302

103:                                              ; preds = %97
  %104 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @prev_token, i32 0, i32 0), align 8
  %105 = load i64, i64* @T_WORD, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %148

107:                                              ; preds = %103
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** @current_templates, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 0
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp eq i32 %115, 108
  br i1 %116, label %117, label %139

117:                                              ; preds = %107
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** @current_templates, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  %122 = load i8*, i8** %121, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 2
  %124 = load i8, i8* %123, align 1
  %125 = sext i8 %124 to i32
  %126 = icmp eq i32 %125, 115
  br i1 %126, label %127, label %139

127:                                              ; preds = %117
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** @current_templates, align 8
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 0
  %132 = load i8*, i8** %131, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 3
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %127
  %138 = load i8, i8* @BYTE_MNEM_SUFFIX, align 1
  store i8 %138, i8* %6, align 1
  br label %147

139:                                              ; preds = %127, %117, %107
  %140 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @intel_parser, i32 0, i32 1), align 4
  %141 = icmp eq i32 %140, 2
  br i1 %141, label %142, label %144

142:                                              ; preds = %139
  %143 = load i8, i8* @SHORT_MNEM_SUFFIX, align 1
  store i8 %143, i8* %6, align 1
  br label %146

144:                                              ; preds = %139
  %145 = load i8, i8* @WORD_MNEM_SUFFIX, align 1
  store i8 %145, i8* %6, align 1
  br label %146

146:                                              ; preds = %144, %142
  br label %147

147:                                              ; preds = %146, %137
  br label %301

148:                                              ; preds = %103
  %149 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @prev_token, i32 0, i32 0), align 8
  %150 = load i64, i64* @T_DWORD, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %211

152:                                              ; preds = %148
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** @current_templates, align 8
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 0
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 0
  %157 = load i8*, i8** %156, align 8
  %158 = getelementptr inbounds i8, i8* %157, i64 0
  %159 = load i8, i8* %158, align 1
  %160 = sext i8 %159 to i32
  %161 = icmp eq i32 %160, 108
  br i1 %161, label %162, label %184

162:                                              ; preds = %152
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** @current_templates, align 8
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 0
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 0
  %167 = load i8*, i8** %166, align 8
  %168 = getelementptr inbounds i8, i8* %167, i64 2
  %169 = load i8, i8* %168, align 1
  %170 = sext i8 %169 to i32
  %171 = icmp eq i32 %170, 115
  br i1 %171, label %172, label %184

172:                                              ; preds = %162
  %173 = load %struct.TYPE_11__*, %struct.TYPE_11__** @current_templates, align 8
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i32 0, i32 0
  %175 = load %struct.TYPE_7__*, %struct.TYPE_7__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 0
  %177 = load i8*, i8** %176, align 8
  %178 = getelementptr inbounds i8, i8* %177, i64 3
  %179 = load i8, i8* %178, align 1
  %180 = sext i8 %179 to i32
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %184

182:                                              ; preds = %172
  %183 = load i8, i8* @WORD_MNEM_SUFFIX, align 1
  store i8 %183, i8* %6, align 1
  br label %210

184:                                              ; preds = %172, %162, %152
  %185 = load i64, i64* @flag_code, align 8
  %186 = load i64, i64* @CODE_16BIT, align 8
  %187 = icmp eq i64 %185, %186
  br i1 %187, label %188, label %201

188:                                              ; preds = %184
  %189 = load %struct.TYPE_11__*, %struct.TYPE_11__** @current_templates, align 8
  %190 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %189, i32 0, i32 0
  %191 = load %struct.TYPE_7__*, %struct.TYPE_7__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* @Jump, align 4
  %195 = load i32, i32* @JumpDword, align 4
  %196 = or i32 %194, %195
  %197 = and i32 %193, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %201

199:                                              ; preds = %188
  %200 = load i8, i8* @LONG_DOUBLE_MNEM_SUFFIX, align 1
  store i8 %200, i8* %6, align 1
  br label %209

201:                                              ; preds = %188, %184
  %202 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @intel_parser, i32 0, i32 1), align 4
  %203 = icmp eq i32 %202, 1
  br i1 %203, label %204, label %206

204:                                              ; preds = %201
  %205 = load i8, i8* @SHORT_MNEM_SUFFIX, align 1
  store i8 %205, i8* %6, align 1
  br label %208

206:                                              ; preds = %201
  %207 = load i8, i8* @LONG_MNEM_SUFFIX, align 1
  store i8 %207, i8* %6, align 1
  br label %208

208:                                              ; preds = %206, %204
  br label %209

209:                                              ; preds = %208, %199
  br label %210

210:                                              ; preds = %209, %182
  br label %300

211:                                              ; preds = %148
  %212 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @prev_token, i32 0, i32 0), align 8
  %213 = load i64, i64* @T_FWORD, align 8
  %214 = icmp eq i64 %212, %213
  br i1 %214, label %215, label %263

215:                                              ; preds = %211
  %216 = load %struct.TYPE_11__*, %struct.TYPE_11__** @current_templates, align 8
  %217 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %216, i32 0, i32 0
  %218 = load %struct.TYPE_7__*, %struct.TYPE_7__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %218, i32 0, i32 0
  %220 = load i8*, i8** %219, align 8
  %221 = getelementptr inbounds i8, i8* %220, i64 0
  %222 = load i8, i8* %221, align 1
  %223 = sext i8 %222 to i32
  %224 = icmp eq i32 %223, 108
  br i1 %224, label %225, label %247

225:                                              ; preds = %215
  %226 = load %struct.TYPE_11__*, %struct.TYPE_11__** @current_templates, align 8
  %227 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %226, i32 0, i32 0
  %228 = load %struct.TYPE_7__*, %struct.TYPE_7__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %228, i32 0, i32 0
  %230 = load i8*, i8** %229, align 8
  %231 = getelementptr inbounds i8, i8* %230, i64 2
  %232 = load i8, i8* %231, align 1
  %233 = sext i8 %232 to i32
  %234 = icmp eq i32 %233, 115
  br i1 %234, label %235, label %247

235:                                              ; preds = %225
  %236 = load %struct.TYPE_11__*, %struct.TYPE_11__** @current_templates, align 8
  %237 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %236, i32 0, i32 0
  %238 = load %struct.TYPE_7__*, %struct.TYPE_7__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %238, i32 0, i32 0
  %240 = load i8*, i8** %239, align 8
  %241 = getelementptr inbounds i8, i8* %240, i64 3
  %242 = load i8, i8* %241, align 1
  %243 = sext i8 %242 to i32
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %245, label %247

245:                                              ; preds = %235
  %246 = load i8, i8* @LONG_MNEM_SUFFIX, align 1
  store i8 %246, i8* %6, align 1
  br label %262

247:                                              ; preds = %235, %225, %215
  %248 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @intel_parser, i32 0, i32 1), align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %259, label %250

250:                                              ; preds = %247
  %251 = load i64, i64* @flag_code, align 8
  %252 = load i64, i64* @CODE_16BIT, align 8
  %253 = icmp eq i64 %251, %252
  br i1 %253, label %254, label %257

254:                                              ; preds = %250
  %255 = load i32, i32* @DATA_PREFIX_OPCODE, align 4
  %256 = call i32 @add_prefix(i32 %255)
  br label %257

257:                                              ; preds = %254, %250
  %258 = load i8, i8* @LONG_DOUBLE_MNEM_SUFFIX, align 1
  store i8 %258, i8* %6, align 1
  br label %261

259:                                              ; preds = %247
  %260 = load i8, i8* @BYTE_MNEM_SUFFIX, align 1
  store i8 %260, i8* %6, align 1
  br label %261

261:                                              ; preds = %259, %257
  br label %262

262:                                              ; preds = %261, %245
  br label %299

263:                                              ; preds = %211
  %264 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @prev_token, i32 0, i32 0), align 8
  %265 = load i64, i64* @T_QWORD, align 8
  %266 = icmp eq i64 %264, %265
  br i1 %266, label %267, label %275

267:                                              ; preds = %263
  %268 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @intel_parser, i32 0, i32 1), align 4
  %269 = icmp eq i32 %268, 1
  br i1 %269, label %270, label %272

270:                                              ; preds = %267
  %271 = load i8, i8* @LONG_MNEM_SUFFIX, align 1
  store i8 %271, i8* %6, align 1
  br label %274

272:                                              ; preds = %267
  %273 = load i8, i8* @QWORD_MNEM_SUFFIX, align 1
  store i8 %273, i8* %6, align 1
  br label %274

274:                                              ; preds = %272, %270
  br label %298

275:                                              ; preds = %263
  %276 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @prev_token, i32 0, i32 0), align 8
  %277 = load i64, i64* @T_TBYTE, align 8
  %278 = icmp eq i64 %276, %277
  br i1 %278, label %279, label %287

279:                                              ; preds = %275
  %280 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @intel_parser, i32 0, i32 1), align 4
  %281 = icmp eq i32 %280, 1
  br i1 %281, label %282, label %284

282:                                              ; preds = %279
  %283 = load i8, i8* @LONG_DOUBLE_MNEM_SUFFIX, align 1
  store i8 %283, i8* %6, align 1
  br label %286

284:                                              ; preds = %279
  %285 = load i8, i8* @BYTE_MNEM_SUFFIX, align 1
  store i8 %285, i8* %6, align 1
  br label %286

286:                                              ; preds = %284, %282
  br label %297

287:                                              ; preds = %275
  %288 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @prev_token, i32 0, i32 0), align 8
  %289 = load i64, i64* @T_XMMWORD, align 8
  %290 = icmp eq i64 %288, %289
  br i1 %290, label %291, label %292

291:                                              ; preds = %287
  store i8 0, i8* %6, align 1
  br label %296

292:                                              ; preds = %287
  %293 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %294 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @prev_token, i32 0, i32 1), align 8
  %295 = call i32 (i32, ...) @as_bad(i32 %293, i32 %294)
  store i32 0, i32* %1, align 4
  br label %436

296:                                              ; preds = %291
  br label %297

297:                                              ; preds = %296, %286
  br label %298

298:                                              ; preds = %297, %274
  br label %299

299:                                              ; preds = %298, %262
  br label %300

300:                                              ; preds = %299, %210
  br label %301

301:                                              ; preds = %300, %147
  br label %302

302:                                              ; preds = %301, %101
  %303 = load %struct.TYPE_11__*, %struct.TYPE_11__** @current_templates, align 8
  %304 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %303, i32 0, i32 0
  %305 = load %struct.TYPE_7__*, %struct.TYPE_7__** %304, align 8
  %306 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %305, i32 0, i32 1
  %307 = load i32, i32* %306, align 8
  %308 = load i32, i32* @Jump, align 4
  %309 = load i32, i32* @JumpDword, align 4
  %310 = or i32 %308, %309
  %311 = and i32 %307, %310
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %320

313:                                              ; preds = %302
  %314 = load i32, i32* @JumpAbsolute, align 4
  %315 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @i, i32 0, i32 0), align 8
  %316 = load i64, i64* @this_operand, align 8
  %317 = getelementptr inbounds i32, i32* %315, i64 %316
  %318 = load i32, i32* %317, align 4
  %319 = or i32 %318, %314
  store i32 %319, i32* %317, align 4
  br label %320

320:                                              ; preds = %313, %302
  %321 = load %struct.TYPE_11__*, %struct.TYPE_11__** @current_templates, align 8
  %322 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %321, i32 0, i32 0
  %323 = load %struct.TYPE_7__*, %struct.TYPE_7__** %322, align 8
  %324 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %323, i32 0, i32 2
  %325 = load i32, i32* %324, align 4
  %326 = icmp eq i32 %325, 141
  br i1 %326, label %327, label %328

327:                                              ; preds = %320
  br label %344

328:                                              ; preds = %320
  %329 = load i8, i8* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @i, i32 0, i32 1), align 8
  %330 = icmp ne i8 %329, 0
  br i1 %330, label %333, label %331

331:                                              ; preds = %328
  %332 = load i8, i8* %6, align 1
  store i8 %332, i8* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @i, i32 0, i32 1), align 8
  br label %343

333:                                              ; preds = %328
  %334 = load i8, i8* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @i, i32 0, i32 1), align 8
  %335 = sext i8 %334 to i32
  %336 = load i8, i8* %6, align 1
  %337 = sext i8 %336 to i32
  %338 = icmp ne i32 %335, %337
  br i1 %338, label %339, label %342

339:                                              ; preds = %333
  %340 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %341 = call i32 (i32, ...) @as_bad(i32 %340)
  store i32 0, i32* %1, align 4
  br label %436

342:                                              ; preds = %333
  br label %343

343:                                              ; preds = %342, %331
  br label %344

344:                                              ; preds = %343, %327
  br label %397

345:                                              ; preds = %91
  %346 = load i8, i8* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cur_token, i32 0, i32 0), align 1
  %347 = sext i8 %346 to i32
  %348 = icmp eq i32 %347, 58
  br i1 %348, label %349, label %395

349:                                              ; preds = %345
  %350 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @prev_token, i32 0, i32 0), align 8
  %351 = load i64, i64* @T_REG, align 8
  %352 = icmp ne i64 %350, %351
  br i1 %352, label %353, label %394

353:                                              ; preds = %349
  %354 = load i64, i64* @this_operand, align 8
  %355 = icmp ne i64 %354, 0
  br i1 %355, label %386, label %356

356:                                              ; preds = %353
  %357 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @intel_parser, i32 0, i32 4), align 8
  %358 = icmp ne i64 %357, 0
  br i1 %358, label %386, label %359

359:                                              ; preds = %356
  %360 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @intel_parser, i32 0, i32 5), align 8
  %361 = icmp ne i64 %360, 0
  br i1 %361, label %386, label %362

362:                                              ; preds = %359
  %363 = load %struct.TYPE_11__*, %struct.TYPE_11__** @current_templates, align 8
  %364 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %363, i32 0, i32 0
  %365 = load %struct.TYPE_7__*, %struct.TYPE_7__** %364, align 8
  %366 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %365, i32 0, i32 1
  %367 = load i32, i32* %366, align 8
  %368 = load i32, i32* @Jump, align 4
  %369 = load i32, i32* @JumpDword, align 4
  %370 = or i32 %368, %369
  %371 = load i32, i32* @JumpInterSegment, align 4
  %372 = or i32 %370, %371
  %373 = and i32 %367, %372
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %389, label %375

375:                                              ; preds = %362
  %376 = load %struct.TYPE_11__*, %struct.TYPE_11__** @current_templates, align 8
  %377 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %376, i32 0, i32 0
  %378 = load %struct.TYPE_7__*, %struct.TYPE_7__** %377, align 8
  %379 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %378, i32 0, i32 3
  %380 = load i32*, i32** %379, align 8
  %381 = getelementptr inbounds i32, i32* %380, i64 0
  %382 = load i32, i32* %381, align 4
  %383 = load i32, i32* @JumpAbsolute, align 4
  %384 = and i32 %382, %383
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %389, label %386

386:                                              ; preds = %375, %359, %356, %353
  %387 = load i8, i8* @T_NIL, align 1
  %388 = call i32 @intel_match_token(i8 signext %387)
  store i32 %388, i32* %1, align 4
  br label %436

389:                                              ; preds = %375, %362
  %390 = load i8*, i8** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @intel_parser, i32 0, i32 3), align 8
  store i8* %390, i8** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @intel_parser, i32 0, i32 2), align 8
  %391 = load i8*, i8** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @intel_parser, i32 0, i32 3), align 8
  %392 = getelementptr inbounds i8, i8* %391, i32 -1
  store i8* %392, i8** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @intel_parser, i32 0, i32 3), align 8
  store i8 0, i8* %392, align 1
  %393 = call i32 @intel_match_token(i8 signext 58)
  store i32 %393, i32* %1, align 4
  br label %436

394:                                              ; preds = %349
  br label %396

395:                                              ; preds = %345
  br label %400

396:                                              ; preds = %394
  br label %397

397:                                              ; preds = %396, %344
  %398 = load i8, i8* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cur_token, i32 0, i32 0), align 1
  %399 = call i32 @intel_match_token(i8 signext %398)
  br label %87

400:                                              ; preds = %395
  %401 = load i32, i32* %3, align 4
  %402 = icmp ne i32 %401, 0
  br i1 %402, label %403, label %423

403:                                              ; preds = %400
  %404 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @intel_parser, i32 0, i32 4), align 8
  %405 = add nsw i64 %404, -1
  store i64 %405, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @intel_parser, i32 0, i32 4), align 8
  %406 = load i32, i32* %2, align 4
  %407 = icmp slt i32 %406, 0
  br i1 %407, label %408, label %411

408:                                              ; preds = %403
  %409 = load i32, i32* %2, align 4
  %410 = xor i32 %409, -1
  store i32 %410, i32* %2, align 4
  br label %411

411:                                              ; preds = %408, %403
  %412 = load i32, i32* @NUM_ADDRESS_REGS, align 4
  %413 = load i32, i32* %2, align 4
  %414 = icmp sgt i32 %412, %413
  br i1 %414, label %415, label %418

415:                                              ; preds = %411
  %416 = call i32 @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %417 = call i32 (i32, ...) @as_bad(i32 %416)
  store i32 0, i32* %1, align 4
  br label %436

418:                                              ; preds = %411
  %419 = load i32, i32* @T_OFFSET, align 4
  %420 = shl i32 1, %419
  %421 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @intel_parser, i32 0, i32 0), align 8
  %422 = or i32 %421, %420
  store i32 %422, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @intel_parser, i32 0, i32 0), align 8
  br label %423

423:                                              ; preds = %418, %400
  %424 = load i32, i32* %2, align 4
  %425 = icmp sge i32 %424, 0
  br i1 %425, label %426, label %435

426:                                              ; preds = %423
  %427 = load i32, i32* @NUM_ADDRESS_REGS, align 4
  %428 = load i32, i32* %2, align 4
  %429 = icmp sgt i32 %427, %428
  br i1 %429, label %430, label %435

430:                                              ; preds = %426
  %431 = load i64, i64* @i386_regtab, align 8
  %432 = load i64, i64* @REGNAM_AL, align 8
  %433 = add nsw i64 %431, %432
  %434 = add nsw i64 %433, 3
  store i64 %434, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @i, i32 0, i32 2), align 8
  br label %435

435:                                              ; preds = %430, %426, %423
  store i32 1, i32* %1, align 4
  br label %436

436:                                              ; preds = %435, %415, %389, %386, %339, %292, %90
  %437 = load i32, i32* %1, align 4
  ret i32 %437
}

declare dso_local i32 @intel_match_token(i8 signext) #1

declare dso_local i32 @intel_putback_token(...) #1

declare dso_local i32 @strcat(i32, i8*) #1

declare dso_local i32 @intel_e10(...) #1

declare dso_local i32 @add_prefix(i32) #1

declare dso_local i32 @as_bad(i32, ...) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
