; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-i386.c_output_insn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-i386.c_output_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32*, i64, i64, %struct.TYPE_10__, %struct.TYPE_9__*, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }

@frag_now = common dso_local global i32* null, align 8
@i = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@Jump = common dso_local global i32 0, align 4
@JumpByte = common dso_local global i32 0, align 4
@JumpDword = common dso_local global i32 0, align 4
@JumpInterSegment = common dso_local global i32 0, align 4
@CpuSSSE3 = common dso_local global i32 0, align 4
@CpuSSE4 = common dso_local global i32 0, align 4
@CpuAES = common dso_local global i32 0, align 4
@CpuPCLMUL = common dso_local global i32 0, align 4
@CpuABM = common dso_local global i32 0, align 4
@CpuPadLock = common dso_local global i32 0, align 4
@REPE_PREFIX_OPCODE = common dso_local global i32 0, align 4
@LOCKREP_PREFIX = common dso_local global i64 0, align 8
@Modrm = common dso_local global i32 0, align 4
@ESCAPE_TO_TWO_BYTE_ADDRESSING = common dso_local global i32 0, align 4
@Reg16 = common dso_local global i32 0, align 4
@flag_debug = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @output_insn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @output_insn() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = call i32 @dwarf2_emit_insn(i32 0)
  %7 = load i32*, i32** @frag_now, align 8
  store i32* %7, i32** %1, align 8
  %8 = call i32 (...) @frag_now_fix()
  store i32 %8, i32* %2, align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @i, i32 0, i32 6, i32 0), align 4
  %10 = load i32, i32* @Jump, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %0
  %14 = call i32 (...) @output_branch()
  br label %259

15:                                               ; preds = %0
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @i, i32 0, i32 6, i32 0), align 4
  %17 = load i32, i32* @JumpByte, align 4
  %18 = load i32, i32* @JumpDword, align 4
  %19 = or i32 %17, %18
  %20 = and i32 %16, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = call i32 (...) @output_jump()
  br label %258

24:                                               ; preds = %15
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @i, i32 0, i32 6, i32 0), align 4
  %26 = load i32, i32* @JumpInterSegment, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = call i32 (...) @output_interseg_jump()
  br label %257

31:                                               ; preds = %24
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @i, i32 0, i32 6, i32 1), align 4
  %33 = load i32, i32* @CpuSSSE3, align 4
  %34 = load i32, i32* @CpuSSE4, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @CpuAES, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @CpuPCLMUL, align 4
  %39 = or i32 %37, %38
  %40 = and i32 %32, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %56

42:                                               ; preds = %31
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @i, i32 0, i32 6, i32 1), align 4
  %44 = load i32, i32* @CpuABM, align 4
  %45 = and i32 %43, %44
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %42
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @i, i32 0, i32 6, i32 2), align 4
  %49 = and i32 %48, -16777216
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @i, i32 0, i32 6, i32 2), align 4
  %53 = ashr i32 %52, 24
  %54 = and i32 %53, 255
  store i32 %54, i32* %5, align 4
  br label %89

55:                                               ; preds = %47
  br label %110

56:                                               ; preds = %42, %31
  %57 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @i, i32 0, i32 6, i32 2), align 4
  %58 = icmp eq i32 %57, 1712273536
  br i1 %58, label %65, label %59

59:                                               ; preds = %56
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @i, i32 0, i32 6, i32 2), align 4
  %61 = icmp eq i32 %60, 1712273537
  br i1 %61, label %65, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @i, i32 0, i32 6, i32 2), align 4
  %64 = icmp eq i32 %63, 1712273538
  br i1 %64, label %65, label %76

65:                                               ; preds = %62, %59, %56
  %66 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @i, i32 0, i32 6, i32 2), align 4
  %67 = and i32 %66, -16777216
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %65
  %70 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @i, i32 0, i32 6, i32 2), align 4
  %71 = ashr i32 %70, 24
  %72 = and i32 %71, 255
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @add_prefix(i32 %73)
  br label %75

75:                                               ; preds = %69, %65
  br label %109

76:                                               ; preds = %62
  %77 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @i, i32 0, i32 6, i32 2), align 4
  %78 = and i32 %77, 16711680
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %108

80:                                               ; preds = %76
  %81 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @i, i32 0, i32 6, i32 2), align 4
  %82 = ashr i32 %81, 16
  %83 = and i32 %82, 255
  store i32 %83, i32* %5, align 4
  %84 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @i, i32 0, i32 6, i32 1), align 4
  %85 = load i32, i32* @CpuPadLock, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %104

88:                                               ; preds = %80
  br label %89

89:                                               ; preds = %88, %51
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* @REPE_PREFIX_OPCODE, align 4
  %92 = icmp ne i32 %90, %91
  br i1 %92, label %100, label %93

