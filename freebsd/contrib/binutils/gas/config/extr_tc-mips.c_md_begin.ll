; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mips.c_md_begin.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mips.c_md_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i8*, i64, i32, i32, i8* }
%struct.TYPE_18__ = type { i32, i32* }
%struct.TYPE_17__ = type { i32, i64 }
%struct.TYPE_16__ = type { i32, i64 }
%struct.TYPE_15__ = type { i32, i64 }

@mips_pic = common dso_local global i64 0, align 8
@NO_PIC = common dso_local global i64 0, align 8
@g_switch_seen = common dso_local global i64 0, align 8
@g_switch_value = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"-G may not be used in position-independent code\00", align 1
@stdoutput = common dso_local global i32 0, align 4
@bfd_arch_mips = common dso_local global i32 0, align 4
@file_mips_arch = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Could not set architecture and machine\00", align 1
@op_hash = common dso_local global i32 0, align 4
@NUMOPCODES = common dso_local global i32 0, align 4
@mips_opcodes = common dso_local global %struct.TYPE_14__* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"internal error: can't hash `%s': %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"Broken assembler.  No assembly attempted.\00", align 1
@INSN_MACRO = common dso_local global i64 0, align 8
@nop_insn = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@.str.4 = private unnamed_addr constant [4 x i8] c"nop\00", align 1
@mips16_op_hash = common dso_local global i32 0, align 4
@bfd_mips16_num_opcodes = common dso_local global i32 0, align 4
@mips16_opcodes = common dso_local global %struct.TYPE_14__* null, align 8
@.str.5 = private unnamed_addr constant [30 x i8] c"internal: can't hash `%s': %s\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"internal error: bad mips16 opcode: %s %s\0A\00", align 1
@mips16_nop_insn = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@reg_names = common dso_local global %struct.TYPE_17__* null, align 8
@reg_section = common dso_local global i32 0, align 4
@zero_address_frag = common dso_local global i32 0, align 4
@HAVE_NEWABI = common dso_local global i64 0, align 8
@reg_names_n32n64 = common dso_local global %struct.TYPE_16__* null, align 8
@reg_names_o32 = common dso_local global %struct.TYPE_15__* null, align 8
@mips_gprmask = common dso_local global i64 0, align 8
@mips_cprmask = common dso_local global i64* null, align 8
@text_section = common dso_local global i32 0, align 4
@ECOFF_DEBUGGING = common dso_local global i64 0, align 8
@mips_fix_vr4120 = common dso_local global i64 0, align 8
@IS_ELF = common dso_local global i64 0, align 8
@N64_ABI = common dso_local global i64 0, align 8
@ODK_REGINFO = common dso_local global i32 0, align 4
@SEC_ALLOC = common dso_local global i32 0, align 4
@SEC_DATA = common dso_local global i32 0, align 4
@SEC_DEBUGGING = common dso_local global i32 0, align 4
@SEC_HAS_CONTENTS = common dso_local global i32 0, align 4
@SEC_LOAD = common dso_local global i32 0, align 4
@SEC_READONLY = common dso_local global i32 0, align 4
@SEC_RELOC = common dso_local global i32 0, align 4
@TARGET_OS = common dso_local global i8* null, align 8
@bss_section = common dso_local global i32 0, align 4
@data_section = common dso_local global i32 0, align 4
@mips_abi = common dso_local global i64 0, align 8
@mips_flag_pdr = common dso_local global i64 0, align 8
@mips_regmask_frag = common dso_local global i8* null, align 8
@now_seg = common dso_local global i32 0, align 4
@now_subseg = common dso_local global i32 0, align 4
@pdr_seg = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @md_begin() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* null, i8** %1, align 8
  store i32 0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %6 = load i64, i64* @mips_pic, align 8
  %7 = load i64, i64* @NO_PIC, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %19

