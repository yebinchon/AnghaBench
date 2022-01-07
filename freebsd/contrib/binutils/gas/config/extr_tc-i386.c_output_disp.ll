; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-i386.c_output_disp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-i386.c_output_disp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32*, i32*, %struct.TYPE_11__*, i32*, i64 }
%struct.TYPE_11__ = type { %struct.TYPE_15__*, %struct.TYPE_10__* }
%struct.TYPE_15__ = type { i64, i32, i64, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i8*, i32, %struct.TYPE_12__* }
%struct.TYPE_13__ = type { i64 }

@i = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@Disp = common dso_local global i32 0, align 4
@O_constant = common dso_local global i64 0, align 8
@Disp32S = common dso_local global i32 0, align 4
@Operand_PCrel = common dso_local global i32 0, align 4
@Disp8 = common dso_local global i32 0, align 4
@Imm = common dso_local global i32 0, align 4
@GOT_symbol = common dso_local global i64 0, align 8
@BFD_RELOC_32 = common dso_local global i32 0, align 4
@BFD_RELOC_X86_64_32S = common dso_local global i32 0, align 4
@BFD_RELOC_64 = common dso_local global i32 0, align 4
@object_64bit = common dso_local global i64 0, align 8
@O_symbol = common dso_local global i64 0, align 8
@O_add = common dso_local global i64 0, align 8
@O_subtract = common dso_local global i64 0, align 8
@BFD_RELOC_32_PCREL = common dso_local global i32 0, align 4
@frag_now = common dso_local global %struct.TYPE_12__* null, align 8
@BFD_RELOC_386_GOTPC = common dso_local global i32 0, align 4
@BFD_RELOC_X86_64_GOTPC64 = common dso_local global i32 0, align 4
@BFD_RELOC_X86_64_GOTPC32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, i32)* @output_disp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @output_disp(%struct.TYPE_12__* %0, i32 %1) #0 {
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
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %319, %2
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @i, i32 0, i32 0), align 8
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %21, label %322

21:                                               ; preds = %17
  %22 = load i32*, i32** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @i, i32 0, i32 1), align 8
  %23 = load i32, i32* %6, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @Disp, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %318

30:                                               ; preds = %21
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @i, i32 0, i32 3), align 8
  %32 = load i32, i32* %6, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @O_constant, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %60

41:                                               ; preds = %30
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @disp_size(i32 %42)
  store i32 %43, i32* %7, align 4
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @i, i32 0, i32 3), align 8
  %45 = load i32, i32* %6, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @offset_in_range(i32 %51, i32 %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %7, align 4
  %55 = call i8* @frag_more(i32 %54)
  store i8* %55, i8** %5, align 8
  %56 = load i8*, i8** %5, align 8
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @md_number_to_chars(i8* %56, i32 %57, i32 %58)
  br label %317

60:                                               ; preds = %30
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @disp_size(i32 %61)
  store i32 %62, i32* %10, align 4
  %63 = load i32*, i32** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @i, i32 0, i32 1), align 8
  %64 = load i32, i32* %6, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @Disp32S, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  %71 = zext i1 %70 to i32
  store i32 %71, i32* %11, align 4
  %72 = load i32*, i32** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @i, i32 0, i32 2), align 8
  %73 = load i32, i32* %6, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @Operand_PCrel, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  %80 = zext i1 %79 to i32
  store i32 %80, i32* %12, align 4
  %81 = load i32*, i32** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @i, i32 0, i32 1), align 8
  %82 = load i32, i32* %6, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @Disp8, align 4
  %87 = and i32 %85, %86
  %88 = icmp eq i32 %87, 0
  %89 = zext i1 %88 to i32
  %90 = call i32 @assert(i32 %89)
  %91 = load i32, i32* %12, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %136

93:                                               ; preds = %60
  %94 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @i, i32 0, i32 5), align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %136

96:                                               ; preds = %93
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %97

