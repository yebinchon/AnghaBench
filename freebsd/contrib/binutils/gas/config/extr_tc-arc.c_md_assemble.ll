; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arc.c_md_assemble.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arc.c_md_assemble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arc_opcode = type { i64, i8*, i32 }
%struct.arc_operand = type { i32, i64, i64 (i64, %struct.arc_operand*, i32, %struct.arc_operand_value*, i64, i8**)*, i64, i32 }
%struct.arc_operand_value = type { i64, i64, i32 }
%struct.TYPE_10__ = type { i8* }
%struct.TYPE_9__ = type { i64, i64 }
%struct.arc_fixup = type { i64, %struct.TYPE_9__ }

@md_assemble.init_tables_p = internal global i32 0, align 4
@arc_mach_type = common dso_local global i64 0, align 8
@arc_ext_opcodes = common dso_local global %struct.arc_opcode* null, align 8
@MAX_FIXUPS = common dso_local global i32 0, align 4
@MAX_SUFFIXES = common dso_local global i32 0, align 4
@arc_operands = common dso_local global %struct.arc_operand* null, align 8
@arc_operand_map = common dso_local global i64* null, align 8
@ARC_MOD_BITS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"unknown syntax format character `%c'\00", align 1
@ARC_OPERAND_FAKE = common dso_local global i32 0, align 4
@ARC_OPERAND_ERROR = common dso_local global i32 0, align 4
@ARC_OPERAND_WARN = common dso_local global i32 0, align 4
@ARC_OPERAND_LIMM = common dso_local global i32 0, align 4
@ARC_OPERAND_ABSOLUTE_BRANCH = common dso_local global i32 0, align 4
@ARC_OPERAND_ADDRESS = common dso_local global i32 0, align 4
@ARC_OPERAND_SUFFIX = common dso_local global i32 0, align 4
@ARC_MOD_DOT = common dso_local global i32 0, align 4
@arc_suffix_hash = common dso_local global i32 0, align 4
@arc_suffixes = common dso_local global %struct.arc_operand_value* null, align 8
@arc_suffixes_count = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"too many suffixes\00", align 1
@is_end_of_line = common dso_local global i64* null, align 8
@input_line_pointer = common dso_local global i8* null, align 8
@O_illegal = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"illegal operand\00", align 1
@O_absent = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@O_constant = common dso_local global i64 0, align 8
@O_register = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [31 x i8] c"symbol as destination register\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"@h30\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"too many fixups\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"junk at end of line: `%s'\00", align 1
@md_assemble.in_delay_slot_p = internal global i32 0, align 4
@md_assemble.prev_insn_needs_cc_nop_p = internal global i32 0, align 4
@ARC_DELAY_NONE = common dso_local global i32 0, align 4
@ARC_OPCODE_COND_BRANCH = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [33 x i8] c"8 byte instruction in delay slot\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"8 byte jump instruction with delay slot\00", align 1
@bfd_mach_arc_5 = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [40 x i8] c"conditional branch follows set of flags\00", align 1
@BFD_RELOC_32 = common dso_local global i32 0, align 4
@BFD_RELOC_ARC_B26 = common dso_local global i32 0, align 4
@BFD_RELOC_UNUSED = common dso_local global i64 0, align 8
@frag_now = common dso_local global %struct.TYPE_10__* null, align 8
@ARC_OPERAND_RELATIVE_BRANCH = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [21 x i8] c"bad instruction `%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @md_assemble(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.arc_opcode*, align 8
  %4 = alloca %struct.arc_opcode*, align 8
  %5 = alloca %struct.arc_opcode*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.arc_operand*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i8, align 1
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca %struct.arc_operand_value*, align 8
  %28 = alloca %struct.arc_operand_value*, align 8
  %29 = alloca %struct.arc_operand_value*, align 8
  %30 = alloca i8*, align 8
  %31 = alloca %struct.arc_operand_value*, align 8
  %32 = alloca i64, align 8
  %33 = alloca %struct.TYPE_9__, align 8
  %34 = alloca i8*, align 8
  %35 = alloca i8*, align 8
  %36 = alloca i32, align 4
  %37 = alloca i8*, align 8
  %38 = alloca i64, align 8
  %39 = alloca i64, align 8
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca %struct.TYPE_9__, align 8
  %47 = alloca %struct.arc_operand*, align 8
  store i8* %0, i8** %2, align 8
  store i8* null, i8** %7, align 8
  %48 = load i32, i32* @md_assemble.init_tables_p, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %1
  %51 = load i64, i64* @arc_mach_type, align 8
  %52 = call i32 @init_opcode_tables(i64 %51)
  store i32 1, i32* @md_assemble.init_tables_p, align 4
  br label %53

53:                                               ; preds = %50, %1
  br label %54

54:                                               ; preds = %59, %53
  %55 = load i8*, i8** %2, align 8
  %56 = load i8, i8* %55, align 1
  %57 = call i64 @ISSPACE(i8 signext %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load i8*, i8** %2, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %2, align 8
  br label %54

62:                                               ; preds = %54
  %63 = load %struct.arc_opcode*, %struct.arc_opcode** @arc_ext_opcodes, align 8
  store %struct.arc_opcode* %63, %struct.arc_opcode** %5, align 8
  %64 = load i8*, i8** %2, align 8
  %65 = call %struct.arc_opcode* @arc_opcode_lookup_asm(i8* %64)
  store %struct.arc_opcode* %65, %struct.arc_opcode** %4, align 8
  %66 = load i8*, i8** %2, align 8
  store i8* %66, i8** %6, align 8
  %67 = load %struct.arc_opcode*, %struct.arc_opcode** %5, align 8
  %68 = icmp ne %struct.arc_opcode* %67, null
  br i1 %68, label %69, label %71

69:                                               ; preds = %62
  %70 = load %struct.arc_opcode*, %struct.arc_opcode** %5, align 8
  br label %73

71:                                               ; preds = %62
  %72 = load %struct.arc_opcode*, %struct.arc_opcode** %4, align 8
  br label %73

73:                                               ; preds = %71, %69
  %74 = phi %struct.arc_opcode* [ %70, %69 ], [ %72, %71 ]
  store %struct.arc_opcode* %74, %struct.arc_opcode** %3, align 8
  br label %75

75:                                               ; preds = %976, %73
  %76 = load %struct.arc_opcode*, %struct.arc_opcode** %3, align 8
  %77 = icmp ne %struct.arc_opcode* %76, null
  br i1 %77, label %78, label %978

78:                                               ; preds = %75
  store i32 0, i32* %12, align 4
  %79 = load i32, i32* @MAX_FIXUPS, align 4
  %80 = zext i32 %79 to i64
  %81 = call i8* @llvm.stacksave()
  store i8* %81, i8** %14, align 8
  %82 = alloca %struct.arc_fixup, i64 %80, align 16
  store i64 %80, i64* %15, align 8
  %83 = load i32, i32* @MAX_SUFFIXES, align 4
  %84 = zext i32 %83 to i64
  %85 = alloca %struct.arc_operand_value*, i64 %84, align 16
  store i64 %84, i64* %18, align 8
  %86 = load %struct.arc_opcode*, %struct.arc_opcode** %3, align 8
  %87 = call i32 @arc_opcode_supported(%struct.arc_opcode* %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %78
  store i32 6, i32* %19, align 4
  br label %957

90:                                               ; preds = %78
  %91 = call i32 (...) @arc_opcode_init_insert()
  %92 = load %struct.arc_opcode*, %struct.arc_opcode** %3, align 8
  %93 = getelementptr inbounds %struct.arc_opcode, %struct.arc_opcode* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  store i64 %94, i64* %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %95 = load i8*, i8** %6, align 8
  store i8* %95, i8** %2, align 8
  %96 = load %struct.arc_opcode*, %struct.arc_opcode** %3, align 8
  %97 = getelementptr inbounds %struct.arc_opcode, %struct.arc_opcode* %96, i32 0, i32 1
  %98 = load i8*, i8** %97, align 8
  store i8* %98, i8** %13, align 8
  br label %99

99:                                               ; preds = %671, %312, %289, %135, %90
  %100 = load i8*, i8** %13, align 8
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %672

104:                                              ; preds = %99
  %105 = load i8*, i8** %13, align 8
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp ne i32 %107, 37
  br i1 %108, label %115, label %109

109:                                              ; preds = %104
  %110 = load i8*, i8** %13, align 8
  %111 = getelementptr inbounds i8, i8* %110, i32 1
  store i8* %111, i8** %13, align 8
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp eq i32 %113, 37
  br i1 %114, label %115, label %136

115:                                              ; preds = %109, %104
  %116 = load i8*, i8** %2, align 8
  %117 = load i8, i8* %116, align 1
  %118 = sext i8 %117 to i32
  %119 = load i8*, i8** %13, align 8
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  %122 = icmp eq i32 %118, %121
  br i1 %122, label %123, label %134

123:                                              ; preds = %115
  %124 = load i8*, i8** %13, align 8
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  %127 = icmp eq i32 %126, 32
  br i1 %127, label %128, label %129

128:                                              ; preds = %123
  store i32 1, i32* %9, align 4
  br label %129

129:                                              ; preds = %128, %123
  %130 = load i8*, i8** %13, align 8
  %131 = getelementptr inbounds i8, i8* %130, i32 1
  store i8* %131, i8** %13, align 8
  %132 = load i8*, i8** %2, align 8
  %133 = getelementptr inbounds i8, i8* %132, i32 1
  store i8* %133, i8** %2, align 8
  br label %135

134:                                              ; preds = %115
  br label %672

135:                                              ; preds = %129
  br label %99

136:                                              ; preds = %109
  store i32 0, i32* %20, align 4
  br label %137

137:                                              ; preds = %151, %136
  %138 = load %struct.arc_operand*, %struct.arc_operand** @arc_operands, align 8
  %139 = load i64*, i64** @arc_operand_map, align 8
  %140 = load i8*, i8** %13, align 8
  %141 = load i8, i8* %140, align 1
  %142 = sext i8 %141 to i32
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i64, i64* %139, i64 %143
  %145 = load i64, i64* %144, align 8
  %146 = getelementptr inbounds %struct.arc_operand, %struct.arc_operand* %138, i64 %145
  %147 = getelementptr inbounds %struct.arc_operand, %struct.arc_operand* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = call i64 @ARC_MOD_P(i32 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %169

151:                                              ; preds = %137
  %152 = load %struct.arc_operand*, %struct.arc_operand** @arc_operands, align 8
  %153 = load i64*, i64** @arc_operand_map, align 8
  %154 = load i8*, i8** %13, align 8
  %155 = load i8, i8* %154, align 1
  %156 = sext i8 %155 to i32
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i64, i64* %153, i64 %157
  %159 = load i64, i64* %158, align 8
  %160 = getelementptr inbounds %struct.arc_operand, %struct.arc_operand* %152, i64 %159
  %161 = getelementptr inbounds %struct.arc_operand, %struct.arc_operand* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* @ARC_MOD_BITS, align 4
  %164 = and i32 %162, %163
  %165 = load i32, i32* %20, align 4
  %166 = or i32 %165, %164
  store i32 %166, i32* %20, align 4
  %167 = load i8*, i8** %13, align 8
  %168 = getelementptr inbounds i8, i8* %167, i32 1
  store i8* %168, i8** %13, align 8
  br label %137

169:                                              ; preds = %137
  %170 = load %struct.arc_operand*, %struct.arc_operand** @arc_operands, align 8
  %171 = load i64*, i64** @arc_operand_map, align 8
  %172 = load i8*, i8** %13, align 8
  %173 = load i8, i8* %172, align 1
  %174 = sext i8 %173 to i32
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i64, i64* %171, i64 %175
  %177 = load i64, i64* %176, align 8
  %178 = getelementptr inbounds %struct.arc_operand, %struct.arc_operand* %170, i64 %177
  store %struct.arc_operand* %178, %struct.arc_operand** %21, align 8
  %179 = load %struct.arc_operand*, %struct.arc_operand** %21, align 8
  %180 = getelementptr inbounds %struct.arc_operand, %struct.arc_operand* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = icmp eq i64 %181, 0
  br i1 %182, label %183, label %188

183:                                              ; preds = %169
  %184 = load i8*, i8** %13, align 8
  %185 = load i8, i8* %184, align 1
  %186 = sext i8 %185 to i32
  %187 = call i32 (i8*, ...) @as_fatal(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %186)
  br label %188

188:                                              ; preds = %183, %169
  %189 = load %struct.arc_operand*, %struct.arc_operand** %21, align 8
  %190 = getelementptr inbounds %struct.arc_operand, %struct.arc_operand* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* @ARC_OPERAND_FAKE, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %272

195:                                              ; preds = %188
  store i8* null, i8** %22, align 8
  %196 = load %struct.arc_operand*, %struct.arc_operand** %21, align 8
  %197 = getelementptr inbounds %struct.arc_operand, %struct.arc_operand* %196, i32 0, i32 2
  %198 = load i64 (i64, %struct.arc_operand*, i32, %struct.arc_operand_value*, i64, i8**)*, i64 (i64, %struct.arc_operand*, i32, %struct.arc_operand_value*, i64, i8**)** %197, align 8
  %199 = icmp ne i64 (i64, %struct.arc_operand*, i32, %struct.arc_operand_value*, i64, i8**)* %198, null
  br i1 %199, label %200, label %269

200:                                              ; preds = %195
  %201 = load %struct.arc_operand*, %struct.arc_operand** %21, align 8
  %202 = getelementptr inbounds %struct.arc_operand, %struct.arc_operand* %201, i32 0, i32 2
  %203 = load i64 (i64, %struct.arc_operand*, i32, %struct.arc_operand_value*, i64, i8**)*, i64 (i64, %struct.arc_operand*, i32, %struct.arc_operand_value*, i64, i8**)** %202, align 8
  %204 = load i64, i64* %8, align 8
  %205 = load %struct.arc_operand*, %struct.arc_operand** %21, align 8
  %206 = load i32, i32* %20, align 4
  %207 = call i64 %203(i64 %204, %struct.arc_operand* %205, i32 %206, %struct.arc_operand_value* null, i64 0, i8** %22)
  store i64 %207, i64* %8, align 8
  %208 = load i8*, i8** %22, align 8
  %209 = icmp ne i8* %208, null
  br i1 %209, label %210, label %233

210:                                              ; preds = %200
  %211 = load i8*, i8** %22, align 8
  store i8* %211, i8** %7, align 8
  %212 = load %struct.arc_operand*, %struct.arc_operand** %21, align 8
  %213 = getelementptr inbounds %struct.arc_operand, %struct.arc_operand* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = load i32, i32* @ARC_OPERAND_ERROR, align 4
  %216 = and i32 %214, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %221

218:                                              ; preds = %210
  %219 = load i8*, i8** %22, align 8
  %220 = call i32 (i8*, ...) @as_bad(i8* %219)
  store i32 1, i32* %19, align 4
  br label %957

221:                                              ; preds = %210
  %222 = load %struct.arc_operand*, %struct.arc_operand** %21, align 8
  %223 = getelementptr inbounds %struct.arc_operand, %struct.arc_operand* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = load i32, i32* @ARC_OPERAND_WARN, align 4
  %226 = and i32 %224, %225
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %231

228:                                              ; preds = %221
  %229 = load i8*, i8** %22, align 8
  %230 = call i32 @as_warn(i8* %229)
  br label %231

231:                                              ; preds = %228, %221
  br label %232

232:                                              ; preds = %231
  br label %672

233:                                              ; preds = %200
  %234 = load i32, i32* %16, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %268

236:                                              ; preds = %233
  %237 = load %struct.arc_operand*, %struct.arc_operand** %21, align 8
  %238 = getelementptr inbounds %struct.arc_operand, %struct.arc_operand* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %268

241:                                              ; preds = %236
  %242 = load %struct.arc_operand*, %struct.arc_operand** %21, align 8
  %243 = getelementptr inbounds %struct.arc_operand, %struct.arc_operand* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = load i32, i32* @ARC_OPERAND_LIMM, align 4
  %246 = and i32 %244, %245
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %268

248:                                              ; preds = %241
  %249 = load %struct.arc_operand*, %struct.arc_operand** %21, align 8
  %250 = getelementptr inbounds %struct.arc_operand, %struct.arc_operand* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = load i32, i32* @ARC_OPERAND_ABSOLUTE_BRANCH, align 4
  %253 = load i32, i32* @ARC_OPERAND_ADDRESS, align 4
  %254 = or i32 %252, %253
  %255 = and i32 %251, %254
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %268

257:                                              ; preds = %248
  %258 = load i64*, i64** @arc_operand_map, align 8
  %259 = load %struct.arc_operand*, %struct.arc_operand** %21, align 8
  %260 = getelementptr inbounds %struct.arc_operand, %struct.arc_operand* %259, i32 0, i32 1
  %261 = load i64, i64* %260, align 8
  %262 = getelementptr inbounds i64, i64* %258, i64 %261
  %263 = load i64, i64* %262, align 8
  %264 = load i32, i32* %12, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds %struct.arc_fixup, %struct.arc_fixup* %82, i64 %265
  %267 = getelementptr inbounds %struct.arc_fixup, %struct.arc_fixup* %266, i32 0, i32 0
  store i64 %263, i64* %267, align 8
  br label %268

268:                                              ; preds = %257, %248, %241, %236, %233
  br label %269

269:                                              ; preds = %268, %195
  %270 = load i8*, i8** %13, align 8
  %271 = getelementptr inbounds i8, i8* %270, i32 1
  store i8* %271, i8** %13, align 8
  br label %671

272:                                              ; preds = %188
  %273 = load i32, i32* %9, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %486, label %275

275:                                              ; preds = %272
  store %struct.arc_operand_value* null, %struct.arc_operand_value** %29, align 8
  %276 = load %struct.arc_operand*, %struct.arc_operand** %21, align 8
  %277 = getelementptr inbounds %struct.arc_operand, %struct.arc_operand* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = load i32, i32* @ARC_OPERAND_SUFFIX, align 4
  %280 = and i32 %278, %279
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %284, label %282

282:                                              ; preds = %275
  %283 = call i32 (...) @abort() #5
  unreachable

284:                                              ; preds = %275
  %285 = load i8*, i8** %2, align 8
  %286 = load i8, i8* %285, align 1
  %287 = sext i8 %286 to i32
  %288 = icmp eq i32 %287, 32
  br i1 %288, label %289, label %292

289:                                              ; preds = %284
  %290 = load i8*, i8** %13, align 8
  %291 = getelementptr inbounds i8, i8* %290, i32 1
  store i8* %291, i8** %13, align 8
  br label %99

292:                                              ; preds = %284
  %293 = load i8*, i8** %2, align 8
  store i8* %293, i8** %25, align 8
  %294 = load i32, i32* %20, align 4
  %295 = load i32, i32* @ARC_MOD_DOT, align 4
  %296 = and i32 %294, %295
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %307

298:                                              ; preds = %292
  %299 = load i8*, i8** %25, align 8
  %300 = load i8, i8* %299, align 1
  %301 = sext i8 %300 to i32
  %302 = icmp ne i32 %301, 46
  br i1 %302, label %303, label %304

303:                                              ; preds = %298
  br label %672

304:                                              ; preds = %298
  %305 = load i8*, i8** %25, align 8
  %306 = getelementptr inbounds i8, i8* %305, i32 1
  store i8* %306, i8** %25, align 8
  br label %316

307:                                              ; preds = %292
  %308 = load i8*, i8** %25, align 8
  %309 = load i8, i8* %308, align 1
  %310 = sext i8 %309 to i32
  %311 = icmp eq i32 %310, 46
  br i1 %311, label %312, label %315

312:                                              ; preds = %307
  %313 = load i8*, i8** %13, align 8
  %314 = getelementptr inbounds i8, i8* %313, i32 1
  store i8* %314, i8** %13, align 8
  br label %99

315:                                              ; preds = %307
  br label %316

316:                                              ; preds = %315, %304
  %317 = load i8*, i8** %25, align 8
  store i8* %317, i8** %26, align 8
  br label %318

318:                                              ; preds = %331, %316
  %319 = load i8*, i8** %26, align 8
  %320 = load i8, i8* %319, align 1
  %321 = sext i8 %320 to i32
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %328

323:                                              ; preds = %318
  %324 = load i8*, i8** %26, align 8
  %325 = load i8, i8* %324, align 1
  %326 = call i64 @ISALNUM(i8 signext %325)
  %327 = icmp ne i64 %326, 0
  br label %328

328:                                              ; preds = %323, %318
  %329 = phi i1 [ false, %318 ], [ %327, %323 ]
  br i1 %329, label %330, label %334

330:                                              ; preds = %328
  br label %331

331:                                              ; preds = %330
  %332 = load i8*, i8** %26, align 8
  %333 = getelementptr inbounds i8, i8* %332, i32 1
  store i8* %333, i8** %26, align 8
  br label %318

334:                                              ; preds = %328
  %335 = load i8*, i8** %26, align 8
  %336 = load i8, i8* %335, align 1
  store i8 %336, i8* %24, align 1
  %337 = load i8*, i8** %26, align 8
  store i8 0, i8* %337, align 1
  %338 = load i8*, i8** %25, align 8
  %339 = call %struct.arc_operand_value* @get_ext_suffix(i8* %338)
  store %struct.arc_operand_value* %339, %struct.arc_operand_value** %27, align 8
  %340 = icmp ne %struct.arc_operand_value* %339, null
  br i1 %340, label %341, label %342

341:                                              ; preds = %334
  store i32 1, i32* %17, align 4
  br label %346

342:                                              ; preds = %334
  %343 = load i32, i32* @arc_suffix_hash, align 4
  %344 = load i8*, i8** %25, align 8
  %345 = call %struct.arc_operand_value* @hash_find(i32 %343, i8* %344)
  store %struct.arc_operand_value* %345, %struct.arc_operand_value** %27, align 8
  br label %346

346:                                              ; preds = %342, %341
  %347 = load %struct.arc_operand_value*, %struct.arc_operand_value** %27, align 8
  %348 = icmp ne %struct.arc_operand_value* %347, null
  br i1 %348, label %352, label %349

349:                                              ; preds = %346
  %350 = load i8, i8* %24, align 1
  %351 = load i8*, i8** %26, align 8
  store i8 %350, i8* %351, align 1
  br label %672

352:                                              ; preds = %346
  store i32 0, i32* %23, align 4
  %353 = load i32, i32* %17, align 4
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %398

355:                                              ; preds = %352
  %356 = load %struct.arc_operand*, %struct.arc_operand** @arc_operands, align 8
  %357 = load %struct.arc_operand_value*, %struct.arc_operand_value** %27, align 8
  %358 = getelementptr inbounds %struct.arc_operand_value, %struct.arc_operand_value* %357, i32 0, i32 0
  %359 = load i64, i64* %358, align 8
  %360 = getelementptr inbounds %struct.arc_operand, %struct.arc_operand* %356, i64 %359
  %361 = getelementptr inbounds %struct.arc_operand, %struct.arc_operand* %360, i32 0, i32 1
  %362 = load i64, i64* %361, align 8
  %363 = load i8*, i8** %13, align 8
  %364 = load i8, i8* %363, align 1
  %365 = sext i8 %364 to i64
  %366 = icmp eq i64 %362, %365
  br i1 %366, label %367, label %398

367:                                              ; preds = %355
  %368 = load i8, i8* %24, align 1
  %369 = load i8*, i8** %26, align 8
  store i8 %368, i8* %369, align 1
  %370 = load %struct.arc_operand*, %struct.arc_operand** %21, align 8
  %371 = getelementptr inbounds %struct.arc_operand, %struct.arc_operand* %370, i32 0, i32 2
  %372 = load i64 (i64, %struct.arc_operand*, i32, %struct.arc_operand_value*, i64, i8**)*, i64 (i64, %struct.arc_operand*, i32, %struct.arc_operand_value*, i64, i8**)** %371, align 8
  %373 = icmp ne i64 (i64, %struct.arc_operand*, i32, %struct.arc_operand_value*, i64, i8**)* %372, null
  br i1 %373, label %374, label %385

374:                                              ; preds = %367
  %375 = load %struct.arc_operand*, %struct.arc_operand** %21, align 8
  %376 = getelementptr inbounds %struct.arc_operand, %struct.arc_operand* %375, i32 0, i32 2
  %377 = load i64 (i64, %struct.arc_operand*, i32, %struct.arc_operand_value*, i64, i8**)*, i64 (i64, %struct.arc_operand*, i32, %struct.arc_operand_value*, i64, i8**)** %376, align 8
  %378 = load i64, i64* %8, align 8
  %379 = load %struct.arc_operand*, %struct.arc_operand** %21, align 8
  %380 = load i32, i32* %20, align 4
  %381 = load %struct.arc_operand_value*, %struct.arc_operand_value** %27, align 8
  %382 = getelementptr inbounds %struct.arc_operand_value, %struct.arc_operand_value* %381, i32 0, i32 1
  %383 = load i64, i64* %382, align 8
  %384 = call i64 %377(i64 %378, %struct.arc_operand* %379, i32 %380, %struct.arc_operand_value* null, i64 %383, i8** null)
  store i64 %384, i64* %8, align 8
  br label %395

385:                                              ; preds = %367
  %386 = load %struct.arc_operand_value*, %struct.arc_operand_value** %27, align 8
  %387 = getelementptr inbounds %struct.arc_operand_value, %struct.arc_operand_value* %386, i32 0, i32 1
  %388 = load i64, i64* %387, align 8
  %389 = load %struct.arc_operand*, %struct.arc_operand** %21, align 8
  %390 = getelementptr inbounds %struct.arc_operand, %struct.arc_operand* %389, i32 0, i32 3
  %391 = load i64, i64* %390, align 8
  %392 = shl i64 %388, %391
  %393 = load i64, i64* %8, align 8
  %394 = or i64 %393, %392
  store i64 %394, i64* %8, align 8
  br label %395

395:                                              ; preds = %385, %374
  %396 = load %struct.arc_operand_value*, %struct.arc_operand_value** %27, align 8
  store %struct.arc_operand_value* %396, %struct.arc_operand_value** %29, align 8
  %397 = load i8*, i8** %26, align 8
  store i8* %397, i8** %2, align 8
  store i32 1, i32* %23, align 4
  br label %466

398:                                              ; preds = %355, %352
  %399 = load i8, i8* %24, align 1
  %400 = load i8*, i8** %26, align 8
  store i8 %399, i8* %400, align 1
  %401 = load %struct.arc_operand_value*, %struct.arc_operand_value** @arc_suffixes, align 8
  %402 = load i32, i32* @arc_suffixes_count, align 4
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds %struct.arc_operand_value, %struct.arc_operand_value* %401, i64 %403
  store %struct.arc_operand_value* %404, %struct.arc_operand_value** %28, align 8
  %405 = load %struct.arc_operand_value*, %struct.arc_operand_value** %27, align 8
  store %struct.arc_operand_value* %405, %struct.arc_operand_value** %29, align 8
  br label %406

406:                                              ; preds = %462, %398
  %407 = load %struct.arc_operand_value*, %struct.arc_operand_value** %29, align 8
  %408 = load %struct.arc_operand_value*, %struct.arc_operand_value** %28, align 8
  %409 = icmp ult %struct.arc_operand_value* %407, %408
  br i1 %409, label %410, label %419

410:                                              ; preds = %406
  %411 = load %struct.arc_operand_value*, %struct.arc_operand_value** %29, align 8
  %412 = getelementptr inbounds %struct.arc_operand_value, %struct.arc_operand_value* %411, i32 0, i32 2
  %413 = load i32, i32* %412, align 8
  %414 = load %struct.arc_operand_value*, %struct.arc_operand_value** %27, align 8
  %415 = getelementptr inbounds %struct.arc_operand_value, %struct.arc_operand_value* %414, i32 0, i32 2
  %416 = load i32, i32* %415, align 8
  %417 = call i64 @strcmp(i32 %413, i32 %416)
  %418 = icmp eq i64 %417, 0
  br label %419

419:                                              ; preds = %410, %406
  %420 = phi i1 [ false, %406 ], [ %418, %410 ]
  br i1 %420, label %421, label %465

421:                                              ; preds = %419
  %422 = load %struct.arc_operand*, %struct.arc_operand** @arc_operands, align 8
  %423 = load %struct.arc_operand_value*, %struct.arc_operand_value** %29, align 8
  %424 = getelementptr inbounds %struct.arc_operand_value, %struct.arc_operand_value* %423, i32 0, i32 0
  %425 = load i64, i64* %424, align 8
  %426 = getelementptr inbounds %struct.arc_operand, %struct.arc_operand* %422, i64 %425
  %427 = getelementptr inbounds %struct.arc_operand, %struct.arc_operand* %426, i32 0, i32 1
  %428 = load i64, i64* %427, align 8
  %429 = load i8*, i8** %13, align 8
  %430 = load i8, i8* %429, align 1
  %431 = sext i8 %430 to i64
  %432 = icmp eq i64 %428, %431
  br i1 %432, label %433, label %461

433:                                              ; preds = %421
  %434 = load %struct.arc_operand*, %struct.arc_operand** %21, align 8
  %435 = getelementptr inbounds %struct.arc_operand, %struct.arc_operand* %434, i32 0, i32 2
  %436 = load i64 (i64, %struct.arc_operand*, i32, %struct.arc_operand_value*, i64, i8**)*, i64 (i64, %struct.arc_operand*, i32, %struct.arc_operand_value*, i64, i8**)** %435, align 8
  %437 = icmp ne i64 (i64, %struct.arc_operand*, i32, %struct.arc_operand_value*, i64, i8**)* %436, null
  br i1 %437, label %438, label %449

438:                                              ; preds = %433
  %439 = load %struct.arc_operand*, %struct.arc_operand** %21, align 8
  %440 = getelementptr inbounds %struct.arc_operand, %struct.arc_operand* %439, i32 0, i32 2
  %441 = load i64 (i64, %struct.arc_operand*, i32, %struct.arc_operand_value*, i64, i8**)*, i64 (i64, %struct.arc_operand*, i32, %struct.arc_operand_value*, i64, i8**)** %440, align 8
  %442 = load i64, i64* %8, align 8
  %443 = load %struct.arc_operand*, %struct.arc_operand** %21, align 8
  %444 = load i32, i32* %20, align 4
  %445 = load %struct.arc_operand_value*, %struct.arc_operand_value** %29, align 8
  %446 = getelementptr inbounds %struct.arc_operand_value, %struct.arc_operand_value* %445, i32 0, i32 1
  %447 = load i64, i64* %446, align 8
  %448 = call i64 %441(i64 %442, %struct.arc_operand* %443, i32 %444, %struct.arc_operand_value* null, i64 %447, i8** null)
  store i64 %448, i64* %8, align 8
  br label %459

449:                                              ; preds = %433
  %450 = load %struct.arc_operand_value*, %struct.arc_operand_value** %29, align 8
  %451 = getelementptr inbounds %struct.arc_operand_value, %struct.arc_operand_value* %450, i32 0, i32 1
  %452 = load i64, i64* %451, align 8
  %453 = load %struct.arc_operand*, %struct.arc_operand** %21, align 8
  %454 = getelementptr inbounds %struct.arc_operand, %struct.arc_operand* %453, i32 0, i32 3
  %455 = load i64, i64* %454, align 8
  %456 = shl i64 %452, %455
  %457 = load i64, i64* %8, align 8
  %458 = or i64 %457, %456
  store i64 %458, i64* %8, align 8
  br label %459

459:                                              ; preds = %449, %438
  %460 = load i8*, i8** %26, align 8
  store i8* %460, i8** %2, align 8
  store i32 1, i32* %23, align 4
  br label %465

461:                                              ; preds = %421
  br label %462

462:                                              ; preds = %461
  %463 = load %struct.arc_operand_value*, %struct.arc_operand_value** %29, align 8
  %464 = getelementptr inbounds %struct.arc_operand_value, %struct.arc_operand_value* %463, i32 1
  store %struct.arc_operand_value* %464, %struct.arc_operand_value** %29, align 8
  br label %406

465:                                              ; preds = %459, %419
  br label %466

466:                                              ; preds = %465, %395
  %467 = load i8*, i8** %13, align 8
  %468 = getelementptr inbounds i8, i8* %467, i32 1
  store i8* %468, i8** %13, align 8
  %469 = load i32, i32* %23, align 4
  %470 = icmp ne i32 %469, 0
  br i1 %470, label %472, label %471

471:                                              ; preds = %466
  br label %485

472:                                              ; preds = %466
  %473 = load i32, i32* %11, align 4
  %474 = load i32, i32* @MAX_SUFFIXES, align 4
  %475 = icmp eq i32 %473, %474
  br i1 %475, label %476, label %478

476:                                              ; preds = %472
  %477 = call i32 (i8*, ...) @as_bad(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %484

478:                                              ; preds = %472
  %479 = load %struct.arc_operand_value*, %struct.arc_operand_value** %29, align 8
  %480 = load i32, i32* %11, align 4
  %481 = add nsw i32 %480, 1
  store i32 %481, i32* %11, align 4
  %482 = sext i32 %480 to i64
  %483 = getelementptr inbounds %struct.arc_operand_value*, %struct.arc_operand_value** %85, i64 %482
  store %struct.arc_operand_value* %479, %struct.arc_operand_value** %483, align 8
  br label %484

484:                                              ; preds = %478, %476
  br label %485

485:                                              ; preds = %484, %471
  br label %670

486:                                              ; preds = %272
  store %struct.arc_operand_value* null, %struct.arc_operand_value** %31, align 8
  store i64 0, i64* %32, align 8
  %487 = load %struct.arc_operand*, %struct.arc_operand** %21, align 8
  %488 = getelementptr inbounds %struct.arc_operand, %struct.arc_operand* %487, i32 0, i32 0
  %489 = load i32, i32* %488, align 8
  %490 = load i32, i32* @ARC_OPERAND_SUFFIX, align 4
  %491 = and i32 %489, %490
  %492 = icmp ne i32 %491, 0
  br i1 %492, label %493, label %495

493:                                              ; preds = %486
  %494 = call i32 (...) @abort() #5
  unreachable

495:                                              ; preds = %486
  %496 = load i64*, i64** @is_end_of_line, align 8
  %497 = load i8*, i8** %2, align 8
  %498 = load i8, i8* %497, align 1
  %499 = zext i8 %498 to i64
  %500 = getelementptr inbounds i64, i64* %496, i64 %499
  %501 = load i64, i64* %500, align 8
  %502 = icmp ne i64 %501, 0
  br i1 %502, label %503, label %504

503:                                              ; preds = %495
  br label %672

504:                                              ; preds = %495
  %505 = load i8*, i8** @input_line_pointer, align 8
  store i8* %505, i8** %30, align 8
  %506 = load i8*, i8** %2, align 8
  store i8* %506, i8** @input_line_pointer, align 8
  %507 = call i32 @expression(%struct.TYPE_9__* %33)
  %508 = load i8*, i8** @input_line_pointer, align 8
  store i8* %508, i8** %2, align 8
  %509 = load i8*, i8** %30, align 8
  store i8* %509, i8** @input_line_pointer, align 8
  %510 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %511 = load i64, i64* %510, align 8
  %512 = load i64, i64* @O_illegal, align 8
  %513 = icmp eq i64 %511, %512
  br i1 %513, label %514, label %516

514:                                              ; preds = %504
  %515 = call i32 (i8*, ...) @as_bad(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %611

516:                                              ; preds = %504
  %517 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %518 = load i64, i64* %517, align 8
  %519 = load i64, i64* @O_absent, align 8
  %520 = icmp eq i64 %518, %519
  br i1 %520, label %521, label %523

521:                                              ; preds = %516
  %522 = call i32 (i8*, ...) @as_bad(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %610

523:                                              ; preds = %516
  %524 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %525 = load i64, i64* %524, align 8
  %526 = load i64, i64* @O_constant, align 8
  %527 = icmp eq i64 %525, %526
  br i1 %527, label %528, label %531

528:                                              ; preds = %523
  %529 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  %530 = load i64, i64* %529, align 8
  store i64 %530, i64* %32, align 8
  br label %609

531:                                              ; preds = %523
  %532 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %533 = load i64, i64* %532, align 8
  %534 = load i64, i64* @O_register, align 8
  %535 = icmp eq i64 %533, %534
  br i1 %535, label %536, label %540

536:                                              ; preds = %531
  %537 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  %538 = load i64, i64* %537, align 8
  %539 = inttoptr i64 %538 to %struct.arc_operand_value*
  store %struct.arc_operand_value* %539, %struct.arc_operand_value** %31, align 8
  br label %608

540:                                              ; preds = %531
  %541 = load i8*, i8** %13, align 8
  %542 = load i8, i8* %541, align 1
  %543 = sext i8 %542 to i32
  %544 = icmp eq i32 %543, 97
  br i1 %544, label %545, label %547

545:                                              ; preds = %540
  %546 = call i32 (i8*, ...) @as_bad(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  br label %607

547:                                              ; preds = %540
  %548 = load i8*, i8** %2, align 8
  %549 = call i32 @strncmp(i8* %548, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 4)
  %550 = icmp ne i32 %549, 0
  br i1 %550, label %555, label %551

551:                                              ; preds = %547
  %552 = call i32 @arc_code_symbol(%struct.TYPE_9__* %33)
  %553 = load i8*, i8** %2, align 8
  %554 = getelementptr inbounds i8, i8* %553, i64 4
  store i8* %554, i8** %2, align 8
  br label %555

555:                                              ; preds = %551, %547
  %556 = load i32, i32* %10, align 4
  %557 = load i32, i32* @MAX_FIXUPS, align 4
  %558 = icmp sge i32 %556, %557
  br i1 %558, label %559, label %561

559:                                              ; preds = %555
  %560 = call i32 (i8*, ...) @as_fatal(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  br label %561

561:                                              ; preds = %559, %555
  %562 = load i32, i32* %10, align 4
  %563 = sext i32 %562 to i64
  %564 = getelementptr inbounds %struct.arc_fixup, %struct.arc_fixup* %82, i64 %563
  %565 = getelementptr inbounds %struct.arc_fixup, %struct.arc_fixup* %564, i32 0, i32 1
  %566 = bitcast %struct.TYPE_9__* %565 to i8*
  %567 = bitcast %struct.TYPE_9__* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %566, i8* align 8 %567, i64 16, i1 false)
  %568 = load i8*, i8** %13, align 8
  %569 = load i8, i8* %568, align 1
  %570 = sext i8 %569 to i32
  %571 = icmp eq i32 %570, 100
  br i1 %571, label %572, label %573

572:                                              ; preds = %561
  br label %672

573:                                              ; preds = %561
  %574 = load i8*, i8** %13, align 8
  %575 = load i8, i8* %574, align 1
  %576 = call i64 @IS_SYMBOL_OPERAND(i8 signext %575)
  %577 = icmp ne i64 %576, 0
  br i1 %577, label %578, label %592

578:                                              ; preds = %573
  store i32 1, i32* %16, align 4
  %579 = load i32, i32* %10, align 4
  store i32 %579, i32* %12, align 4
  %580 = load %struct.arc_operand*, %struct.arc_operand** @arc_operands, align 8
  %581 = load i64*, i64** @arc_operand_map, align 8
  %582 = getelementptr inbounds i64, i64* %581, i64 81
  %583 = load i64, i64* %582, align 8
  %584 = getelementptr inbounds %struct.arc_operand, %struct.arc_operand* %580, i64 %583
  %585 = getelementptr inbounds %struct.arc_operand, %struct.arc_operand* %584, i32 0, i32 2
  %586 = load i64 (i64, %struct.arc_operand*, i32, %struct.arc_operand_value*, i64, i8**)*, i64 (i64, %struct.arc_operand*, i32, %struct.arc_operand_value*, i64, i8**)** %585, align 8
  %587 = load i64, i64* %8, align 8
  %588 = load %struct.arc_operand*, %struct.arc_operand** %21, align 8
  %589 = load i32, i32* %20, align 4
  %590 = load %struct.arc_operand_value*, %struct.arc_operand_value** %31, align 8
  %591 = call i64 %586(i64 %587, %struct.arc_operand* %588, i32 %589, %struct.arc_operand_value* %590, i64 0, i8** %34)
  br label %604

592:                                              ; preds = %573
  %593 = load i64*, i64** @arc_operand_map, align 8
  %594 = load i8*, i8** %13, align 8
  %595 = load i8, i8* %594, align 1
  %596 = sext i8 %595 to i32
  %597 = sext i32 %596 to i64
  %598 = getelementptr inbounds i64, i64* %593, i64 %597
  %599 = load i64, i64* %598, align 8
  %600 = load i32, i32* %10, align 4
  %601 = sext i32 %600 to i64
  %602 = getelementptr inbounds %struct.arc_fixup, %struct.arc_fixup* %82, i64 %601
  %603 = getelementptr inbounds %struct.arc_fixup, %struct.arc_fixup* %602, i32 0, i32 0
  store i64 %599, i64* %603, align 8
  br label %604

604:                                              ; preds = %592, %578
  %605 = load i32, i32* %10, align 4
  %606 = add nsw i32 %605, 1
  store i32 %606, i32* %10, align 4
  store i64 0, i64* %32, align 8
  br label %607

607:                                              ; preds = %604, %545
  br label %608

608:                                              ; preds = %607, %536
  br label %609

609:                                              ; preds = %608, %528
  br label %610

610:                                              ; preds = %609, %521
  br label %611

611:                                              ; preds = %610, %514
  %612 = load %struct.arc_operand*, %struct.arc_operand** %21, align 8
  %613 = getelementptr inbounds %struct.arc_operand, %struct.arc_operand* %612, i32 0, i32 2
  %614 = load i64 (i64, %struct.arc_operand*, i32, %struct.arc_operand_value*, i64, i8**)*, i64 (i64, %struct.arc_operand*, i32, %struct.arc_operand_value*, i64, i8**)** %613, align 8
  %615 = icmp ne i64 (i64, %struct.arc_operand*, i32, %struct.arc_operand_value*, i64, i8**)* %614, null
  br i1 %615, label %616, label %652

616:                                              ; preds = %611
  store i8* null, i8** %35, align 8
  %617 = load %struct.arc_operand*, %struct.arc_operand** %21, align 8
  %618 = getelementptr inbounds %struct.arc_operand, %struct.arc_operand* %617, i32 0, i32 2
  %619 = load i64 (i64, %struct.arc_operand*, i32, %struct.arc_operand_value*, i64, i8**)*, i64 (i64, %struct.arc_operand*, i32, %struct.arc_operand_value*, i64, i8**)** %618, align 8
  %620 = load i64, i64* %8, align 8
  %621 = load %struct.arc_operand*, %struct.arc_operand** %21, align 8
  %622 = load i32, i32* %20, align 4
  %623 = load %struct.arc_operand_value*, %struct.arc_operand_value** %31, align 8
  %624 = load i64, i64* %32, align 8
  %625 = call i64 %619(i64 %620, %struct.arc_operand* %621, i32 %622, %struct.arc_operand_value* %623, i64 %624, i8** %35)
  store i64 %625, i64* %8, align 8
  %626 = load i8*, i8** %35, align 8
  %627 = icmp ne i8* %626, null
  br i1 %627, label %628, label %651

628:                                              ; preds = %616
  %629 = load i8*, i8** %35, align 8
  store i8* %629, i8** %7, align 8
  %630 = load %struct.arc_operand*, %struct.arc_operand** %21, align 8
  %631 = getelementptr inbounds %struct.arc_operand, %struct.arc_operand* %630, i32 0, i32 0
  %632 = load i32, i32* %631, align 8
  %633 = load i32, i32* @ARC_OPERAND_ERROR, align 4
  %634 = and i32 %632, %633
  %635 = icmp ne i32 %634, 0
  br i1 %635, label %636, label %639

636:                                              ; preds = %628
  %637 = load i8*, i8** %35, align 8
  %638 = call i32 (i8*, ...) @as_bad(i8* %637)
  store i32 1, i32* %19, align 4
  br label %957

639:                                              ; preds = %628
  %640 = load %struct.arc_operand*, %struct.arc_operand** %21, align 8
  %641 = getelementptr inbounds %struct.arc_operand, %struct.arc_operand* %640, i32 0, i32 0
  %642 = load i32, i32* %641, align 8
  %643 = load i32, i32* @ARC_OPERAND_WARN, align 4
  %644 = and i32 %642, %643
  %645 = icmp ne i32 %644, 0
  br i1 %645, label %646, label %649

646:                                              ; preds = %639
  %647 = load i8*, i8** %35, align 8
  %648 = call i32 @as_warn(i8* %647)
  br label %649

649:                                              ; preds = %646, %639
  br label %650

650:                                              ; preds = %649
  br label %672

651:                                              ; preds = %616
  br label %667

652:                                              ; preds = %611
  %653 = load i64, i64* %32, align 8
  %654 = load %struct.arc_operand*, %struct.arc_operand** %21, align 8
  %655 = getelementptr inbounds %struct.arc_operand, %struct.arc_operand* %654, i32 0, i32 4
  %656 = load i32, i32* %655, align 8
  %657 = shl i32 1, %656
  %658 = sub nsw i32 %657, 1
  %659 = sext i32 %658 to i64
  %660 = and i64 %653, %659
  %661 = load %struct.arc_operand*, %struct.arc_operand** %21, align 8
  %662 = getelementptr inbounds %struct.arc_operand, %struct.arc_operand* %661, i32 0, i32 3
  %663 = load i64, i64* %662, align 8
  %664 = shl i64 %660, %663
  %665 = load i64, i64* %8, align 8
  %666 = or i64 %665, %664
  store i64 %666, i64* %8, align 8
  br label %667

667:                                              ; preds = %652, %651
  %668 = load i8*, i8** %13, align 8
  %669 = getelementptr inbounds i8, i8* %668, i32 1
  store i8* %669, i8** %13, align 8
  br label %670

670:                                              ; preds = %667, %485
  br label %671

671:                                              ; preds = %670, %269
  br label %99

672:                                              ; preds = %650, %572, %503, %349, %303, %232, %134, %99
  %673 = load i8*, i8** %13, align 8
  %674 = load i8, i8* %673, align 1
  %675 = sext i8 %674 to i32
  %676 = icmp eq i32 %675, 0
  br i1 %676, label %677, label %956

677:                                              ; preds = %672
  br label %678

678:                                              ; preds = %683, %677
  %679 = load i8*, i8** %2, align 8
  %680 = load i8, i8* %679, align 1
  %681 = call i64 @ISSPACE(i8 signext %680)
  %682 = icmp ne i64 %681, 0
  br i1 %682, label %683, label %686

683:                                              ; preds = %678
  %684 = load i8*, i8** %2, align 8
  %685 = getelementptr inbounds i8, i8* %684, i32 1
  store i8* %685, i8** %2, align 8
  br label %678

686:                                              ; preds = %678
  %687 = load i64*, i64** @is_end_of_line, align 8
  %688 = load i8*, i8** %2, align 8
  %689 = load i8, i8* %688, align 1
  %690 = zext i8 %689 to i64
  %691 = getelementptr inbounds i64, i64* %687, i64 %690
  %692 = load i64, i64* %691, align 8
  %693 = icmp ne i64 %692, 0
  br i1 %693, label %697, label %694

694:                                              ; preds = %686
  %695 = load i8*, i8** %2, align 8
  %696 = call i32 (i8*, ...) @as_bad(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i8* %695)
  br label %697

697:                                              ; preds = %694, %686
  %698 = call i64 @arc_opcode_limm_p(i64* %38)
  store i64 %698, i64* %39, align 8
  %699 = load i32, i32* @ARC_DELAY_NONE, align 4
  store i32 %699, i32* %40, align 4
  store i32 0, i32* %41, align 4
  store i32 0, i32* %42, align 4
  %700 = load %struct.arc_opcode*, %struct.arc_opcode** %3, align 8
  %701 = getelementptr inbounds %struct.arc_opcode, %struct.arc_opcode* %700, i32 0, i32 2
  %702 = load i32, i32* %701, align 8
  %703 = load i32, i32* @ARC_OPCODE_COND_BRANCH, align 4
  %704 = and i32 %702, %703
  store i32 %704, i32* %43, align 4
  store i32 0, i32* %36, align 4
  br label %705

705:                                              ; preds = %738, %697
  %706 = load i32, i32* %36, align 4
  %707 = load i32, i32* %11, align 4
  %708 = icmp slt i32 %706, %707
  br i1 %708, label %709, label %741

709:                                              ; preds = %705
  %710 = load %struct.arc_operand*, %struct.arc_operand** @arc_operands, align 8
  %711 = load i32, i32* %36, align 4
  %712 = sext i32 %711 to i64
  %713 = getelementptr inbounds %struct.arc_operand_value*, %struct.arc_operand_value** %85, i64 %712
  %714 = load %struct.arc_operand_value*, %struct.arc_operand_value** %713, align 8
  %715 = getelementptr inbounds %struct.arc_operand_value, %struct.arc_operand_value* %714, i32 0, i32 0
  %716 = load i64, i64* %715, align 8
  %717 = getelementptr inbounds %struct.arc_operand, %struct.arc_operand* %710, i64 %716
  %718 = getelementptr inbounds %struct.arc_operand, %struct.arc_operand* %717, i32 0, i32 1
  %719 = load i64, i64* %718, align 8
  switch i64 %719, label %737 [
    i64 110, label %720
    i64 113, label %728
    i64 102, label %736
  ]

720:                                              ; preds = %709
  %721 = load i32, i32* %36, align 4
  %722 = sext i32 %721 to i64
  %723 = getelementptr inbounds %struct.arc_operand_value*, %struct.arc_operand_value** %85, i64 %722
  %724 = load %struct.arc_operand_value*, %struct.arc_operand_value** %723, align 8
  %725 = getelementptr inbounds %struct.arc_operand_value, %struct.arc_operand_value* %724, i32 0, i32 1
  %726 = load i64, i64* %725, align 8
  %727 = trunc i64 %726 to i32
  store i32 %727, i32* %40, align 4
  br label %737

728:                                              ; preds = %709
  %729 = load i32, i32* %36, align 4
  %730 = sext i32 %729 to i64
  %731 = getelementptr inbounds %struct.arc_operand_value*, %struct.arc_operand_value** %85, i64 %730
  %732 = load %struct.arc_operand_value*, %struct.arc_operand_value** %731, align 8
  %733 = getelementptr inbounds %struct.arc_operand_value, %struct.arc_operand_value* %732, i32 0, i32 1
  %734 = load i64, i64* %733, align 8
  %735 = trunc i64 %734 to i32
  store i32 %735, i32* %41, align 4
  br label %737

736:                                              ; preds = %709
  store i32 1, i32* %42, align 4
  br label %737

737:                                              ; preds = %709, %736, %728, %720
  br label %738

738:                                              ; preds = %737
  %739 = load i32, i32* %36, align 4
  %740 = add nsw i32 %739, 1
  store i32 %740, i32* %36, align 4
  br label %705

741:                                              ; preds = %705
  %742 = load i32, i32* @md_assemble.in_delay_slot_p, align 4
  %743 = icmp ne i32 %742, 0
  br i1 %743, label %744, label %749

744:                                              ; preds = %741
  %745 = load i64, i64* %39, align 8
  %746 = icmp ne i64 %745, 0
  br i1 %746, label %747, label %749

747:                                              ; preds = %744
  %748 = call i32 @as_warn(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0))
  br label %749

749:                                              ; preds = %747, %744, %741
  %750 = load i32, i32* %40, align 4
  %751 = load i32, i32* @ARC_DELAY_NONE, align 4
  %752 = icmp ne i32 %750, %751
  br i1 %752, label %753, label %762

753:                                              ; preds = %749
  %754 = load i64, i64* %39, align 8
  %755 = icmp ne i64 %754, 0
  br i1 %755, label %756, label %762

756:                                              ; preds = %753
  %757 = load i64, i64* %8, align 8
  %758 = call i64 @arc_insn_not_jl(i64 %757)
  %759 = icmp ne i64 %758, 0
  br i1 %759, label %760, label %762

760:                                              ; preds = %756
  %761 = call i32 @as_warn(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0))
  br label %762

762:                                              ; preds = %760, %756, %753, %749
  %763 = load i32, i32* %40, align 4
  %764 = load i32, i32* @ARC_DELAY_NONE, align 4
  %765 = icmp ne i32 %763, %764
  br i1 %765, label %766, label %770

766:                                              ; preds = %762
  %767 = load i64, i64* %39, align 8
  %768 = icmp ne i64 %767, 0
  %769 = xor i1 %768, true
  br label %770

770:                                              ; preds = %766, %762
  %771 = phi i1 [ false, %762 ], [ %769, %766 ]
  %772 = zext i1 %771 to i32
  store i32 %772, i32* @md_assemble.in_delay_slot_p, align 4
  %773 = load i32, i32* %43, align 4
  %774 = icmp ne i32 %773, 0
  br i1 %774, label %775, label %787

775:                                              ; preds = %770
  %776 = load i32, i32* %41, align 4
  %777 = icmp ne i32 %776, 0
  br i1 %777, label %778, label %787

778:                                              ; preds = %775
  %779 = load i32, i32* @md_assemble.prev_insn_needs_cc_nop_p, align 4
  %780 = icmp ne i32 %779, 0
  br i1 %780, label %781, label %787

781:                                              ; preds = %778
  %782 = load i64, i64* @arc_mach_type, align 8
  %783 = load i64, i64* @bfd_mach_arc_5, align 8
  %784 = icmp eq i64 %782, %783
  br i1 %784, label %785, label %787

785:                                              ; preds = %781
  %786 = call i32 @as_warn(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i64 0, i64 0))
  br label %787

787:                                              ; preds = %785, %781, %778, %775, %770
  %788 = load i32, i32* %42, align 4
  %789 = icmp ne i32 %788, 0
  br i1 %789, label %790, label %794

790:                                              ; preds = %787
  %791 = load i64, i64* %39, align 8
  %792 = icmp ne i64 %791, 0
  %793 = xor i1 %792, true
  br label %794

794:                                              ; preds = %790, %787
  %795 = phi i1 [ false, %787 ], [ %793, %790 ]
  %796 = zext i1 %795 to i32
  store i32 %796, i32* @md_assemble.prev_insn_needs_cc_nop_p, align 4
  %797 = load i64, i64* %39, align 8
  %798 = icmp ne i64 %797, 0
  br i1 %798, label %799, label %809

799:                                              ; preds = %794
  %800 = call i8* @frag_more(i32 8)
  store i8* %800, i8** %37, align 8
  %801 = load i8*, i8** %37, align 8
  %802 = load i64, i64* %8, align 8
  %803 = call i32 @md_number_to_chars(i8* %801, i64 %802, i32 4)
  %804 = load i8*, i8** %37, align 8
  %805 = getelementptr inbounds i8, i8* %804, i64 4
  %806 = load i64, i64* %38, align 8
  %807 = call i32 @md_number_to_chars(i8* %805, i64 %806, i32 4)
  %808 = call i32 @dwarf2_emit_insn(i32 8)
  br label %821

809:                                              ; preds = %794
  %810 = load i32, i32* %16, align 4
  %811 = icmp ne i32 %810, 0
  br i1 %811, label %812, label %814

812:                                              ; preds = %809
  %813 = call i32 (...) @abort() #5
  unreachable

814:                                              ; preds = %809
  %815 = call i8* @frag_more(i32 4)
  store i8* %815, i8** %37, align 8
  %816 = load i8*, i8** %37, align 8
  %817 = load i64, i64* %8, align 8
  %818 = call i32 @md_number_to_chars(i8* %816, i64 %817, i32 4)
  %819 = call i32 @dwarf2_emit_insn(i32 4)
  br label %820

820:                                              ; preds = %814
  br label %821

821:                                              ; preds = %820, %799
  store i32 0, i32* %36, align 4
  br label %822

822:                                              ; preds = %952, %821
  %823 = load i32, i32* %36, align 4
  %824 = load i32, i32* %10, align 4
  %825 = icmp slt i32 %823, %824
  br i1 %825, label %826, label %955

826:                                              ; preds = %822
  %827 = load %struct.arc_operand*, %struct.arc_operand** @arc_operands, align 8
  %828 = load i32, i32* %36, align 4
  %829 = sext i32 %828 to i64
  %830 = getelementptr inbounds %struct.arc_fixup, %struct.arc_fixup* %82, i64 %829
  %831 = getelementptr inbounds %struct.arc_fixup, %struct.arc_fixup* %830, i32 0, i32 0
  %832 = load i64, i64* %831, align 8
  %833 = getelementptr inbounds %struct.arc_operand, %struct.arc_operand* %827, i64 %832
  %834 = getelementptr inbounds %struct.arc_operand, %struct.arc_operand* %833, i32 0, i32 0
  %835 = load i32, i32* %834, align 8
  %836 = load i32, i32* @ARC_OPERAND_LIMM, align 4
  %837 = and i32 %835, %836
  %838 = icmp ne i32 %837, 0
  br i1 %838, label %839, label %903

839:                                              ; preds = %826
  %840 = load i64, i64* %8, align 8
  %841 = call i64 @arc_limm_fixup_adjust(i64 %840)
  %842 = load i32, i32* %36, align 4
  %843 = sext i32 %842 to i64
  %844 = getelementptr inbounds %struct.arc_fixup, %struct.arc_fixup* %82, i64 %843
  %845 = getelementptr inbounds %struct.arc_fixup, %struct.arc_fixup* %844, i32 0, i32 1
  %846 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %845, i32 0, i32 1
  %847 = load i64, i64* %846, align 8
  %848 = add nsw i64 %847, %841
  store i64 %848, i64* %846, align 8
  %849 = load i32, i32* %36, align 4
  %850 = sext i32 %849 to i64
  %851 = getelementptr inbounds %struct.arc_fixup, %struct.arc_fixup* %82, i64 %850
  %852 = getelementptr inbounds %struct.arc_fixup, %struct.arc_fixup* %851, i32 0, i32 0
  %853 = load i64, i64* %852, align 8
  %854 = trunc i64 %853 to i32
  store i32 %854, i32* %44, align 4
  %855 = load i32, i32* %44, align 4
  %856 = sext i32 %855 to i64
  %857 = load i64*, i64** @arc_operand_map, align 8
  %858 = getelementptr inbounds i64, i64* %857, i64 76
  %859 = load i64, i64* %858, align 8
  %860 = icmp eq i64 %856, %859
  br i1 %860, label %882, label %861

861:                                              ; preds = %839
  %862 = load i32, i32* %44, align 4
  %863 = sext i32 %862 to i64
  %864 = load i64*, i64** @arc_operand_map, align 8
  %865 = getelementptr inbounds i64, i64* %864, i64 115
  %866 = load i64, i64* %865, align 8
  %867 = icmp eq i64 %863, %866
  br i1 %867, label %882, label %868

868:                                              ; preds = %861
  %869 = load i32, i32* %44, align 4
  %870 = sext i32 %869 to i64
  %871 = load i64*, i64** @arc_operand_map, align 8
  %872 = getelementptr inbounds i64, i64* %871, i64 111
  %873 = load i64, i64* %872, align 8
  %874 = icmp eq i64 %870, %873
  br i1 %874, label %882, label %875

875:                                              ; preds = %868
  %876 = load i32, i32* %44, align 4
  %877 = sext i32 %876 to i64
  %878 = load i64*, i64** @arc_operand_map, align 8
  %879 = getelementptr inbounds i64, i64* %878, i64 79
  %880 = load i64, i64* %879, align 8
  %881 = icmp eq i64 %877, %880
  br i1 %881, label %882, label %884

882:                                              ; preds = %875, %868, %861, %839
  %883 = load i32, i32* @BFD_RELOC_32, align 4
  store i32 %883, i32* %45, align 4
  br label %896

884:                                              ; preds = %875
  %885 = load i32, i32* %44, align 4
  %886 = sext i32 %885 to i64
  %887 = load i64*, i64** @arc_operand_map, align 8
  %888 = getelementptr inbounds i64, i64* %887, i64 74
  %889 = load i64, i64* %888, align 8
  %890 = icmp eq i64 %886, %889
  br i1 %890, label %891, label %893

891:                                              ; preds = %884
  %892 = load i32, i32* @BFD_RELOC_ARC_B26, align 4
  store i32 %892, i32* %45, align 4
  br label %895

893:                                              ; preds = %884
  %894 = call i32 (...) @abort() #5
  unreachable

895:                                              ; preds = %891
  br label %896

896:                                              ; preds = %895, %882
  %897 = load i32, i32* %45, align 4
  %898 = load i32, i32* %36, align 4
  %899 = sext i32 %898 to i64
  %900 = getelementptr inbounds %struct.arc_fixup, %struct.arc_fixup* %82, i64 %899
  %901 = getelementptr inbounds %struct.arc_fixup, %struct.arc_fixup* %900, i32 0, i32 1
  %902 = call i32 @get_arc_exp_reloc_type(i32 1, i32 %897, %struct.TYPE_9__* %901, %struct.TYPE_9__* %46)
  store i32 %902, i32* %45, align 4
  br label %919

903:                                              ; preds = %826
  %904 = load i32, i32* %36, align 4
  %905 = sext i32 %904 to i64
  %906 = getelementptr inbounds %struct.arc_fixup, %struct.arc_fixup* %82, i64 %905
  %907 = getelementptr inbounds %struct.arc_fixup, %struct.arc_fixup* %906, i32 0, i32 0
  %908 = load i64, i64* %907, align 8
  %909 = trunc i64 %908 to i32
  %910 = load i32, i32* %36, align 4
  %911 = sext i32 %910 to i64
  %912 = getelementptr inbounds %struct.arc_fixup, %struct.arc_fixup* %82, i64 %911
  %913 = getelementptr inbounds %struct.arc_fixup, %struct.arc_fixup* %912, i32 0, i32 1
  %914 = call i32 @get_arc_exp_reloc_type(i32 0, i32 %909, %struct.TYPE_9__* %913, %struct.TYPE_9__* %46)
  store i32 %914, i32* %44, align 4
  %915 = load i32, i32* %44, align 4
  %916 = load i64, i64* @BFD_RELOC_UNUSED, align 8
  %917 = trunc i64 %916 to i32
  %918 = add nsw i32 %915, %917
  store i32 %918, i32* %45, align 4
  br label %919

919:                                              ; preds = %903, %896
  %920 = load %struct.arc_operand*, %struct.arc_operand** @arc_operands, align 8
  %921 = load i32, i32* %44, align 4
  %922 = sext i32 %921 to i64
  %923 = getelementptr inbounds %struct.arc_operand, %struct.arc_operand* %920, i64 %922
  store %struct.arc_operand* %923, %struct.arc_operand** %47, align 8
  %924 = load %struct.TYPE_10__*, %struct.TYPE_10__** @frag_now, align 8
  %925 = load i8*, i8** %37, align 8
  %926 = load %struct.TYPE_10__*, %struct.TYPE_10__** @frag_now, align 8
  %927 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %926, i32 0, i32 0
  %928 = load i8*, i8** %927, align 8
  %929 = ptrtoint i8* %925 to i64
  %930 = ptrtoint i8* %928 to i64
  %931 = sub i64 %929, %930
  %932 = load %struct.arc_operand*, %struct.arc_operand** %47, align 8
  %933 = getelementptr inbounds %struct.arc_operand, %struct.arc_operand* %932, i32 0, i32 0
  %934 = load i32, i32* %933, align 8
  %935 = load i32, i32* @ARC_OPERAND_LIMM, align 4
  %936 = and i32 %934, %935
  %937 = icmp ne i32 %936, 0
  %938 = zext i1 %937 to i64
  %939 = select i1 %937, i32 4, i32 0
  %940 = sext i32 %939 to i64
  %941 = add nsw i64 %931, %940
  %942 = trunc i64 %941 to i32
  %943 = load %struct.arc_operand*, %struct.arc_operand** %47, align 8
  %944 = getelementptr inbounds %struct.arc_operand, %struct.arc_operand* %943, i32 0, i32 0
  %945 = load i32, i32* %944, align 8
  %946 = load i32, i32* @ARC_OPERAND_RELATIVE_BRANCH, align 4
  %947 = and i32 %945, %946
  %948 = icmp ne i32 %947, 0
  %949 = zext i1 %948 to i32
  %950 = load i32, i32* %45, align 4
  %951 = call i32 @fix_new_exp(%struct.TYPE_10__* %924, i32 %942, i32 4, %struct.TYPE_9__* %46, i32 %949, i32 %950)
  br label %952

952:                                              ; preds = %919
  %953 = load i32, i32* %36, align 4
  %954 = add nsw i32 %953, 1
  store i32 %954, i32* %36, align 4
  br label %822

955:                                              ; preds = %822
  store i32 1, i32* %19, align 4
  br label %957

956:                                              ; preds = %672
  store i32 0, i32* %19, align 4
  br label %957

957:                                              ; preds = %956, %955, %636, %218, %89
  %958 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %958)
  %959 = load i32, i32* %19, align 4
  switch i32 %959, label %988 [
    i32 0, label %960
    i32 6, label %961
    i32 1, label %987
  ]

960:                                              ; preds = %957
  br label %961

961:                                              ; preds = %960, %957
  %962 = load %struct.arc_opcode*, %struct.arc_opcode** %3, align 8
  %963 = call %struct.arc_opcode* @ARC_OPCODE_NEXT_ASM(%struct.arc_opcode* %962)
  %964 = icmp ne %struct.arc_opcode* %963, null
  br i1 %964, label %965, label %968

965:                                              ; preds = %961
  %966 = load %struct.arc_opcode*, %struct.arc_opcode** %3, align 8
  %967 = call %struct.arc_opcode* @ARC_OPCODE_NEXT_ASM(%struct.arc_opcode* %966)
  br label %976

968:                                              ; preds = %961
  %969 = load %struct.arc_opcode*, %struct.arc_opcode** %5, align 8
  %970 = icmp ne %struct.arc_opcode* %969, null
  br i1 %970, label %971, label %973

971:                                              ; preds = %968
  store %struct.arc_opcode* null, %struct.arc_opcode** %5, align 8
  %972 = load %struct.arc_opcode*, %struct.arc_opcode** %4, align 8
  br label %974

973:                                              ; preds = %968
  br label %974

974:                                              ; preds = %973, %971
  %975 = phi %struct.arc_opcode* [ %972, %971 ], [ null, %973 ]
  br label %976

976:                                              ; preds = %974, %965
  %977 = phi %struct.arc_opcode* [ %967, %965 ], [ %975, %974 ]
  store %struct.arc_opcode* %977, %struct.arc_opcode** %3, align 8
  br label %75

978:                                              ; preds = %75
  %979 = load i8*, i8** %7, align 8
  %980 = icmp eq i8* null, %979
  br i1 %980, label %981, label %984

981:                                              ; preds = %978
  %982 = load i8*, i8** %6, align 8
  %983 = call i32 (i8*, ...) @as_bad(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i8* %982)
  br label %987

984:                                              ; preds = %978
  %985 = load i8*, i8** %7, align 8
  %986 = call i32 (i8*, ...) @as_bad(i8* %985)
  br label %987

987:                                              ; preds = %957, %984, %981
  ret void

988:                                              ; preds = %957
  unreachable
}

declare dso_local i32 @init_opcode_tables(i64) #1

declare dso_local i64 @ISSPACE(i8 signext) #1

declare dso_local %struct.arc_opcode* @arc_opcode_lookup_asm(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @arc_opcode_supported(%struct.arc_opcode*) #1

declare dso_local i32 @arc_opcode_init_insert(...) #1

declare dso_local i64 @ARC_MOD_P(i32) #1

declare dso_local i32 @as_fatal(i8*, ...) #1

declare dso_local i32 @as_bad(i8*, ...) #1

declare dso_local i32 @as_warn(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #3

declare dso_local i64 @ISALNUM(i8 signext) #1

declare dso_local %struct.arc_operand_value* @get_ext_suffix(i8*) #1

declare dso_local %struct.arc_operand_value* @hash_find(i32, i8*) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @expression(%struct.TYPE_9__*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @arc_code_symbol(%struct.TYPE_9__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

declare dso_local i64 @IS_SYMBOL_OPERAND(i8 signext) #1

declare dso_local i64 @arc_opcode_limm_p(i64*) #1

declare dso_local i64 @arc_insn_not_jl(i64) #1

declare dso_local i8* @frag_more(i32) #1

declare dso_local i32 @md_number_to_chars(i8*, i64, i32) #1

declare dso_local i32 @dwarf2_emit_insn(i32) #1

declare dso_local i64 @arc_limm_fixup_adjust(i64) #1

declare dso_local i32 @get_arc_exp_reloc_type(i32, i32, %struct.TYPE_9__*, %struct.TYPE_9__*) #1

declare dso_local i32 @fix_new_exp(%struct.TYPE_10__*, i32, i32, %struct.TYPE_9__*, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local %struct.arc_opcode* @ARC_OPCODE_NEXT_ASM(%struct.arc_opcode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