9:                                                ; preds = %0
  %10 = load i64, i64* @g_switch_seen, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %9
  %13 = load i64, i64* @g_switch_value, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = call i8* @_(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %17 = call i32 @as_bad(i8* %16)
  br label %18

18:                                               ; preds = %15, %12, %9
  store i64 0, i64* @g_switch_value, align 8
  br label %19

19:                                               ; preds = %18, %0
  %20 = load i32, i32* @stdoutput, align 4
  %21 = load i32, i32* @bfd_arch_mips, align 4
  %22 = load i32, i32* @file_mips_arch, align 4
  %23 = call i32 @bfd_set_arch_mach(i32 %20, i32 %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %19
  %26 = call i8* @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %27 = call i32 @as_warn(i8* %26)
  br label %28

28:                                               ; preds = %25, %19
  %29 = call i32 (...) @hash_new()
  store i32 %29, i32* @op_hash, align 4
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %116, %28
  %31 = load i32, i32* %2, align 4
  %32 = load i32, i32* @NUMOPCODES, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %117

34:                                               ; preds = %30
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** @mips_opcodes, align 8
  %36 = load i32, i32* %2, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  store i8* %40, i8** %4, align 8
  %41 = load i32, i32* @op_hash, align 4
  %42 = load i8*, i8** %4, align 8
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** @mips_opcodes, align 8
  %44 = load i32, i32* %2, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i64 %45
  %47 = bitcast %struct.TYPE_14__* %46 to i8*
  %48 = call i8* @hash_insert(i32 %41, i8* %42, i8* %47)
  store i8* %48, i8** %1, align 8
  %49 = load i8*, i8** %1, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %64

51:                                               ; preds = %34
  %52 = load i32, i32* @stderr, align 4
  %53 = call i8* @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** @mips_opcodes, align 8
  %55 = load i32, i32* %2, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = load i8*, i8** %1, align 8
  %61 = call i32 @fprintf(i32 %52, i8* %53, i8* %59, i8* %60)
  %62 = call i8* @_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  %63 = call i32 (i8*, ...) @as_fatal(i8* %62)
  br label %64

64:                                               ; preds = %51, %34
  br label %65

65:                                               ; preds = %114, %64
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** @mips_opcodes, align 8
  %67 = load i32, i32* %2, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @INSN_MACRO, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %96

74:                                               ; preds = %65
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** @mips_opcodes, align 8
  %76 = load i32, i32* %2, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i64 %77
  %79 = call i32 @validate_mips_insn(%struct.TYPE_14__* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %74
  store i32 1, i32* %3, align 4
  br label %82

82:                                               ; preds = %81, %74
  %83 = load i32*, i32** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @nop_insn, i32 0, i32 1), align 8
  %84 = icmp eq i32* %83, null
  br i1 %84, label %85, label %95

85:                                               ; preds = %82
  %86 = load i8*, i8** %4, align 8
  %87 = call i64 @strcmp(i8* %86, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %85
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** @mips_opcodes, align 8
  %91 = load i32, i32* %2, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i64 %92
  %94 = call i32 @create_insn(%struct.TYPE_18__* @nop_insn, %struct.TYPE_14__* %93)
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @nop_insn, i32 0, i32 0), align 8
  br label %95

95:                                               ; preds = %89, %85, %82
  br label %96

96:                                               ; preds = %95, %65
  %97 = load i32, i32* %2, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %2, align 4
  br label %99

99:                                               ; preds = %96
  %100 = load i32, i32* %2, align 4
  %101 = load i32, i32* @NUMOPCODES, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %114

103:                                              ; preds = %99
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** @mips_opcodes, align 8
  %105 = load i32, i32* %2, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8
  %110 = load i8*, i8** %4, align 8
  %111 = call i64 @strcmp(i8* %109, i8* %110)
  %112 = icmp ne i64 %111, 0
  %113 = xor i1 %112, true
  br label %114

114:                                              ; preds = %103, %99
  %115 = phi i1 [ false, %99 ], [ %113, %103 ]
  br i1 %115, label %65, label %116

116:                                              ; preds = %114
  br label %30

117:                                              ; preds = %30
  %118 = call i32 (...) @hash_new()
  store i32 %118, i32* @mips16_op_hash, align 4
  store i32 0, i32* %2, align 4
  br label %119

119:                                              ; preds = %229, %117
  %120 = load i32, i32* %2, align 4
  %121 = load i32, i32* @bfd_mips16_num_opcodes, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %123, label %230

123:                                              ; preds = %119
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** @mips16_opcodes, align 8
  %125 = load i32, i32* %2, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 0
  %129 = load i8*, i8** %128, align 8
  store i8* %129, i8** %5, align 8
  %130 = load i32, i32* @mips16_op_hash, align 4
  %131 = load i8*, i8** %5, align 8
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** @mips16_opcodes, align 8
  %133 = load i32, i32* %2, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i64 %134
  %136 = bitcast %struct.TYPE_14__* %135 to i8*
  %137 = call i8* @hash_insert(i32 %130, i8* %131, i8* %136)
  store i8* %137, i8** %1, align 8
  %138 = load i8*, i8** %1, align 8
  %139 = icmp ne i8* %138, null
  br i1 %139, label %140, label %150

140:                                              ; preds = %123
  %141 = call i8* @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** @mips16_opcodes, align 8
  %143 = load i32, i32* %2, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 0
  %147 = load i8*, i8** %146, align 8
  %148 = load i8*, i8** %1, align 8
  %149 = call i32 (i8*, ...) @as_fatal(i8* %141, i8* %147, i8* %148)
  br label %150

150:                                              ; preds = %140, %123
  br label %151

151:                                              ; preds = %227, %150
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** @mips16_opcodes, align 8
  %153 = load i32, i32* %2, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @INSN_MACRO, align 8
  %159 = icmp ne i64 %157, %158
  br i1 %159, label %160, label %197

160:                                              ; preds = %151
  %161 = load %struct.TYPE_14__*, %struct.TYPE_14__** @mips16_opcodes, align 8
  %162 = load i32, i32* %2, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.TYPE_14__*, %struct.TYPE_14__** @mips16_opcodes, align 8
  %168 = load i32, i32* %2, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 4
  %173 = and i32 %166, %172
  %174 = load %struct.TYPE_14__*, %struct.TYPE_14__** @mips16_opcodes, align 8
  %175 = load i32, i32* %2, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %174, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = icmp ne i32 %173, %179
  br i1 %180, label %181, label %197

181:                                              ; preds = %160
  %182 = load i32, i32* @stderr, align 4
  %183 = call i8* @_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0))
  %184 = load %struct.TYPE_14__*, %struct.TYPE_14__** @mips16_opcodes, align 8
  %185 = load i32, i32* %2, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %184, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %187, i32 0, i32 0
  %189 = load i8*, i8** %188, align 8
  %190 = load %struct.TYPE_14__*, %struct.TYPE_14__** @mips16_opcodes, align 8
  %191 = load i32, i32* %2, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %190, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %193, i32 0, i32 4
  %195 = load i8*, i8** %194, align 8
  %196 = call i32 @fprintf(i32 %182, i8* %183, i8* %189, i8* %195)
  store i32 1, i32* %3, align 4
  br label %197