97:                                               ; preds = %128, %96
  %98 = load i32, i32* %13, align 4
  %99 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @i, i32 0, i32 0), align 8
  %100 = icmp ult i32 %98, %99
  br i1 %100, label %101, label %131

101:                                              ; preds = %97
  %102 = load i32*, i32** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @i, i32 0, i32 1), align 8
  %103 = load i32, i32* %13, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @Imm, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %127

110:                                              ; preds = %101
  %111 = load i32, i32* %14, align 4
  %112 = icmp eq i32 %111, 0
  %113 = zext i1 %112 to i32
  %114 = call i32 @assert(i32 %113)
  %115 = load i32, i32* %13, align 4
  %116 = call i32 @imm_size(i32 %115)
  store i32 %116, i32* %14, align 4
  %117 = load i32, i32* %14, align 4
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @i, i32 0, i32 3), align 8
  %119 = load i32, i32* %6, align 4
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = sub nsw i32 %125, %117
  store i32 %126, i32* %124, align 8
  br label %127

127:                                              ; preds = %110, %101
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %13, align 4
  %130 = add i32 %129, 1
  store i32 %130, i32* %13, align 4
  br label %97

131:                                              ; preds = %97
  %132 = load i32, i32* %14, align 4
  %133 = icmp ne i32 %132, 0
  %134 = zext i1 %133 to i32
  %135 = call i32 @assert(i32 %134)
  br label %136

136:                                              ; preds = %131, %93, %60
  %137 = load i32, i32* %10, align 4
  %138 = call i8* @frag_more(i32 %137)
  store i8* %138, i8** %5, align 8
  %139 = load i32, i32* %10, align 4
  %140 = load i32, i32* %12, align 4
  %141 = load i32, i32* %11, align 4
  %142 = load i32*, i32** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @i, i32 0, i32 4), align 8
  %143 = load i32, i32* %6, align 4
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @reloc(i32 %139, i32 %140, i32 %141, i32 %146)
  store i32 %147, i32* %9, align 4
  %148 = load i64, i64* @GOT_symbol, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %297

150:                                              ; preds = %136
  %151 = load i64, i64* @GOT_symbol, align 8
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @i, i32 0, i32 3), align 8
  %153 = load i32, i32* %6, align 4
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 0
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %157, i32 0, i32 2
  %159 = load i64, i64* %158, align 8
  %160 = icmp eq i64 %151, %159
  br i1 %160, label %161, label %297

161:                                              ; preds = %150
  %162 = load i32, i32* %9, align 4
  %163 = load i32, i32* @BFD_RELOC_32, align 4
  %164 = icmp eq i32 %162, %163
  br i1 %164, label %176, label %165

165:                                              ; preds = %161
  %166 = load i32, i32* %9, align 4
  %167 = load i32, i32* @BFD_RELOC_X86_64_32S, align 4
  %168 = icmp eq i32 %166, %167
  br i1 %168, label %176, label %169

169:                                              ; preds = %165
  %170 = load i32, i32* %9, align 4
  %171 = load i32, i32* @BFD_RELOC_64, align 4
  %172 = icmp eq i32 %170, %171
  br i1 %172, label %173, label %212

173:                                              ; preds = %169
  %174 = load i64, i64* @object_64bit, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %212

176:                                              ; preds = %173, %165, %161
  %177 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @i, i32 0, i32 3), align 8
  %178 = load i32, i32* %6, align 4
  %179 = zext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i32 0, i32 0
  %182 = load %struct.TYPE_15__*, %struct.TYPE_15__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* @O_symbol, align 8
  %186 = icmp eq i64 %184, %185
  br i1 %186, label %216, label %187

187:                                              ; preds = %176
  %188 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @i, i32 0, i32 3), align 8
  %189 = load i32, i32* %6, align 4
  %190 = zext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %188, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %191, i32 0, i32 0
  %193 = load %struct.TYPE_15__*, %struct.TYPE_15__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* @O_add, align 8
  %197 = icmp eq i64 %195, %196
  br i1 %197, label %198, label %212

