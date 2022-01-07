; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-mips.c_mips_elf64_slurp_one_reloc_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-mips.c_mips_elf64_slurp_one_reloc_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_23__** }
%struct.TYPE_23__ = type { i32, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { %struct.TYPE_23__** }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_24__ = type { i32, i64 }
%struct.TYPE_26__ = type { i32, i32, i32 }
%struct.TYPE_25__ = type { i32, i32, i64, %struct.TYPE_23__** }
%struct.TYPE_27__ = type { i32, i64, i32, i32, i32, i32, i32 }

@FALSE = common dso_local global i64 0, align 8
@SEEK_SET = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@bfd_abs_section_ptr = common dso_local global %struct.TYPE_20__* null, align 8
@BSF_SECTION_SYM = common dso_local global i32 0, align 4
@EXEC_P = common dso_local global i32 0, align 4
@DYNAMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_22__*, %struct.TYPE_24__*, %struct.TYPE_26__*, i64, %struct.TYPE_25__*, %struct.TYPE_23__**, i64)* @mips_elf64_slurp_one_reloc_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mips_elf64_slurp_one_reloc_table(%struct.TYPE_22__* %0, %struct.TYPE_24__* %1, %struct.TYPE_26__* %2, i64 %3, %struct.TYPE_25__* %4, %struct.TYPE_23__** %5, i64 %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca %struct.TYPE_24__*, align 8
  %11 = alloca %struct.TYPE_26__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_25__*, align 8
  %14 = alloca %struct.TYPE_23__**, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_25__*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca %struct.TYPE_27__, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.TYPE_23__**, align 8
  %28 = alloca %struct.TYPE_23__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %9, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %10, align 8
  store %struct.TYPE_26__* %2, %struct.TYPE_26__** %11, align 8
  store i64 %3, i64* %12, align 8
  store %struct.TYPE_25__* %4, %struct.TYPE_25__** %13, align 8
  store %struct.TYPE_23__** %5, %struct.TYPE_23__*** %14, align 8
  store i64 %6, i64* %15, align 8
  %29 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @bfd_malloc(i32 %31)
  store i8* %32, i8** %16, align 8
  %33 = load i8*, i8** %16, align 8
  %34 = icmp eq i8* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %7
  %36 = load i64, i64* @FALSE, align 8
  store i64 %36, i64* %8, align 8
  br label %273

37:                                               ; preds = %7
  %38 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %39 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @SEEK_SET, align 4
  %43 = call i64 @bfd_seek(%struct.TYPE_22__* %38, i32 %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %56, label %45

45:                                               ; preds = %37
  %46 = load i8*, i8** %16, align 8
  %47 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %51 = call i32 @bfd_bread(i8* %46, i32 %49, %struct.TYPE_22__* %50)
  %52 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %51, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %45, %37
  br label %265

57:                                               ; preds = %45
  %58 = load i8*, i8** %16, align 8
  %59 = bitcast i8* %58 to i32*
  store i32* %59, i32** %17, align 8
  %60 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %20, align 4
  %63 = load i32, i32* %20, align 4
  %64 = sext i32 %63 to i64
  %65 = icmp eq i64 %64, 4
  br i1 %65, label %70, label %66

66:                                               ; preds = %57
  %67 = load i32, i32* %20, align 4
  %68 = sext i32 %67 to i64
  %69 = icmp eq i64 %68, 4
  br label %70

70:                                               ; preds = %66, %57
  %71 = phi i1 [ true, %57 ], [ %69, %66 ]
  %72 = zext i1 %71 to i32
  %73 = call i32 @BFD_ASSERT(i32 %72)
  %74 = load i32, i32* %20, align 4
  %75 = sext i32 %74 to i64
  %76 = icmp eq i64 %75, 4
  br i1 %76, label %77, label %79

77:                                               ; preds = %70
  %78 = load i64, i64* @FALSE, align 8
  store i64 %78, i64* %21, align 8
  br label %81

79:                                               ; preds = %70
  %80 = load i64, i64* @TRUE, align 8
  store i64 %80, i64* %21, align 8
  br label %81

81:                                               ; preds = %79, %77
  store i64 0, i64* %19, align 8
  %82 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  store %struct.TYPE_25__* %82, %struct.TYPE_25__** %18, align 8
  br label %83

83:                                               ; preds = %237, %81
  %84 = load i64, i64* %19, align 8
  %85 = load i64, i64* %12, align 8
  %86 = icmp slt i64 %84, %85
  br i1 %86, label %87, label %244

87:                                               ; preds = %83
  %88 = load i32, i32* %20, align 4
  %89 = sext i32 %88 to i64
  %90 = icmp eq i64 %89, 4
  br i1 %90, label %91, label %95

91:                                               ; preds = %87
  %92 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %93 = load i32*, i32** %17, align 8
  %94 = call i32 @mips_elf64_swap_reloca_in(%struct.TYPE_22__* %92, i32* %93, %struct.TYPE_27__* %22)
  br label %99

95:                                               ; preds = %87
  %96 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %97 = load i32*, i32** %17, align 8
  %98 = call i32 @mips_elf64_swap_reloc_in(%struct.TYPE_22__* %96, i32* %97, %struct.TYPE_27__* %22)
  br label %99

99:                                               ; preds = %95, %91
  %100 = load i64, i64* @FALSE, align 8
  store i64 %100, i64* %23, align 8
  %101 = load i64, i64* @FALSE, align 8
  store i64 %101, i64* %24, align 8
  store i32 0, i32* %25, align 4
  br label %102

102:                                              ; preds = %233, %99
  %103 = load i32, i32* %25, align 4
  %104 = icmp slt i32 %103, 3
  br i1 %104, label %105, label %236

105:                                              ; preds = %102
  %106 = load i32, i32* %25, align 4
  switch i32 %106, label %107 [
    i32 0, label %109
    i32 1, label %112
    i32 2, label %115
  ]

107:                                              ; preds = %105
  %108 = call i32 (...) @abort() #3
  unreachable

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %22, i32 0, i32 6
  %111 = load i32, i32* %110, align 8
  store i32 %111, i32* %26, align 4
  br label %118

112:                                              ; preds = %105
  %113 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %22, i32 0, i32 5
  %114 = load i32, i32* %113, align 4
  store i32 %114, i32* %26, align 4
  br label %118

115:                                              ; preds = %105
  %116 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %22, i32 0, i32 4
  %117 = load i32, i32* %116, align 8
  store i32 %117, i32* %26, align 4
  br label %118

118:                                              ; preds = %115, %112, %109
  %119 = load i32, i32* %26, align 4
  switch i32 %119, label %126 [
    i32 128, label %120
    i32 129, label %120
    i32 131, label %120
    i32 130, label %120
    i32 132, label %120
  ]

120:                                              ; preds = %118, %118, %118, %118, %118
  %121 = load %struct.TYPE_20__*, %struct.TYPE_20__** @bfd_abs_section_ptr, align 8
  %122 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %122, align 8
  %124 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %125 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %124, i32 0, i32 3
  store %struct.TYPE_23__** %123, %struct.TYPE_23__*** %125, align 8
  br label %195

126:                                              ; preds = %118
  %127 = load i64, i64* %23, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %169, label %129

129:                                              ; preds = %126
  %130 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %22, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %129
  %134 = load %struct.TYPE_20__*, %struct.TYPE_20__** @bfd_abs_section_ptr, align 8
  %135 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %135, align 8
  %137 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %138 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %137, i32 0, i32 3
  store %struct.TYPE_23__** %136, %struct.TYPE_23__*** %138, align 8
  br label %167

139:                                              ; preds = %129
  %140 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %14, align 8
  %141 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %22, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %140, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %144, i64 -1
  store %struct.TYPE_23__** %145, %struct.TYPE_23__*** %27, align 8
  %146 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %27, align 8
  %147 = load %struct.TYPE_23__*, %struct.TYPE_23__** %146, align 8
  store %struct.TYPE_23__* %147, %struct.TYPE_23__** %28, align 8
  %148 = load %struct.TYPE_23__*, %struct.TYPE_23__** %28, align 8
  %149 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @BSF_SECTION_SYM, align 4
  %152 = and i32 %150, %151
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %139
  %155 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %27, align 8
  %156 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %157 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %156, i32 0, i32 3
  store %struct.TYPE_23__** %155, %struct.TYPE_23__*** %157, align 8
  br label %166

158:                                              ; preds = %139
  %159 = load %struct.TYPE_23__*, %struct.TYPE_23__** %28, align 8
  %160 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %159, i32 0, i32 1
  %161 = load %struct.TYPE_21__*, %struct.TYPE_21__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %161, i32 0, i32 0
  %163 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %162, align 8
  %164 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %165 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %164, i32 0, i32 3
  store %struct.TYPE_23__** %163, %struct.TYPE_23__*** %165, align 8
  br label %166

166:                                              ; preds = %158, %154
  br label %167

167:                                              ; preds = %166, %133
  %168 = load i64, i64* @TRUE, align 8
  store i64 %168, i64* %23, align 8
  br label %194

169:                                              ; preds = %126
  %170 = load i64, i64* %24, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %187, label %172

172:                                              ; preds = %169
  %173 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %22, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  switch i32 %174, label %183 [
    i32 133, label %175
    i32 136, label %181
    i32 135, label %181
    i32 134, label %181
  ]

175:                                              ; preds = %172
  %176 = load %struct.TYPE_20__*, %struct.TYPE_20__** @bfd_abs_section_ptr, align 8
  %177 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %176, i32 0, i32 0
  %178 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %177, align 8
  %179 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %180 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %179, i32 0, i32 3
  store %struct.TYPE_23__** %178, %struct.TYPE_23__*** %180, align 8
  br label %185

181:                                              ; preds = %172, %172, %172
  %182 = call i32 @BFD_ASSERT(i32 0)
  br label %185

183:                                              ; preds = %172
  %184 = call i32 @BFD_ASSERT(i32 0)
  br label %185

185:                                              ; preds = %183, %181, %175
  %186 = load i64, i64* @TRUE, align 8
  store i64 %186, i64* %24, align 8
  br label %193

187:                                              ; preds = %169
  %188 = load %struct.TYPE_20__*, %struct.TYPE_20__** @bfd_abs_section_ptr, align 8
  %189 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %188, i32 0, i32 0
  %190 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %189, align 8
  %191 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %192 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %191, i32 0, i32 3
  store %struct.TYPE_23__** %190, %struct.TYPE_23__*** %192, align 8
  br label %193

193:                                              ; preds = %187, %185
  br label %194

194:                                              ; preds = %193, %167
  br label %195

195:                                              ; preds = %194, %120
  %196 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %197 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* @EXEC_P, align 4
  %200 = load i32, i32* @DYNAMIC, align 4
  %201 = or i32 %199, %200
  %202 = and i32 %198, %201
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %207, label %204

204:                                              ; preds = %195
  %205 = load i64, i64* %15, align 8
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %212

207:                                              ; preds = %204, %195
  %208 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %22, i32 0, i32 1
  %209 = load i64, i64* %208, align 8
  %210 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %211 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %210, i32 0, i32 2
  store i64 %209, i64* %211, align 8
  br label %221

212:                                              ; preds = %204
  %213 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %22, i32 0, i32 1
  %214 = load i64, i64* %213, align 8
  %215 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %216 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %215, i32 0, i32 1
  %217 = load i64, i64* %216, align 8
  %218 = sub nsw i64 %214, %217
  %219 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %220 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %219, i32 0, i32 2
  store i64 %218, i64* %220, align 8
  br label %221

221:                                              ; preds = %212, %207
  %222 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %22, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %225 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %224, i32 0, i32 1
  store i32 %223, i32* %225, align 4
  %226 = load i32, i32* %26, align 4
  %227 = load i64, i64* %21, align 8
  %228 = call i32 @mips_elf64_rtype_to_howto(i32 %226, i64 %227)
  %229 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %230 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %229, i32 0, i32 0
  store i32 %228, i32* %230, align 8
  %231 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %232 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %231, i32 1
  store %struct.TYPE_25__* %232, %struct.TYPE_25__** %18, align 8
  br label %233

233:                                              ; preds = %221
  %234 = load i32, i32* %25, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %25, align 4
  br label %102

236:                                              ; preds = %102
  br label %237

237:                                              ; preds = %236
  %238 = load i64, i64* %19, align 8
  %239 = add nsw i64 %238, 1
  store i64 %239, i64* %19, align 8
  %240 = load i32, i32* %20, align 4
  %241 = load i32*, i32** %17, align 8
  %242 = sext i32 %240 to i64
  %243 = getelementptr inbounds i32, i32* %241, i64 %242
  store i32* %243, i32** %17, align 8
  br label %83

244:                                              ; preds = %83
  %245 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %246 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %247 = ptrtoint %struct.TYPE_25__* %245 to i64
  %248 = ptrtoint %struct.TYPE_25__* %246 to i64
  %249 = sub i64 %247, %248
  %250 = sdiv exact i64 %249, 24
  %251 = sdiv i64 %250, 3
  %252 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %253 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = sext i32 %254 to i64
  %256 = add nsw i64 %255, %251
  %257 = trunc i64 %256 to i32
  store i32 %257, i32* %253, align 8
  %258 = load i8*, i8** %16, align 8
  %259 = icmp ne i8* %258, null
  br i1 %259, label %260, label %263

260:                                              ; preds = %244
  %261 = load i8*, i8** %16, align 8
  %262 = call i32 @free(i8* %261)
  br label %263

263:                                              ; preds = %260, %244
  %264 = load i64, i64* @TRUE, align 8
  store i64 %264, i64* %8, align 8
  br label %273

265:                                              ; preds = %56
  %266 = load i8*, i8** %16, align 8
  %267 = icmp ne i8* %266, null
  br i1 %267, label %268, label %271

268:                                              ; preds = %265
  %269 = load i8*, i8** %16, align 8
  %270 = call i32 @free(i8* %269)
  br label %271

271:                                              ; preds = %268, %265
  %272 = load i64, i64* @FALSE, align 8
  store i64 %272, i64* %8, align 8
  br label %273

273:                                              ; preds = %271, %263, %35
  %274 = load i64, i64* %8, align 8
  ret i64 %274
}

declare dso_local i8* @bfd_malloc(i32) #1

declare dso_local i64 @bfd_seek(%struct.TYPE_22__*, i32, i32) #1

declare dso_local i32 @bfd_bread(i8*, i32, %struct.TYPE_22__*) #1

declare dso_local i32 @BFD_ASSERT(i32) #1

declare dso_local i32 @mips_elf64_swap_reloca_in(%struct.TYPE_22__*, i32*, %struct.TYPE_27__*) #1

declare dso_local i32 @mips_elf64_swap_reloc_in(%struct.TYPE_22__*, i32*, %struct.TYPE_27__*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @mips_elf64_rtype_to_howto(i32, i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
