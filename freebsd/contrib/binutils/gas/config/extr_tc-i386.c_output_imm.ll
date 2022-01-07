; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-i386.c_output_imm.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-i386.c_output_imm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32*, i64, %struct.TYPE_11__*, i32*, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64, i64, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i8*, i32, %struct.TYPE_12__* }
%struct.TYPE_13__ = type { i64 }

@i = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@Imm = common dso_local global i32 0, align 4
@O_constant = common dso_local global i64 0, align 8
@Imm32S = common dso_local global i32 0, align 4
@QWORD_MNEM_SUFFIX = common dso_local global i64 0, align 8
@No_lSuf = common dso_local global i32 0, align 4
@BFD_RELOC_32 = common dso_local global i32 0, align 4
@BFD_RELOC_X86_64_32S = common dso_local global i32 0, align 4
@BFD_RELOC_64 = common dso_local global i32 0, align 4
@GOT_symbol = common dso_local global i64 0, align 8
@O_symbol = common dso_local global i64 0, align 8
@O_add = common dso_local global i64 0, align 8
@O_subtract = common dso_local global i64 0, align 8
@frag_now = common dso_local global %struct.TYPE_12__* null, align 8
@object_64bit = common dso_local global i32 0, align 4
@BFD_RELOC_386_GOTPC = common dso_local global i32 0, align 4
@BFD_RELOC_X86_64_GOTPC32 = common dso_local global i32 0, align 4
@BFD_RELOC_X86_64_GOTPC64 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, i32)* @output_imm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @output_imm(%struct.TYPE_12__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %259, %2
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @i, i32 0, i32 0), align 8
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %18, label %262

18:                                               ; preds = %14
  %19 = load i32*, i32** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @i, i32 0, i32 1), align 8
  %20 = load i32, i32* %6, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @Imm, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %258

27:                                               ; preds = %18
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @i, i32 0, i32 3), align 8
  %29 = load i32, i32* %6, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @O_constant, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %57

38:                                               ; preds = %27
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @imm_size(i32 %39)
  store i32 %40, i32* %7, align 4
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @i, i32 0, i32 3), align 8
  %42 = load i32, i32* %6, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @offset_in_range(i32 %48, i32 %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %7, align 4
  %52 = call i8* @frag_more(i32 %51)
  store i8* %52, i8** %5, align 8
  %53 = load i8*, i8** %5, align 8
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @md_number_to_chars(i8* %53, i32 %54, i32 %55)
  br label %257

57:                                               ; preds = %27
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @imm_size(i32 %58)
  store i32 %59, i32* %10, align 4
  %60 = load i32*, i32** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @i, i32 0, i32 1), align 8
  %61 = load i32, i32* %6, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @Imm32S, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %81

68:                                               ; preds = %57
  %69 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @i, i32 0, i32 2), align 8
  %70 = load i64, i64* @QWORD_MNEM_SUFFIX, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %80, label %72

72:                                               ; preds = %68
  %73 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @i, i32 0, i32 2), align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %81, label %75

75:                                               ; preds = %72
  %76 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @i, i32 0, i32 5, i32 0), align 8
  %77 = load i32, i32* @No_lSuf, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %75, %68
  store i32 1, i32* %11, align 4
  br label %82

81:                                               ; preds = %75, %72, %57
  store i32 0, i32* %11, align 4
  br label %82

82:                                               ; preds = %81, %80
  %83 = load i32, i32* %10, align 4
  %84 = call i8* @frag_more(i32 %83)
  store i8* %84, i8** %5, align 8
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* %11, align 4
  %87 = load i32*, i32** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @i, i32 0, i32 4), align 8
  %88 = load i32, i32* %6, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @reloc(i32 %85, i32 0, i32 %86, i32 %91)
  store i32 %92, i32* %9, align 4
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* @BFD_RELOC_32, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %104, label %96

96:                                               ; preds = %82
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* @BFD_RELOC_X86_64_32S, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %104, label %100

100:                                              ; preds = %96
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* @BFD_RELOC_64, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %238

104:                                              ; preds = %100, %96, %82
  %105 = load i64, i64* @GOT_symbol, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %238

107:                                              ; preds = %104
  %108 = load i64, i64* @GOT_symbol, align 8
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @i, i32 0, i32 3), align 8
  %110 = load i32, i32* %6, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = icmp eq i64 %108, %116
  br i1 %117, label %118, label %238

118:                                              ; preds = %107
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @i, i32 0, i32 3), align 8
  %120 = load i32, i32* %6, align 4
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @O_symbol, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %154, label %129

129:                                              ; preds = %118
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @i, i32 0, i32 3), align 8
  %131 = load i32, i32* %6, align 4
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @O_add, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %238

140:                                              ; preds = %129
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @i, i32 0, i32 3), align 8
  %142 = load i32, i32* %6, align 4
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = call %struct.TYPE_13__* @symbol_get_value_expression(i32 %148)
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @O_subtract, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %238

154:                                              ; preds = %140, %118
  %155 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** @frag_now, align 8
  %157 = icmp eq %struct.TYPE_12__* %155, %156
  br i1 %157, label %158, label %170

158:                                              ; preds = %154
  %159 = load i8*, i8** %5, align 8
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** @frag_now, align 8
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 0
  %162 = load i8*, i8** %161, align 8
  %163 = ptrtoint i8* %159 to i64
  %164 = ptrtoint i8* %162 to i64
  %165 = sub i64 %163, %164
  %166 = load i32, i32* %4, align 4
  %167 = sext i32 %166 to i64
  %168 = sub nsw i64 %165, %167
  %169 = trunc i64 %168 to i32
  store i32 %169, i32* %12, align 4
  br label %210