197:                                              ; preds = %181, %160, %151
  %198 = load i32*, i32** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @mips16_nop_insn, i32 0, i32 1), align 8
  %199 = icmp eq i32* %198, null
  br i1 %199, label %200, label %210

200:                                              ; preds = %197
  %201 = load i8*, i8** %5, align 8
  %202 = call i64 @strcmp(i8* %201, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %203 = icmp eq i64 %202, 0
  br i1 %203, label %204, label %210

204:                                              ; preds = %200
  %205 = load %struct.TYPE_14__*, %struct.TYPE_14__** @mips16_opcodes, align 8
  %206 = load i32, i32* %2, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %205, i64 %207
  %209 = call i32 @create_insn(%struct.TYPE_18__* @mips16_nop_insn, %struct.TYPE_14__* %208)
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @mips16_nop_insn, i32 0, i32 0), align 8
  br label %210

210:                                              ; preds = %204, %200, %197
  %211 = load i32, i32* %2, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %2, align 4
  br label %213

213:                                              ; preds = %210
  %214 = load i32, i32* %2, align 4
  %215 = load i32, i32* @bfd_mips16_num_opcodes, align 4
  %216 = icmp slt i32 %214, %215
  br i1 %216, label %217, label %227

217:                                              ; preds = %213
  %218 = load %struct.TYPE_14__*, %struct.TYPE_14__** @mips16_opcodes, align 8
  %219 = load i32, i32* %2, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %218, i64 %220
  %222 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %221, i32 0, i32 0
  %223 = load i8*, i8** %222, align 8
  %224 = load i8*, i8** %5, align 8
  %225 = call i64 @strcmp(i8* %223, i8* %224)
  %226 = icmp eq i64 %225, 0
  br label %227