93:                                               ; preds = %89
  %94 = load i32*, i32** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @i, i32 0, i32 0), align 8
  %95 = load i64, i64* @LOCKREP_PREFIX, align 8
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @REPE_PREFIX_OPCODE, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %93, %89
  %101 = load i32, i32* %5, align 4
  %102 = call i32 @add_prefix(i32 %101)
  br label %103

103:                                              ; preds = %100, %93
  br label %107

104:                                              ; preds = %80
  %105 = load i32, i32* %5, align 4
  %106 = call i32 @add_prefix(i32 %105)
  br label %107

107:                                              ; preds = %104, %103
  br label %108

108:                                              ; preds = %107, %76
  br label %109

109:                                              ; preds = %108, %75
  br label %110

110:                                              ; preds = %109, %55
  %111 = load i32*, i32** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @i, i32 0, i32 0), align 8
  %112 = bitcast i32* %111 to i8*
  store i8* %112, i8** %4, align 8
  br label %113

113:                                              ; preds = %131, %110
  %114 = load i8*, i8** %4, align 8
  %115 = load i32*, i32** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @i, i32 0, i32 0), align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 2
  %117 = bitcast i32* %116 to i8*
  %118 = icmp ult i8* %114, %117
  br i1 %118, label %119, label %134

119:                                              ; preds = %113
  %120 = load i8*, i8** %4, align 8
  %121 = load i8, i8* %120, align 1
  %122 = icmp ne i8 %121, 0
  br i1 %122, label %123, label %130

123:                                              ; preds = %119
  %124 = call i8* @frag_more(i32 1)
  store i8* %124, i8** %3, align 8
  %125 = load i8*, i8** %3, align 8
  %126 = load i8*, i8** %4, align 8
  %127 = load i8, i8* %126, align 1
  %128 = zext i8 %127 to i32
  %129 = call i32 @md_number_to_chars(i8* %125, i32 %128, i32 1)
  br label %130

130:                                              ; preds = %123, %119
  br label %131

131:                                              ; preds = %130
  %132 = load i8*, i8** %4, align 8
  %133 = getelementptr inbounds i8, i8* %132, i32 1
  store i8* %133, i8** %4, align 8
  br label %113

134:                                              ; preds = %113
  %135 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @i, i32 0, i32 6, i32 2), align 4
  %136 = call i64 @fits_in_unsigned_byte(i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %134
  %139 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @i, i32 0, i32 6, i32 2), align 4
  %140 = call i32 @FRAG_APPEND_1_CHAR(i32 %139)
  br label %196

141:                                              ; preds = %134
  %142 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @i, i32 0, i32 6, i32 1), align 4
  %143 = load i32, i32* @CpuSSSE3, align 4
  %144 = load i32, i32* @CpuSSE4, align 4
  %145 = or i32 %143, %144
  %146 = load i32, i32* @CpuAES, align 4
  %147 = or i32 %145, %146
  %148 = load i32, i32* @CpuPCLMUL, align 4
  %149 = or i32 %147, %148
  %150 = and i32 %142, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %165

152:                                              ; preds = %141
  %153 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @i, i32 0, i32 6, i32 1), align 4
  %154 = load i32, i32* @CpuABM, align 4
  %155 = and i32 %153, %154
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %165

157:                                              ; preds = %152
  %158 = call i8* @frag_more(i32 3)
  store i8* %158, i8** %3, align 8
  %159 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @i, i32 0, i32 6, i32 2), align 4
  %160 = ashr i32 %159, 16
  %161 = and i32 %160, 255
  %162 = trunc i32 %161 to i8
  %163 = load i8*, i8** %3, align 8
  %164 = getelementptr inbounds i8, i8* %163, i32 1
  store i8* %164, i8** %3, align 8
  store i8 %162, i8* %163, align 1
  br label %185

165:                                              ; preds = %152, %141
  %166 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @i, i32 0, i32 6, i32 2), align 4
  %167 = icmp eq i32 %166, 1712273536
  br i1 %167, label %174, label %168

168:                                              ; preds = %165
  %169 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @i, i32 0, i32 6, i32 2), align 4
  %170 = icmp eq i32 %169, 1712273537
  br i1 %170, label %174, label %171

171:                                              ; preds = %168
  %172 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @i, i32 0, i32 6, i32 2), align 4
  %173 = icmp eq i32 %172, 1712273538
  br i1 %173, label %174, label %182

174:                                              ; preds = %171, %168, %165
  %175 = call i8* @frag_more(i32 3)
  store i8* %175, i8** %3, align 8
  %176 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @i, i32 0, i32 6, i32 2), align 4
  %177 = ashr i32 %176, 16
  %178 = and i32 %177, 255
  %179 = trunc i32 %178 to i8
  %180 = load i8*, i8** %3, align 8
  %181 = getelementptr inbounds i8, i8* %180, i32 1
  store i8* %181, i8** %3, align 8
  store i8 %179, i8* %180, align 1
  br label %184

182:                                              ; preds = %171
  %183 = call i8* @frag_more(i32 2)
  store i8* %183, i8** %3, align 8
  br label %184