198:                                              ; preds = %187
  %199 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @i, i32 0, i32 3), align 8
  %200 = load i32, i32* %6, align 4
  %201 = zext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %199, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %202, i32 0, i32 0
  %204 = load %struct.TYPE_15__*, %struct.TYPE_15__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %204, i32 0, i32 3
  %206 = load i32, i32* %205, align 8
  %207 = call %struct.TYPE_13__* @symbol_get_value_expression(i32 %206)
  %208 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = load i64, i64* @O_subtract, align 8
  %211 = icmp eq i64 %209, %210
  br i1 %211, label %216, label %212

212:                                              ; preds = %198, %187, %173, %169
  %213 = load i32, i32* %9, align 4
  %214 = load i32, i32* @BFD_RELOC_32_PCREL, align 4
  %215 = icmp eq i32 %213, %214
  br i1 %215, label %216, label %297

216:                                              ; preds = %212, %198, %176
  %217 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %218 = load %struct.TYPE_12__*, %struct.TYPE_12__** @frag_now, align 8
  %219 = icmp eq %struct.TYPE_12__* %217, %218
  br i1 %219, label %220, label %232

220:                                              ; preds = %216
  %221 = load i8*, i8** %5, align 8
  %222 = load %struct.TYPE_12__*, %struct.TYPE_12__** @frag_now, align 8
  %223 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %222, i32 0, i32 0
  %224 = load i8*, i8** %223, align 8
  %225 = ptrtoint i8* %221 to i64
  %226 = ptrtoint i8* %224 to i64
  %227 = sub i64 %225, %226
  %228 = load i32, i32* %4, align 4
  %229 = sext i32 %228 to i64
  %230 = sub nsw i64 %227, %229
  %231 = trunc i64 %230 to i32
  store i32 %231, i32* %15, align 4
  br label %272

232:                                              ; preds = %216
  %233 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %234 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 8
  %236 = load i32, i32* %4, align 4
  %237 = sub nsw i32 %235, %236
  store i32 %237, i32* %15, align 4
  %238 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %239 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %238, i32 0, i32 2
  %240 = load %struct.TYPE_12__*, %struct.TYPE_12__** %239, align 8
  store %struct.TYPE_12__* %240, %struct.TYPE_12__** %16, align 8
  br label %241

241:                                              ; preds = %256, %232
  %242 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %243 = icmp ne %struct.TYPE_12__* %242, null
  br i1 %243, label %244, label %248

244:                                              ; preds = %241
  %245 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %246 = load %struct.TYPE_12__*, %struct.TYPE_12__** @frag_now, align 8
  %247 = icmp ne %struct.TYPE_12__* %245, %246
  br label %248

248:                                              ; preds = %244, %241
  %249 = phi i1 [ false, %241 ], [ %247, %244 ]
  br i1 %249, label %250, label %260

250:                                              ; preds = %248
  %251 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %252 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 8
  %254 = load i32, i32* %15, align 4
  %255 = add nsw i32 %254, %253
  store i32 %255, i32* %15, align 4
  br label %256

256:                                              ; preds = %250
  %257 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %258 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %257, i32 0, i32 2
  %259 = load %struct.TYPE_12__*, %struct.TYPE_12__** %258, align 8
  store %struct.TYPE_12__* %259, %struct.TYPE_12__** %16, align 8
  br label %241

260:                                              ; preds = %248
  %261 = load i8*, i8** %5, align 8
  %262 = load %struct.TYPE_12__*, %struct.TYPE_12__** @frag_now, align 8
  %263 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %262, i32 0, i32 0
  %264 = load i8*, i8** %263, align 8
  %265 = ptrtoint i8* %261 to i64
  %266 = ptrtoint i8* %264 to i64
  %267 = sub i64 %265, %266
  %268 = load i32, i32* %15, align 4
  %269 = sext i32 %268 to i64
  %270 = add nsw i64 %269, %267
  %271 = trunc i64 %270 to i32
  store i32 %271, i32* %15, align 4
  br label %272

