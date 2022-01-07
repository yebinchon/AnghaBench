; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-spu.c_md_assemble.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-spu.c_md_assemble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spu_opcode = type { i8*, i32*, i32 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_10__ = type { i32 }
%struct.spu_insn = type { i32*, i32*, i32, %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { i32, i64, i64, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i64 }

@op_hash = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Invalid mnemonic '%s'\00", align 1
@use_dd2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"orx\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"'%s' is only available in DD2.0 or higher.\00", align 1
@MAX_RELOCS = common dso_local global i32 0, align 4
@O_illegal = common dso_local global i32 0, align 4
@spu_opcodes = common dso_local global %struct.spu_opcode* null, align 8
@syntax_error_arg = common dso_local global i32 0, align 4
@syntax_error_param = common dso_local global i8* null, align 8
@syntax_reg = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"Error in argument %d.  Expecting:  \22%s\22\00", align 1
@A_P = common dso_local global i32 0, align 4
@M_RDCH = common dso_local global i64 0, align 8
@M_RCHCNT = common dso_local global i64 0, align 8
@M_WRCH = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [46 x i8] c"Mixing register syntax, with and without '$'.\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Treating '%-*s' as a symbol.\00", align 1
@arg_encode = common dso_local global %struct.TYPE_12__* null, align 8
@BFD_RELOC_SPU_PCREL9a = common dso_local global i64 0, align 8
@BFD_RELOC_SPU_PCREL9b = common dso_local global i64 0, align 8
@BFD_RELOC_SPU_PCREL16 = common dso_local global i64 0, align 8
@BFD_RELOC_SPU_HI16 = common dso_local global i64 0, align 8
@BFD_RELOC_SPU_LO16 = common dso_local global i64 0, align 8
@frag_now = common dso_local global %struct.TYPE_10__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @md_assemble(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca %struct.spu_opcode*, align 8
  %7 = alloca %struct.spu_insn, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %14 = load i8*, i8** %2, align 8
  %15 = call i32 @assert(i8* %14)
  %16 = load i8*, i8** %2, align 8
  store i8* %16, i8** %3, align 8
  br label %17

17:                                               ; preds = %31, %1
  %18 = load i8*, i8** %3, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load i8*, i8** %3, align 8
  %24 = load i8, i8* %23, align 1
  %25 = call i32 @ISSPACE(i8 signext %24)
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  br label %28

28:                                               ; preds = %22, %17
  %29 = phi i1 [ false, %17 ], [ %27, %22 ]
  br i1 %29, label %30, label %34

30:                                               ; preds = %28
  br label %31

31:                                               ; preds = %30
  %32 = load i8*, i8** %3, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %3, align 8
  br label %17

34:                                               ; preds = %28
  %35 = load i8*, i8** %3, align 8
  %36 = load i8, i8* %35, align 1
  store i8 %36, i8* %5, align 1
  %37 = load i8*, i8** %3, align 8
  store i8 0, i8* %37, align 1
  %38 = load i8, i8* %5, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %34
  %42 = load i8, i8* %5, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp ne i32 %43, 10
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i8*, i8** %3, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %3, align 8
  br label %48

48:                                               ; preds = %45, %41, %34
  %49 = load i32, i32* @op_hash, align 4
  %50 = load i8*, i8** %2, align 8
  %51 = call i64 @hash_find(i32 %49, i8* %50)
  %52 = inttoptr i64 %51 to %struct.spu_opcode*
  store %struct.spu_opcode* %52, %struct.spu_opcode** %6, align 8
  %53 = icmp eq %struct.spu_opcode* %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = call i32 @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %56 = load i8*, i8** %2, align 8
  %57 = call i32 @as_bad(i32 %55, i8* %56)
  br label %319

58:                                               ; preds = %48
  %59 = load i32, i32* @use_dd2, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %71, label %61

61:                                               ; preds = %58
  %62 = load %struct.spu_opcode*, %struct.spu_opcode** %6, align 8
  %63 = getelementptr inbounds %struct.spu_opcode, %struct.spu_opcode* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = call i64 @strcmp(i8* %64, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %61
  %68 = call i32 @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %69 = load i8*, i8** %2, align 8
  %70 = call i32 @as_bad(i32 %68, i8* %69)
  br label %319

71:                                               ; preds = %61, %58
  br label %72

72:                                               ; preds = %71, %168
  store i32 0, i32* %8, align 4
  br label %73

73:                                               ; preds = %113, %72
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* @MAX_RELOCS, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %116

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.spu_insn, %struct.spu_insn* %7, i32 0, i32 3
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %78, align 8
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 3
  store i64 0, i64* %83, align 8
  %84 = getelementptr inbounds %struct.spu_insn, %struct.spu_insn* %7, i32 0, i32 3
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %84, align 8
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 2
  store i64 0, i64* %89, align 8
  %90 = getelementptr inbounds %struct.spu_insn, %struct.spu_insn* %7, i32 0, i32 3
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %90, align 8
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 1
  store i64 0, i64* %95, align 8
  %96 = load i32, i32* @O_illegal, align 4
  %97 = getelementptr inbounds %struct.spu_insn, %struct.spu_insn* %7, i32 0, i32 3
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %97, align 8
  %99 = load i32, i32* %8, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 0
  store i32 %96, i32* %102, align 8
  %103 = getelementptr inbounds %struct.spu_insn, %struct.spu_insn* %7, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %8, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  store i32 -1, i32* %107, align 4
  %108 = getelementptr inbounds %struct.spu_insn, %struct.spu_insn* %7, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %8, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  store i32 0, i32* %112, align 4
  br label %113

113:                                              ; preds = %77
  %114 = load i32, i32* %8, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %8, align 4
  br label %73

116:                                              ; preds = %73
  %117 = load %struct.spu_opcode*, %struct.spu_opcode** %6, align 8
  %118 = getelementptr inbounds %struct.spu_opcode, %struct.spu_opcode* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = getelementptr inbounds %struct.spu_insn, %struct.spu_insn* %7, i32 0, i32 4
  store i32 %119, i32* %120, align 8
  %121 = load %struct.spu_opcode*, %struct.spu_opcode** %6, align 8
  %122 = load %struct.spu_opcode*, %struct.spu_opcode** @spu_opcodes, align 8
  %123 = ptrtoint %struct.spu_opcode* %121 to i64
  %124 = ptrtoint %struct.spu_opcode* %122 to i64
  %125 = sub i64 %123, %124
  %126 = sdiv exact i64 %125, 24
  %127 = trunc i64 %126 to i32
  %128 = getelementptr inbounds %struct.spu_insn, %struct.spu_insn* %7, i32 0, i32 2
  store i32 %127, i32* %128, align 8
  store i32 0, i32* @syntax_error_arg, align 4
  store i8* null, i8** @syntax_error_param, align 8
  store i32 0, i32* @syntax_reg, align 4
  %129 = load %struct.spu_opcode*, %struct.spu_opcode** %6, align 8
  %130 = load i8*, i8** %3, align 8
  %131 = call i64 @calcop(%struct.spu_opcode* %129, i8* %130, %struct.spu_insn* %7)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %116
  br label %169

134:                                              ; preds = %116
  %135 = load %struct.spu_opcode*, %struct.spu_opcode** %6, align 8
  %136 = getelementptr inbounds %struct.spu_opcode, %struct.spu_opcode* %135, i64 0
  %137 = getelementptr inbounds %struct.spu_opcode, %struct.spu_opcode* %136, i32 0, i32 0
  %138 = load i8*, i8** %137, align 8
  %139 = load %struct.spu_opcode*, %struct.spu_opcode** %6, align 8
  %140 = getelementptr inbounds %struct.spu_opcode, %struct.spu_opcode* %139, i64 1
  %141 = getelementptr inbounds %struct.spu_opcode, %struct.spu_opcode* %140, i32 0, i32 0
  %142 = load i8*, i8** %141, align 8
  %143 = call i64 @strcmp(i8* %138, i8* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %148, label %145

145:                                              ; preds = %134
  %146 = load %struct.spu_opcode*, %struct.spu_opcode** %6, align 8
  %147 = getelementptr inbounds %struct.spu_opcode, %struct.spu_opcode* %146, i32 1
  store %struct.spu_opcode* %147, %struct.spu_opcode** %6, align 8
  br label %168

148:                                              ; preds = %134
  %149 = load %struct.spu_opcode*, %struct.spu_opcode** %6, align 8
  %150 = getelementptr inbounds %struct.spu_opcode, %struct.spu_opcode* %149, i64 0
  %151 = getelementptr inbounds %struct.spu_opcode, %struct.spu_opcode* %150, i32 0, i32 1
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* @syntax_error_arg, align 4
  %154 = sub nsw i32 %153, 1
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %152, i64 %155
  %157 = load i32, i32* %156, align 4
  store i32 %157, i32* %9, align 4
  %158 = call i32 @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %159 = load i32, i32* @syntax_error_arg, align 4
  %160 = load i32, i32* %9, align 4
  %161 = load i32, i32* @A_P, align 4
  %162 = icmp eq i32 %160, %161
  %163 = zext i1 %162 to i32
  %164 = sub nsw i32 %159, %163
  %165 = load %struct.spu_opcode*, %struct.spu_opcode** %6, align 8
  %166 = call i32 @insn_fmt_string(%struct.spu_opcode* %165)
  %167 = call i32 @as_fatal(i32 %158, i32 %164, i32 %166)
  br label %319

168:                                              ; preds = %145
  br label %72

169:                                              ; preds = %133
  %170 = load i32, i32* @syntax_reg, align 4
  %171 = and i32 %170, 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %194

173:                                              ; preds = %169
  %174 = getelementptr inbounds %struct.spu_insn, %struct.spu_insn* %7, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = sext i32 %175 to i64
  %177 = load i64, i64* @M_RDCH, align 8
  %178 = icmp eq i64 %176, %177
  br i1 %178, label %194, label %179

179:                                              ; preds = %173
  %180 = getelementptr inbounds %struct.spu_insn, %struct.spu_insn* %7, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = sext i32 %181 to i64
  %183 = load i64, i64* @M_RCHCNT, align 8
  %184 = icmp eq i64 %182, %183
  br i1 %184, label %194, label %185

185:                                              ; preds = %179
  %186 = getelementptr inbounds %struct.spu_insn, %struct.spu_insn* %7, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = sext i32 %187 to i64
  %189 = load i64, i64* @M_WRCH, align 8
  %190 = icmp eq i64 %188, %189
  br i1 %190, label %194, label %191

191:                                              ; preds = %185
  %192 = call i32 @_(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0))
  %193 = call i32 (i32, ...) @as_warn(i32 %192)
  br label %194

194:                                              ; preds = %191, %185, %179, %173, %169
  %195 = load i8*, i8** @syntax_error_param, align 8
  %196 = icmp ne i8* %195, null
  br i1 %196, label %197, label %217

197:                                              ; preds = %194
  %198 = load i8*, i8** @syntax_error_param, align 8
  store i8* %198, i8** %10, align 8
  br label %199

199:                                              ; preds = %204, %197
  %200 = load i8*, i8** %10, align 8
  %201 = load i8, i8* %200, align 1
  %202 = sext i8 %201 to i32
  %203 = icmp ne i32 %202, 36
  br i1 %203, label %204, label %207

204:                                              ; preds = %199
  %205 = load i8*, i8** %10, align 8
  %206 = getelementptr inbounds i8, i8* %205, i32 -1
  store i8* %206, i8** %10, align 8
  br label %199

207:                                              ; preds = %199
  %208 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %209 = load i8*, i8** @syntax_error_param, align 8
  %210 = load i8*, i8** %10, align 8
  %211 = ptrtoint i8* %209 to i64
  %212 = ptrtoint i8* %210 to i64
  %213 = sub i64 %211, %212
  %214 = trunc i64 %213 to i32
  %215 = load i8*, i8** %10, align 8
  %216 = call i32 (i32, ...) @as_warn(i32 %208, i32 %214, i8* %215)
  br label %217

217:                                              ; preds = %207, %194
  %218 = call i8* @frag_more(i32 4)
  store i8* %218, i8** %4, align 8
  %219 = load i8*, i8** %4, align 8
  %220 = getelementptr inbounds %struct.spu_insn, %struct.spu_insn* %7, i32 0, i32 4
  %221 = load i32, i32* %220, align 8
  %222 = call i32 @md_number_to_chars(i8* %219, i32 %221, i32 4)
  store i32 0, i32* %8, align 4
  br label %223

223:                                              ; preds = %314, %217
  %224 = load i32, i32* %8, align 4
  %225 = load i32, i32* @MAX_RELOCS, align 4
  %226 = icmp slt i32 %224, %225
  br i1 %226, label %227, label %317

227:                                              ; preds = %223
  %228 = getelementptr inbounds %struct.spu_insn, %struct.spu_insn* %7, i32 0, i32 0
  %229 = load i32*, i32** %228, align 8
  %230 = load i32, i32* %8, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i32, i32* %229, i64 %231
  %233 = load i32, i32* %232, align 4
  %234 = icmp sge i32 %233, 0
  br i1 %234, label %235, label %313

235:                                              ; preds = %227
  %236 = load %struct.TYPE_12__*, %struct.TYPE_12__** @arg_encode, align 8
  %237 = getelementptr inbounds %struct.spu_insn, %struct.spu_insn* %7, i32 0, i32 0
  %238 = load i32*, i32** %237, align 8
  %239 = load i32, i32* %8, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i32, i32* %238, i64 %240
  %242 = load i32, i32* %241, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %236, i64 %243
  %245 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %244, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  store i64 %246, i64* %12, align 8
  store i32 0, i32* %13, align 4
  %247 = load i64, i64* %12, align 8
  %248 = load i64, i64* @BFD_RELOC_SPU_PCREL9a, align 8
  %249 = icmp eq i64 %247, %248
  br i1 %249, label %258, label %250

250:                                              ; preds = %235
  %251 = load i64, i64* %12, align 8
  %252 = load i64, i64* @BFD_RELOC_SPU_PCREL9b, align 8
  %253 = icmp eq i64 %251, %252
  br i1 %253, label %258, label %254

254:                                              ; preds = %250
  %255 = load i64, i64* %12, align 8
  %256 = load i64, i64* @BFD_RELOC_SPU_PCREL16, align 8
  %257 = icmp eq i64 %255, %256
  br i1 %257, label %258, label %259

258:                                              ; preds = %254, %250, %235
  store i32 1, i32* %13, align 4
  br label %259

259:                                              ; preds = %258, %254
  %260 = getelementptr inbounds %struct.spu_insn, %struct.spu_insn* %7, i32 0, i32 1
  %261 = load i32*, i32** %260, align 8
  %262 = load i32, i32* %8, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i32, i32* %261, i64 %263
  %265 = load i32, i32* %264, align 4
  %266 = icmp eq i32 %265, 1
  br i1 %266, label %267, label %269

267:                                              ; preds = %259
  %268 = load i64, i64* @BFD_RELOC_SPU_HI16, align 8
  store i64 %268, i64* %12, align 8
  br label %280

269:                                              ; preds = %259
  %270 = getelementptr inbounds %struct.spu_insn, %struct.spu_insn* %7, i32 0, i32 1
  %271 = load i32*, i32** %270, align 8
  %272 = load i32, i32* %8, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i32, i32* %271, i64 %273
  %275 = load i32, i32* %274, align 4
  %276 = icmp eq i32 %275, 2
  br i1 %276, label %277, label %279

277:                                              ; preds = %269
  %278 = load i64, i64* @BFD_RELOC_SPU_LO16, align 8
  store i64 %278, i64* %12, align 8
  br label %279

279:                                              ; preds = %277, %269
  br label %280

280:                                              ; preds = %279, %267
  %281 = load %struct.TYPE_10__*, %struct.TYPE_10__** @frag_now, align 8
  %282 = load i8*, i8** %4, align 8
  %283 = load %struct.TYPE_10__*, %struct.TYPE_10__** @frag_now, align 8
  %284 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 4
  %286 = sext i32 %285 to i64
  %287 = sub i64 0, %286
  %288 = getelementptr inbounds i8, i8* %282, i64 %287
  %289 = getelementptr inbounds %struct.spu_insn, %struct.spu_insn* %7, i32 0, i32 3
  %290 = load %struct.TYPE_11__*, %struct.TYPE_11__** %289, align 8
  %291 = load i32, i32* %8, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %290, i64 %292
  %294 = load i32, i32* %13, align 4
  %295 = load i64, i64* %12, align 8
  %296 = call %struct.TYPE_9__* @fix_new_exp(%struct.TYPE_10__* %281, i8* %288, i32 4, %struct.TYPE_11__* %293, i32 %294, i64 %295)
  store %struct.TYPE_9__* %296, %struct.TYPE_9__** %11, align 8
  %297 = getelementptr inbounds %struct.spu_insn, %struct.spu_insn* %7, i32 0, i32 0
  %298 = load i32*, i32** %297, align 8
  %299 = load i32, i32* %8, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i32, i32* %298, i64 %300
  %302 = load i32, i32* %301, align 4
  %303 = sext i32 %302 to i64
  %304 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %305 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %304, i32 0, i32 0
  %306 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %305, i32 0, i32 0
  store i64 %303, i64* %306, align 8
  %307 = getelementptr inbounds %struct.spu_insn, %struct.spu_insn* %7, i32 0, i32 2
  %308 = load i32, i32* %307, align 8
  %309 = sext i32 %308 to i64
  %310 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %311 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %310, i32 0, i32 0
  %312 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %311, i32 0, i32 1
  store i64 %309, i64* %312, align 8
  br label %313

313:                                              ; preds = %280, %227
  br label %314

314:                                              ; preds = %313
  %315 = load i32, i32* %8, align 4
  %316 = add nsw i32 %315, 1
  store i32 %316, i32* %8, align 4
  br label %223

317:                                              ; preds = %223
  %318 = call i32 @dwarf2_emit_insn(i32 4)
  br label %319

319:                                              ; preds = %317, %148, %67, %54
  ret void
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i32 @ISSPACE(i8 signext) #1

declare dso_local i64 @hash_find(i32, i8*) #1

declare dso_local i32 @as_bad(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @calcop(%struct.spu_opcode*, i8*, %struct.spu_insn*) #1

declare dso_local i32 @as_fatal(i32, i32, i32) #1

declare dso_local i32 @insn_fmt_string(%struct.spu_opcode*) #1

declare dso_local i32 @as_warn(i32, ...) #1

declare dso_local i8* @frag_more(i32) #1

declare dso_local i32 @md_number_to_chars(i8*, i32, i32) #1

declare dso_local %struct.TYPE_9__* @fix_new_exp(%struct.TYPE_10__*, i8*, i32, %struct.TYPE_11__*, i32, i64) #1

declare dso_local i32 @dwarf2_emit_insn(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