170:                                              ; preds = %154
  %171 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* %4, align 4
  %175 = sub nsw i32 %173, %174
  store i32 %175, i32* %12, align 4
  %176 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i32 0, i32 2
  %178 = load %struct.TYPE_12__*, %struct.TYPE_12__** %177, align 8
  store %struct.TYPE_12__* %178, %struct.TYPE_12__** %13, align 8
  br label %179

179:                                              ; preds = %194, %170
  %180 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %181 = icmp ne %struct.TYPE_12__* %180, null
  br i1 %181, label %182, label %186

182:                                              ; preds = %179
  %183 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %184 = load %struct.TYPE_12__*, %struct.TYPE_12__** @frag_now, align 8
  %185 = icmp ne %struct.TYPE_12__* %183, %184
  br label %186

186:                                              ; preds = %182, %179
  %187 = phi i1 [ false, %179 ], [ %185, %182 ]
  br i1 %187, label %188, label %198

188:                                              ; preds = %186
  %189 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %190 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* %12, align 4
  %193 = add nsw i32 %192, %191
  store i32 %193, i32* %12, align 4
  br label %194

194:                                              ; preds = %188
  %195 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %196 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %195, i32 0, i32 2
  %197 = load %struct.TYPE_12__*, %struct.TYPE_12__** %196, align 8
  store %struct.TYPE_12__* %197, %struct.TYPE_12__** %13, align 8
  br label %179

198:                                              ; preds = %186
  %199 = load i8*, i8** %5, align 8
  %200 = load %struct.TYPE_12__*, %struct.TYPE_12__** @frag_now, align 8
  %201 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %200, i32 0, i32 0
  %202 = load i8*, i8** %201, align 8
  %203 = ptrtoint i8* %199 to i64
  %204 = ptrtoint i8* %202 to i64
  %205 = sub i64 %203, %204
  %206 = load i32, i32* %12, align 4
  %207 = sext i32 %206 to i64
  %208 = add nsw i64 %207, %205
  %209 = trunc i64 %208 to i32
  store i32 %209, i32* %12, align 4
  br label %210

210:                                              ; preds = %198, %158
  %211 = load i32, i32* @object_64bit, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %215, label %213

213:                                              ; preds = %210
  %214 = load i32, i32* @BFD_RELOC_386_GOTPC, align 4
  store i32 %214, i32* %9, align 4
  br label %227

215:                                              ; preds = %210
  %216 = load i32, i32* %10, align 4
  %217 = icmp eq i32 %216, 4
  br i1 %217, label %218, label %220

218:                                              ; preds = %215
  %219 = load i32, i32* @BFD_RELOC_X86_64_GOTPC32, align 4
  store i32 %219, i32* %9, align 4
  br label %226

220:                                              ; preds = %215
  %221 = load i32, i32* %10, align 4
  %222 = icmp eq i32 %221, 8
  br i1 %222, label %223, label %225

223:                                              ; preds = %220
  %224 = load i32, i32* @BFD_RELOC_X86_64_GOTPC64, align 4
  store i32 %224, i32* %9, align 4
  br label %225

225:                                              ; preds = %223, %220
  br label %226

226:                                              ; preds = %225, %218
  br label %227

227:                                              ; preds = %226, %213
  %228 = load i32, i32* %12, align 4
  %229 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @i, i32 0, i32 3), align 8
  %230 = load i32, i32* %6, align 4
  %231 = zext i32 %230 to i64
  %232 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %229, i64 %231
  %233 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %232, i32 0, i32 0
  %234 = load %struct.TYPE_15__*, %struct.TYPE_15__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %234, i32 0, i32 2
  %236 = load i32, i32* %235, align 8
  %237 = add nsw i32 %236, %228
  store i32 %237, i32* %235, align 8
  br label %238

238:                                              ; preds = %227, %140, %129, %107, %104, %100
  %239 = load %struct.TYPE_12__*, %struct.TYPE_12__** @frag_now, align 8
  %240 = load i8*, i8** %5, align 8
  %241 = load %struct.TYPE_12__*, %struct.TYPE_12__** @frag_now, align 8
  %242 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %241, i32 0, i32 0
  %243 = load i8*, i8** %242, align 8
  %244 = ptrtoint i8* %240 to i64
  %245 = ptrtoint i8* %243 to i64
  %246 = sub i64 %244, %245
  %247 = trunc i64 %246 to i32
  %248 = load i32, i32* %10, align 4
  %249 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @i, i32 0, i32 3), align 8
  %250 = load i32, i32* %6, align 4
  %251 = zext i32 %250 to i64
  %252 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %249, i64 %251
  %253 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %252, i32 0, i32 0
  %254 = load %struct.TYPE_15__*, %struct.TYPE_15__** %253, align 8
  %255 = load i32, i32* %9, align 4
  %256 = call i32 @fix_new_exp(%struct.TYPE_12__* %239, i32 %247, i32 %248, %struct.TYPE_15__* %254, i32 0, i32 %255)
  br label %257

257:                                              ; preds = %238, %38
  br label %258

258:                                              ; preds = %257, %18
  br label %259

259:                                              ; preds = %258
  %260 = load i32, i32* %6, align 4
  %261 = add i32 %260, 1
  store i32 %261, i32* %6, align 4
  br label %14

262:                                              ; preds = %14
  ret void
}

declare dso_local i32 @imm_size(i32) #1

declare dso_local i32 @offset_in_range(i32, i32) #1

declare dso_local i8* @frag_more(i32) #1

declare dso_local i32 @md_number_to_chars(i8*, i32, i32) #1

declare dso_local i32 @reloc(i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_13__* @symbol_get_value_expression(i32) #1

declare dso_local i32 @fix_new_exp(%struct.TYPE_12__*, i32, i32, %struct.TYPE_15__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
