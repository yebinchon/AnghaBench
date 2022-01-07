; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-cr16.c_process_label_constant.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-cr16.c_process_label_constant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_9__, i8*, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { i32, i32, i32*, i32* }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }

@cur_arg_num = common dso_local global i32 0, align 4
@input_line_pointer = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [59 x i8] c"missing or invalid displacement expression `%s' taken as 0\00", align 1
@BFD_RELOC_NONE = common dso_local global i8* null, align 8
@relocatable = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"@c\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"@l\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c":l\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"@m\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c":m\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"@s\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c":s\00", align 1
@LD_STOR_INS = common dso_local global i32 0, align 4
@CSTBIT_INS = common dso_local global i32 0, align 4
@BFD_RELOC_CR16_REGREL20 = common dso_local global i8* null, align 8
@BFD_RELOC_CR16_REGREL20a = common dso_local global i8* null, align 8
@instruction = common dso_local global %struct.TYPE_8__* null, align 8
@BFD_RELOC_CR16_REGREL0 = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [6 x i8] c"loadb\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"storb\00", align 1
@BFD_RELOC_CR16_REGREL4 = common dso_local global i8* null, align 8
@BFD_RELOC_CR16_REGREL4a = common dso_local global i8* null, align 8
@BFD_RELOC_CR16_REGREL16 = common dso_local global i8* null, align 8
@BFD_RELOC_CR16_REGREL14 = common dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [4 x i8] c"bal\00", align 1
@BFD_RELOC_CR16_DISP24 = common dso_local global i8* null, align 8
@BRANCH_INS = common dso_local global i32 0, align 4
@BFD_RELOC_CR16_DISP8 = common dso_local global i8* null, align 8
@BFD_RELOC_CR16_DISP16 = common dso_local global i8* null, align 8
@STOR_IMM_INS = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [41 x i8] c"operand %d: illegal use expression: `%s`\00", align 1
@BFD_RELOC_CR16_ABS20 = common dso_local global i8* null, align 8
@BFD_RELOC_CR16_ABS24 = common dso_local global i8* null, align 8
@BRANCH_NEQ_INS = common dso_local global i32 0, align 4
@BFD_RELOC_CR16_DISP4 = common dso_local global i8* null, align 8
@ARITH_INS = common dso_local global i32 0, align 4
@BFD_RELOC_CR16_IMM4 = common dso_local global i8* null, align 8
@BFD_RELOC_CR16_IMM20 = common dso_local global i8* null, align 8
@BFD_RELOC_CR16_IMM32a = common dso_local global i8* null, align 8
@BFD_RELOC_CR16_IMM32 = common dso_local global i8* null, align 8
@ARITH_BYTE_INS = common dso_local global i32 0, align 4
@BFD_RELOC_CR16_IMM16 = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_6__*)* @process_label_constant to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_label_constant(i8* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = load i32, i32* @cur_arg_num, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i64 %15
  store %struct.TYPE_7__* %16, %struct.TYPE_7__** %10, align 8
  %17 = load i8*, i8** @input_line_pointer, align 8
  store i8* %17, i8** %5, align 8
  %18 = load i8*, i8** %3, align 8
  store i8* %18, i8** @input_line_pointer, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = call i32 @expression(%struct.TYPE_9__* %20)
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  switch i32 %25, label %333 [
    i32 137, label %26
    i32 139, label %26
    i32 136, label %42
    i32 134, label %51
    i32 135, label %51
    i32 138, label %51
  ]

26:                                               ; preds = %2, %2
  %27 = call i32 @_(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  %28 = load i8*, i8** %3, align 8
  %29 = call i32 (i32, ...) @as_bad(i32 %27, i8* %28)
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  store i32 136, i32* %32, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 1
  store i32 0, i32* %35, align 4
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 3
  store i32* null, i32** %38, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 2
  store i32* null, i32** %41, align 8
  br label %42

42:                                               ; preds = %2, %26
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  store i32 136, i32* %44, align 4
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 4
  br label %340

51:                                               ; preds = %2, %2, %2
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  store i32 134, i32* %53, align 4
  %54 = load i8*, i8** @BFD_RELOC_NONE, align 8
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  store i8* %54, i8** %56, align 8
  store i32 1, i32* @relocatable, align 4
  %57 = load i8*, i8** @input_line_pointer, align 8
  %58 = call i32 @strneq(i8* %57, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %51
  store i32 1, i32* %6, align 4
  br label %61

61:                                               ; preds = %60, %51
  %62 = load i8*, i8** @input_line_pointer, align 8
  %63 = call i32 @strneq(i8* %62, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 2)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %61
  %66 = load i8*, i8** @input_line_pointer, align 8
  %67 = call i32 @strneq(i8* %66, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 2)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %65, %61
  store i32 1, i32* %9, align 4
  br label %70

70:                                               ; preds = %69, %65
  %71 = load i8*, i8** @input_line_pointer, align 8
  %72 = call i32 @strneq(i8* %71, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 2)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %70
  %75 = load i8*, i8** @input_line_pointer, align 8
  %76 = call i32 @strneq(i8* %75, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 2)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %74, %70
  store i32 1, i32* %8, align 4
  br label %79

79:                                               ; preds = %78, %74
  %80 = load i8*, i8** @input_line_pointer, align 8
  %81 = call i32 @strneq(i8* %80, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 2)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %79
  %84 = load i8*, i8** @input_line_pointer, align 8
  %85 = call i32 @strneq(i8* %84, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32 2)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %83, %79
  store i32 1, i32* %7, align 4
  br label %88

88:                                               ; preds = %87, %83
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  switch i32 %91, label %331 [
    i32 132, label %92
    i32 131, label %115
    i32 129, label %173
    i32 128, label %186
    i32 133, label %213
    i32 130, label %289
  ]

92:                                               ; preds = %88
  %93 = load i32, i32* @LD_STOR_INS, align 4
  %94 = call i32 @IS_INSN_TYPE(i32 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %100, label %96

96:                                               ; preds = %92
  %97 = load i32, i32* @CSTBIT_INS, align 4
  %98 = call i32 @IS_INSN_TYPE(i32 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %114

100:                                              ; preds = %96, %92
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = icmp eq i32 %103, 20
  br i1 %104, label %105, label %109

105:                                              ; preds = %100
  %106 = load i8*, i8** @BFD_RELOC_CR16_REGREL20, align 8
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 1
  store i8* %106, i8** %108, align 8
  br label %113

109:                                              ; preds = %100
  %110 = load i8*, i8** @BFD_RELOC_CR16_REGREL20a, align 8
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 1
  store i8* %110, i8** %112, align 8
  br label %113

113:                                              ; preds = %109, %105
  br label %114

114:                                              ; preds = %113, %96
  br label %332

115:                                              ; preds = %88
  %116 = load i32, i32* @LD_STOR_INS, align 4
  %117 = call i32 @IS_INSN_TYPE(i32 %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %123, label %119

119:                                              ; preds = %115
  %120 = load i32, i32* @CSTBIT_INS, align 4
  %121 = call i32 @IS_INSN_TYPE(i32 %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %172

123:                                              ; preds = %119, %115
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** @instruction, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  switch i32 %126, label %170 [
    i32 1, label %127
    i32 2, label %152
    i32 3, label %156
  ]

127:                                              ; preds = %123
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  switch i32 %130, label %150 [
    i32 0, label %131
    i32 4, label %135
  ]

131:                                              ; preds = %127
  %132 = load i8*, i8** @BFD_RELOC_CR16_REGREL0, align 8
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 1
  store i8* %132, i8** %134, align 8
  br label %151

135:                                              ; preds = %127
  %136 = call i32 @IS_INSN_MNEMONIC(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %141, label %138

138:                                              ; preds = %135
  %139 = call i32 @IS_INSN_MNEMONIC(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %138, %135
  %142 = load i8*, i8** @BFD_RELOC_CR16_REGREL4, align 8
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 1
  store i8* %142, i8** %144, align 8
  br label %149

145:                                              ; preds = %138
  %146 = load i8*, i8** @BFD_RELOC_CR16_REGREL4a, align 8
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 1
  store i8* %146, i8** %148, align 8
  br label %149

149:                                              ; preds = %145, %141
  br label %151

150:                                              ; preds = %127
  br label %151

151:                                              ; preds = %150, %149, %131
  br label %171

152:                                              ; preds = %123
  %153 = load i8*, i8** @BFD_RELOC_CR16_REGREL16, align 8
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 1
  store i8* %153, i8** %155, align 8
  br label %171

156:                                              ; preds = %123
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = icmp eq i32 %159, 20
  br i1 %160, label %161, label %165

161:                                              ; preds = %156
  %162 = load i8*, i8** @BFD_RELOC_CR16_REGREL20, align 8
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 1
  store i8* %162, i8** %164, align 8
  br label %169

165:                                              ; preds = %156
  %166 = load i8*, i8** @BFD_RELOC_CR16_REGREL20a, align 8
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 1
  store i8* %166, i8** %168, align 8
  br label %169

169:                                              ; preds = %165, %161
  br label %171

170:                                              ; preds = %123
  br label %171

171:                                              ; preds = %170, %169, %152, %151
  br label %172

172:                                              ; preds = %171, %119
  br label %332

173:                                              ; preds = %88
  %174 = load i32, i32* @LD_STOR_INS, align 4
  %175 = call i32 @IS_INSN_TYPE(i32 %174)
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %181, label %177

177:                                              ; preds = %173
  %178 = load i32, i32* @CSTBIT_INS, align 4
  %179 = call i32 @IS_INSN_TYPE(i32 %178)
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %177, %173
  %182 = load i8*, i8** @BFD_RELOC_CR16_REGREL20, align 8
  %183 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 1
  store i8* %182, i8** %184, align 8
  br label %185

185:                                              ; preds = %181, %177
  br label %332

186:                                              ; preds = %88
  %187 = load i32, i32* @LD_STOR_INS, align 4
  %188 = call i32 @IS_INSN_TYPE(i32 %187)
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %194, label %190

190:                                              ; preds = %186
  %191 = load i32, i32* @CSTBIT_INS, align 4
  %192 = call i32 @IS_INSN_TYPE(i32 %191)
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %212

194:                                              ; preds = %190, %186
  %195 = load %struct.TYPE_8__*, %struct.TYPE_8__** @instruction, align 8
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  switch i32 %197, label %210 [
    i32 1, label %198
    i32 2, label %202
    i32 3, label %206
  ]

198:                                              ; preds = %194
  %199 = load i8*, i8** @BFD_RELOC_CR16_REGREL0, align 8
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 1
  store i8* %199, i8** %201, align 8
  br label %211

202:                                              ; preds = %194
  %203 = load i8*, i8** @BFD_RELOC_CR16_REGREL14, align 8
  %204 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 1
  store i8* %203, i8** %205, align 8
  br label %211

206:                                              ; preds = %194
  %207 = load i8*, i8** @BFD_RELOC_CR16_REGREL20, align 8
  %208 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 1
  store i8* %207, i8** %209, align 8
  br label %211

210:                                              ; preds = %194
  br label %211

211:                                              ; preds = %210, %206, %202, %198
  br label %212

212:                                              ; preds = %211, %190
  br label %332

213:                                              ; preds = %88
  %214 = call i32 @IS_INSN_MNEMONIC(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %220

216:                                              ; preds = %213
  %217 = load i8*, i8** @BFD_RELOC_CR16_DISP24, align 8
  %218 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i32 0, i32 1
  store i8* %217, i8** %219, align 8
  br label %288

220:                                              ; preds = %213
  %221 = load i32, i32* @BRANCH_INS, align 4
  %222 = call i32 @IS_INSN_TYPE(i32 %221)
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %244

224:                                              ; preds = %220
  %225 = load i32, i32* %7, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %231

227:                                              ; preds = %224
  %228 = load i8*, i8** @BFD_RELOC_CR16_DISP8, align 8
  %229 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %230 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %229, i32 0, i32 1
  store i8* %228, i8** %230, align 8
  br label %243

231:                                              ; preds = %224
  %232 = load i32, i32* %8, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %238

234:                                              ; preds = %231
  %235 = load i8*, i8** @BFD_RELOC_CR16_DISP16, align 8
  %236 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %237 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %236, i32 0, i32 1
  store i8* %235, i8** %237, align 8
  br label %242

238:                                              ; preds = %231
  %239 = load i8*, i8** @BFD_RELOC_CR16_DISP24, align 8
  %240 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %241 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %240, i32 0, i32 1
  store i8* %239, i8** %241, align 8
  br label %242

242:                                              ; preds = %238, %234
  br label %243

243:                                              ; preds = %242, %227
  br label %287

244:                                              ; preds = %220
  %245 = load i32, i32* @STOR_IMM_INS, align 4
  %246 = call i32 @IS_INSN_TYPE(i32 %245)
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %256, label %248

248:                                              ; preds = %244
  %249 = load i32, i32* @LD_STOR_INS, align 4
  %250 = call i32 @IS_INSN_TYPE(i32 %249)
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %256, label %252

252:                                              ; preds = %248
  %253 = load i32, i32* @CSTBIT_INS, align 4
  %254 = call i32 @IS_INSN_TYPE(i32 %253)
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %277

256:                                              ; preds = %252, %248, %244
  %257 = load i32, i32* %7, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %265

259:                                              ; preds = %256
  %260 = call i32 @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i64 0, i64 0))
  %261 = load i32, i32* @cur_arg_num, align 4
  %262 = add nsw i32 %261, 1
  %263 = load i8*, i8** %3, align 8
  %264 = call i32 (i32, ...) @as_bad(i32 %260, i32 %262, i8* %263)
  br label %265

265:                                              ; preds = %259, %256
  %266 = load i32, i32* %8, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %272

268:                                              ; preds = %265
  %269 = load i8*, i8** @BFD_RELOC_CR16_ABS20, align 8
  %270 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %271 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %270, i32 0, i32 1
  store i8* %269, i8** %271, align 8
  br label %276

272:                                              ; preds = %265
  %273 = load i8*, i8** @BFD_RELOC_CR16_ABS24, align 8
  %274 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %275 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %274, i32 0, i32 1
  store i8* %273, i8** %275, align 8
  br label %276

276:                                              ; preds = %272, %268
  br label %286

277:                                              ; preds = %252
  %278 = load i32, i32* @BRANCH_NEQ_INS, align 4
  %279 = call i32 @IS_INSN_TYPE(i32 %278)
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %285

281:                                              ; preds = %277
  %282 = load i8*, i8** @BFD_RELOC_CR16_DISP4, align 8
  %283 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %284 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %283, i32 0, i32 1
  store i8* %282, i8** %284, align 8
  br label %285

285:                                              ; preds = %281, %277
  br label %286

286:                                              ; preds = %285, %276
  br label %287

287:                                              ; preds = %286, %243
  br label %288

288:                                              ; preds = %287, %216
  br label %332

289:                                              ; preds = %88
  %290 = load i32, i32* @ARITH_INS, align 4
  %291 = call i32 @IS_INSN_TYPE(i32 %290)
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %321

293:                                              ; preds = %289
  %294 = load i32, i32* %7, align 4
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %300

296:                                              ; preds = %293
  %297 = load i8*, i8** @BFD_RELOC_CR16_IMM4, align 8
  %298 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %299 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %298, i32 0, i32 1
  store i8* %297, i8** %299, align 8
  br label %320

300:                                              ; preds = %293
  %301 = load i32, i32* %8, align 4
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %307

303:                                              ; preds = %300
  %304 = load i8*, i8** @BFD_RELOC_CR16_IMM20, align 8
  %305 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %306 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %305, i32 0, i32 1
  store i8* %304, i8** %306, align 8
  br label %319

307:                                              ; preds = %300
  %308 = load i32, i32* %6, align 4
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %314

310:                                              ; preds = %307
  %311 = load i8*, i8** @BFD_RELOC_CR16_IMM32a, align 8
  %312 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %313 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %312, i32 0, i32 1
  store i8* %311, i8** %313, align 8
  br label %318

314:                                              ; preds = %307
  %315 = load i8*, i8** @BFD_RELOC_CR16_IMM32, align 8
  %316 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %317 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %316, i32 0, i32 1
  store i8* %315, i8** %317, align 8
  br label %318

318:                                              ; preds = %314, %310
  br label %319

319:                                              ; preds = %318, %303
  br label %320

320:                                              ; preds = %319, %296
  br label %330

321:                                              ; preds = %289
  %322 = load i32, i32* @ARITH_BYTE_INS, align 4
  %323 = call i32 @IS_INSN_TYPE(i32 %322)
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %329

325:                                              ; preds = %321
  %326 = load i8*, i8** @BFD_RELOC_CR16_IMM16, align 8
  %327 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %328 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %327, i32 0, i32 1
  store i8* %326, i8** %328, align 8
  br label %329

329:                                              ; preds = %325, %321
  br label %330

330:                                              ; preds = %329, %320
  br label %332

331:                                              ; preds = %88
  br label %332

332:                                              ; preds = %331, %330, %288, %212, %185, %172, %114
  br label %340

333:                                              ; preds = %2
  %334 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %335 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %334, i32 0, i32 0
  %336 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %335, i32 0, i32 0
  %337 = load i32, i32* %336, align 8
  %338 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %339 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %338, i32 0, i32 0
  store i32 %337, i32* %339, align 4
  br label %340

340:                                              ; preds = %333, %332, %42
  %341 = load i8*, i8** %5, align 8
  store i8* %341, i8** @input_line_pointer, align 8
  ret void
}

declare dso_local i32 @expression(%struct.TYPE_9__*) #1

declare dso_local i32 @as_bad(i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @strneq(i8*, i8*, i32) #1

declare dso_local i32 @IS_INSN_TYPE(i32) #1

declare dso_local i32 @IS_INSN_MNEMONIC(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