272:                                              ; preds = %260, %220
  %273 = load i64, i64* @object_64bit, align 8
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %287, label %275

275:                                              ; preds = %272
  %276 = load i32, i32* @BFD_RELOC_386_GOTPC, align 4
  store i32 %276, i32* %9, align 4
  %277 = load i32, i32* %15, align 4
  %278 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @i, i32 0, i32 3), align 8
  %279 = load i32, i32* %6, align 4
  %280 = zext i32 %279 to i64
  %281 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %278, i64 %280
  %282 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %281, i32 0, i32 1
  %283 = load %struct.TYPE_10__*, %struct.TYPE_10__** %282, align 8
  %284 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 4
  %286 = add nsw i32 %285, %277
  store i32 %286, i32* %284, align 4
  br label %296

287:                                              ; preds = %272
  %288 = load i32, i32* %9, align 4
  %289 = load i32, i32* @BFD_RELOC_64, align 4
  %290 = icmp eq i32 %288, %289
  br i1 %290, label %291, label %293

291:                                              ; preds = %287
  %292 = load i32, i32* @BFD_RELOC_X86_64_GOTPC64, align 4
  store i32 %292, i32* %9, align 4
  br label %295

293:                                              ; preds = %287
  %294 = load i32, i32* @BFD_RELOC_X86_64_GOTPC32, align 4
  store i32 %294, i32* %9, align 4
  br label %295

295:                                              ; preds = %293, %291
  br label %296

296:                                              ; preds = %295, %275
  br label %297

297:                                              ; preds = %296, %212, %150, %136
  %298 = load %struct.TYPE_12__*, %struct.TYPE_12__** @frag_now, align 8
  %299 = load i8*, i8** %5, align 8
  %300 = load %struct.TYPE_12__*, %struct.TYPE_12__** @frag_now, align 8
  %301 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %300, i32 0, i32 0
  %302 = load i8*, i8** %301, align 8
  %303 = ptrtoint i8* %299 to i64
  %304 = ptrtoint i8* %302 to i64
  %305 = sub i64 %303, %304
  %306 = trunc i64 %305 to i32
  %307 = load i32, i32* %10, align 4
  %308 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @i, i32 0, i32 3), align 8
  %309 = load i32, i32* %6, align 4
  %310 = zext i32 %309 to i64
  %311 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %308, i64 %310
  %312 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %311, i32 0, i32 0
  %313 = load %struct.TYPE_15__*, %struct.TYPE_15__** %312, align 8
  %314 = load i32, i32* %12, align 4
  %315 = load i32, i32* %9, align 4
  %316 = call i32 @fix_new_exp(%struct.TYPE_12__* %298, i32 %306, i32 %307, %struct.TYPE_15__* %313, i32 %314, i32 %315)
  br label %317

317:                                              ; preds = %297, %41
  br label %318

318:                                              ; preds = %317, %21
  br label %319

319:                                              ; preds = %318
  %320 = load i32, i32* %6, align 4
  %321 = add i32 %320, 1
  store i32 %321, i32* %6, align 4
  br label %17

322:                                              ; preds = %17
  ret void
}

declare dso_local i32 @disp_size(i32) #1

declare dso_local i32 @offset_in_range(i32, i32) #1

declare dso_local i8* @frag_more(i32) #1

declare dso_local i32 @md_number_to_chars(i8*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @imm_size(i32) #1

declare dso_local i32 @reloc(i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_13__* @symbol_get_value_expression(i32) #1

declare dso_local i32 @fix_new_exp(%struct.TYPE_12__*, i32, i32, %struct.TYPE_15__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