227:                                              ; preds = %217, %213
  %228 = phi i1 [ false, %213 ], [ %226, %217 ]
  br i1 %228, label %151, label %229

229:                                              ; preds = %227
  br label %119

230:                                              ; preds = %119
  %231 = load i32, i32* %3, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %236

233:                                              ; preds = %230
  %234 = call i8* @_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  %235 = call i32 (i8*, ...) @as_fatal(i8* %234)
  br label %236

236:                                              ; preds = %233, %230
  store i32 0, i32* %2, align 4
  br label %237

237:                                              ; preds = %261, %236
  %238 = load %struct.TYPE_17__*, %struct.TYPE_17__** @reg_names, align 8
  %239 = load i32, i32* %2, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %238, i64 %240
  %242 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %241, i32 0, i32 1
  %243 = load i64, i64* %242, align 8
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %264

245:                                              ; preds = %237
  %246 = load %struct.TYPE_17__*, %struct.TYPE_17__** @reg_names, align 8
  %247 = load i32, i32* %2, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %246, i64 %248
  %250 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %249, i32 0, i32 1
  %251 = load i64, i64* %250, align 8
  %252 = load i32, i32* @reg_section, align 4
  %253 = load %struct.TYPE_17__*, %struct.TYPE_17__** @reg_names, align 8
  %254 = load i32, i32* %2, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %253, i64 %255
  %257 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = call i32 @symbol_new(i64 %251, i32 %252, i32 %258, i32* @zero_address_frag)
  %260 = call i32 @symbol_table_insert(i32 %259)
  br label %261

261:                                              ; preds = %245
  %262 = load i32, i32* %2, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %2, align 4
  br label %237

264:                                              ; preds = %237
  %265 = load i64, i64* @HAVE_NEWABI, align 8
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %296

267:                                              ; preds = %264
  store i32 0, i32* %2, align 4
  br label %268

268:                                              ; preds = %292, %267
  %269 = load %struct.TYPE_16__*, %struct.TYPE_16__** @reg_names_n32n64, align 8
  %270 = load i32, i32* %2, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %269, i64 %271
  %273 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %272, i32 0, i32 1
  %274 = load i64, i64* %273, align 8
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %295

276:                                              ; preds = %268
  %277 = load %struct.TYPE_16__*, %struct.TYPE_16__** @reg_names_n32n64, align 8
  %278 = load i32, i32* %2, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %277, i64 %279
  %281 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %280, i32 0, i32 1
  %282 = load i64, i64* %281, align 8
  %283 = load i32, i32* @reg_section, align 4
  %284 = load %struct.TYPE_16__*, %struct.TYPE_16__** @reg_names_n32n64, align 8
  %285 = load i32, i32* %2, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %284, i64 %286
  %288 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 8
  %290 = call i32 @symbol_new(i64 %282, i32 %283, i32 %289, i32* @zero_address_frag)
  %291 = call i32 @symbol_table_insert(i32 %290)
  br label %292

292:                                              ; preds = %276
  %293 = load i32, i32* %2, align 4
  %294 = add nsw i32 %293, 1
  store i32 %294, i32* %2, align 4
  br label %268

295:                                              ; preds = %268
  br label %325

296:                                              ; preds = %264
  store i32 0, i32* %2, align 4
  br label %297