184:                                              ; preds = %182, %174
  br label %185

185:                                              ; preds = %184, %157
  %186 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @i, i32 0, i32 6, i32 2), align 4
  %187 = ashr i32 %186, 8
  %188 = and i32 %187, 255
  %189 = trunc i32 %188 to i8
  %190 = load i8*, i8** %3, align 8
  %191 = getelementptr inbounds i8, i8* %190, i32 1
  store i8* %191, i8** %3, align 8
  store i8 %189, i8* %190, align 1
  %192 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @i, i32 0, i32 6, i32 2), align 4
  %193 = and i32 %192, 255
  %194 = trunc i32 %193 to i8
  %195 = load i8*, i8** %3, align 8
  store i8 %194, i8* %195, align 1
  br label %196

196:                                              ; preds = %185, %138
  %197 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @i, i32 0, i32 6, i32 0), align 4
  %198 = load i32, i32* @Modrm, align 4
  %199 = and i32 %197, %198
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %242

201:                                              ; preds = %196
  %202 = call i8* @frag_more(i32 1)
  store i8* %202, i8** %3, align 8
  %203 = load i8*, i8** %3, align 8
  %204 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @i, i32 0, i32 5, i32 0), align 8
  %205 = shl i32 %204, 0
  %206 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @i, i32 0, i32 5, i32 1), align 4
  %207 = shl i32 %206, 3
  %208 = or i32 %205, %207
  %209 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @i, i32 0, i32 5, i32 2), align 8
  %210 = shl i32 %209, 6
  %211 = or i32 %208, %210
  %212 = call i32 @md_number_to_chars(i8* %203, i32 %211, i32 1)
  %213 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @i, i32 0, i32 5, i32 0), align 8
  %214 = load i32, i32* @ESCAPE_TO_TWO_BYTE_ADDRESSING, align 4
  %215 = icmp eq i32 %213, %214
  br i1 %215, label %216, label %241

216:                                              ; preds = %201
  %217 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @i, i32 0, i32 5, i32 2), align 8
  %218 = icmp ne i32 %217, 3
  br i1 %218, label %219, label %241

219:                                              ; preds = %216
  %220 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @i, i32 0, i32 4), align 8
  %221 = icmp ne %struct.TYPE_9__* %220, null
  br i1 %221, label %222, label %229

222:                                              ; preds = %219
  %223 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @i, i32 0, i32 4), align 8
  %224 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = load i32, i32* @Reg16, align 4
  %227 = and i32 %225, %226
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %241, label %229

229:                                              ; preds = %222, %219
  %230 = call i8* @frag_more(i32 1)
  store i8* %230, i8** %3, align 8
  %231 = load i8*, i8** %3, align 8
  %232 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @i, i32 0, i32 3, i32 0), align 8
  %233 = shl i32 %232, 0
  %234 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @i, i32 0, i32 3, i32 1), align 4
  %235 = shl i32 %234, 3
  %236 = or i32 %233, %235
  %237 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @i, i32 0, i32 3, i32 2), align 8
  %238 = shl i32 %237, 6
  %239 = or i32 %236, %238
  %240 = call i32 @md_number_to_chars(i8* %231, i32 %239, i32 1)
  br label %241

241:                                              ; preds = %229, %222, %216, %201
  br label %242

242:                                              ; preds = %241, %196
  %243 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @i, i32 0, i32 2), align 8
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %249

245:                                              ; preds = %242
  %246 = load i32*, i32** %1, align 8
  %247 = load i32, i32* %2, align 4
  %248 = call i32 @output_disp(i32* %246, i32 %247)
  br label %249

249:                                              ; preds = %245, %242
  %250 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @i, i32 0, i32 1), align 8
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %256

252:                                              ; preds = %249
  %253 = load i32*, i32** %1, align 8
  %254 = load i32, i32* %2, align 4
  %255 = call i32 @output_imm(i32* %253, i32 %254)
  br label %256

256:                                              ; preds = %252, %249
  br label %257

257:                                              ; preds = %256, %29
  br label %258

258:                                              ; preds = %257, %22
  br label %259

259:                                              ; preds = %258, %13
  ret void
}

declare dso_local i32 @dwarf2_emit_insn(i32) #1

declare dso_local i32 @frag_now_fix(...) #1

declare dso_local i32 @output_branch(...) #1

declare dso_local i32 @output_jump(...) #1

declare dso_local i32 @output_interseg_jump(...) #1

declare dso_local i32 @add_prefix(i32) #1

declare dso_local i8* @frag_more(i32) #1

declare dso_local i32 @md_number_to_chars(i8*, i32, i32) #1

declare dso_local i64 @fits_in_unsigned_byte(i32) #1

declare dso_local i32 @FRAG_APPEND_1_CHAR(i32) #1

declare dso_local i32 @output_disp(i32*, i32) #1

declare dso_local i32 @output_imm(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