297:                                              ; preds = %321, %296
  %298 = load %struct.TYPE_15__*, %struct.TYPE_15__** @reg_names_o32, align 8
  %299 = load i32, i32* %2, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %298, i64 %300
  %302 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %301, i32 0, i32 1
  %303 = load i64, i64* %302, align 8
  %304 = icmp ne i64 %303, 0
  br i1 %304, label %305, label %324

305:                                              ; preds = %297
  %306 = load %struct.TYPE_15__*, %struct.TYPE_15__** @reg_names_o32, align 8
  %307 = load i32, i32* %2, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %306, i64 %308
  %310 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %309, i32 0, i32 1
  %311 = load i64, i64* %310, align 8
  %312 = load i32, i32* @reg_section, align 4
  %313 = load %struct.TYPE_15__*, %struct.TYPE_15__** @reg_names_o32, align 8
  %314 = load i32, i32* %2, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %313, i64 %315
  %317 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 8
  %319 = call i32 @symbol_new(i64 %311, i32 %312, i32 %318, i32* @zero_address_frag)
  %320 = call i32 @symbol_table_insert(i32 %319)
  br label %321

321:                                              ; preds = %305
  %322 = load i32, i32* %2, align 4
  %323 = add nsw i32 %322, 1
  store i32 %323, i32* %2, align 4
  br label %297

324:                                              ; preds = %297
  br label %325

325:                                              ; preds = %324, %295
  %326 = call i32 (...) @mips_no_prev_insn()
  store i64 0, i64* @mips_gprmask, align 8
  %327 = load i64*, i64** @mips_cprmask, align 8
  %328 = getelementptr inbounds i64, i64* %327, i64 0
  store i64 0, i64* %328, align 8
  %329 = load i64*, i64** @mips_cprmask, align 8
  %330 = getelementptr inbounds i64, i64* %329, i64 1
  store i64 0, i64* %330, align 8
  %331 = load i64*, i64** @mips_cprmask, align 8
  %332 = getelementptr inbounds i64, i64* %331, i64 2
  store i64 0, i64* %332, align 8
  %333 = load i64*, i64** @mips_cprmask, align 8
  %334 = getelementptr inbounds i64, i64* %333, i64 3
  store i64 0, i64* %334, align 8
  %335 = load i32, i32* @text_section, align 4
  %336 = call i32 @record_alignment(i32 %335, i32 2)
  %337 = load i32, i32* @stdoutput, align 4
  %338 = load i64, i64* @g_switch_value, align 8
  %339 = call i32 @bfd_set_gp_size(i32 %337, i64 %338)
  %340 = load i64, i64* @ECOFF_DEBUGGING, align 8
  %341 = icmp ne i64 %340, 0
  br i1 %341, label %344, label %342

342:                                              ; preds = %325
  %343 = call i32 (...) @md_obj_begin()
  br label %344

344:                                              ; preds = %342, %325
  %345 = load i64, i64* @mips_fix_vr4120, align 8
  %346 = icmp ne i64 %345, 0
  br i1 %346, label %347, label %349

347:                                              ; preds = %344
  %348 = call i32 (...) @init_vr4120_conflicts()
  br label %349

349:                                              ; preds = %347, %344
  ret void
}

declare dso_local i32 @as_bad(i8*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @bfd_set_arch_mach(i32, i32, i32) #1

declare dso_local i32 @as_warn(i8*) #1

declare dso_local i32 @hash_new(...) #1

declare dso_local i8* @hash_insert(i32, i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

declare dso_local i32 @as_fatal(i8*, ...) #1

declare dso_local i32 @validate_mips_insn(%struct.TYPE_14__*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @create_insn(%struct.TYPE_18__*, %struct.TYPE_14__*) #1

declare dso_local i32 @symbol_table_insert(i32) #1

declare dso_local i32 @symbol_new(i64, i32, i32, i32*) #1

declare dso_local i32 @mips_no_prev_insn(...) #1

declare dso_local i32 @record_alignment(i32, i32) #1

declare dso_local i32 @bfd_set_gp_size(i32, i64) #1

declare dso_local i32 @md_obj_begin(...) #1

declare dso_local i32 @init_vr4120_conflicts(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
