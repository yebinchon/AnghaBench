; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_bout.c_b_out_squirt_out_relocs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_bout.c_b_out_squirt_out_relocs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_15__** }
%struct.TYPE_15__ = type { %struct.TYPE_13__**, i32*, i32 }
%struct.relocation_info = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@howto_reloc_callj = common dso_local global i32 0, align 4
@howto_reloc_pcrel24 = common dso_local global i32 0, align 4
@howto_reloc_pcrel13 = common dso_local global i32 0, align 4
@howto_reloc_abs32code = common dso_local global i32 0, align 4
@howto_align_table = common dso_local global i32* null, align 8
@bfd_abs_section_ptr = common dso_local global %struct.TYPE_16__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_14__*)* @b_out_squirt_out_relocs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b_out_squirt_out_relocs(i32* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_15__**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.relocation_info*, align 8
  %13 = alloca %struct.relocation_info*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_15__*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca %struct.TYPE_13__*, align 8
  %22 = alloca %struct.TYPE_14__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  store i32 0, i32* %7, align 4
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %2
  %29 = load i32, i32* @TRUE, align 4
  store i32 %29, i32* %3, align 4
  br label %275

30:                                               ; preds = %2
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 2
  %33 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %32, align 8
  store %struct.TYPE_15__** %33, %struct.TYPE_15__*** %6, align 8
  %34 = load i32, i32* %11, align 4
  %35 = sext i32 %34 to i64
  %36 = mul i64 %35, 4
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* %14, align 4
  %39 = call %struct.relocation_info* @bfd_malloc(i32 %38)
  store %struct.relocation_info* %39, %struct.relocation_info** %12, align 8
  %40 = load %struct.relocation_info*, %struct.relocation_info** %12, align 8
  %41 = icmp ne %struct.relocation_info* %40, null
  br i1 %41, label %47, label %42

42:                                               ; preds = %30
  %43 = load i32, i32* %14, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = load i32, i32* @FALSE, align 4
  store i32 %46, i32* %3, align 4
  br label %275

47:                                               ; preds = %42, %30
  %48 = load i32*, i32** %4, align 8
  %49 = call i64 @bfd_header_big_endian(i32* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  store i32 128, i32* %16, align 4
  store i32 16, i32* %15, align 4
  store i32 64, i32* %17, align 4
  store i32 32, i32* %10, align 4
  store i32 2, i32* %18, align 4
  store i32 8, i32* %9, align 4
  br label %53

52:                                               ; preds = %47
  store i32 1, i32* %16, align 4
  store i32 8, i32* %15, align 4
  store i32 4, i32* %17, align 4
  store i32 2, i32* %10, align 4
  store i32 64, i32* %18, align 4
  store i32 16, i32* %9, align 4
  br label %53

53:                                               ; preds = %52, %51
  %54 = load %struct.relocation_info*, %struct.relocation_info** %12, align 8
  store %struct.relocation_info* %54, %struct.relocation_info** %13, align 8
  br label %55

55:                                               ; preds = %252, %53
  %56 = load i32, i32* %11, align 4
  %57 = icmp ugt i32 %56, 0
  br i1 %57, label %58, label %259

58:                                               ; preds = %55
  %59 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %6, align 8
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %59, align 8
  store %struct.TYPE_15__* %60, %struct.TYPE_15__** %19, align 8
  %61 = load %struct.relocation_info*, %struct.relocation_info** %13, align 8
  %62 = bitcast %struct.relocation_info* %61 to i8*
  store i8* %62, i8** %20, align 8
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %64, align 8
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %65, align 8
  store %struct.TYPE_13__* %66, %struct.TYPE_13__** %21, align 8
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %70, align 8
  store %struct.TYPE_14__* %71, %struct.TYPE_14__** %22, align 8
  %72 = load i32*, i32** %4, align 8
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load i8*, i8** %20, align 8
  %77 = call i32 @H_PUT_32(i32* %72, i32 %75, i8* %76)
  store i32 0, i32* %8, align 4
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = icmp eq i32* %80, @howto_reloc_callj
  br i1 %81, label %82, label %91

82:                                               ; preds = %58
  %83 = load i32, i32* %18, align 4
  %84 = load i32, i32* %16, align 4
  %85 = add nsw i32 %83, %84
  %86 = load i32, i32* %17, align 4
  %87 = add nsw i32 %85, %86
  %88 = trunc i32 %87 to i8
  %89 = load i8*, i8** %20, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 7
  store i8 %88, i8* %90, align 1
  br label %169

91:                                               ; preds = %58
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = icmp eq i32* %94, @howto_reloc_pcrel24
  br i1 %95, label %96, label %103

96:                                               ; preds = %91
  %97 = load i32, i32* %16, align 4
  %98 = load i32, i32* %17, align 4
  %99 = add nsw i32 %97, %98
  %100 = trunc i32 %99 to i8
  %101 = load i8*, i8** %20, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 7
  store i8 %100, i8* %102, align 1
  br label %168

103:                                              ; preds = %91
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = icmp eq i32* %106, @howto_reloc_pcrel13
  br i1 %107, label %108, label %115

108:                                              ; preds = %103
  %109 = load i32, i32* %16, align 4
  %110 = load i32, i32* %10, align 4
  %111 = add nsw i32 %109, %110
  %112 = trunc i32 %111 to i8
  %113 = load i8*, i8** %20, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 7
  store i8 %112, i8* %114, align 1
  br label %167

115:                                              ; preds = %103
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = icmp eq i32* %118, @howto_reloc_abs32code
  br i1 %119, label %120, label %127

120:                                              ; preds = %115
  %121 = load i32, i32* %17, align 4
  %122 = load i32, i32* %9, align 4
  %123 = add nsw i32 %121, %122
  %124 = trunc i32 %123 to i8
  %125 = load i8*, i8** %20, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 7
  store i8 %124, i8* %126, align 1
  br label %166

127:                                              ; preds = %115
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = load i32*, i32** @howto_align_table, align 8
  %132 = icmp uge i32* %130, %131
  br i1 %132, label %133, label %160

133:                                              ; preds = %127
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 1
  %136 = load i32*, i32** %135, align 8
  %137 = load i32*, i32** @howto_align_table, align 8
  %138 = load i32*, i32** @howto_align_table, align 8
  %139 = call i32 @ARRAY_SIZE(i32* %138)
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %137, i64 %140
  %142 = getelementptr inbounds i32, i32* %141, i64 -1
  %143 = icmp ule i32* %136, %142
  br i1 %143, label %144, label %160

144:                                              ; preds = %133
  store i32 -2, i32* %8, align 4
  store i32 0, i32* %7, align 4
  %145 = load i32, i32* %16, align 4
  %146 = sext i32 %145 to i64
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i32 0, i32 1
  %149 = load i32*, i32** %148, align 8
  %150 = load i32*, i32** @howto_align_table, align 8
  %151 = ptrtoint i32* %149 to i64
  %152 = ptrtoint i32* %150 to i64
  %153 = sub i64 %151, %152
  %154 = sdiv exact i64 %153, 4
  %155 = shl i64 %154, 1
  %156 = or i64 %146, %155
  %157 = trunc i64 %156 to i8
  %158 = load i8*, i8** %20, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 7
  store i8 %157, i8* %159, align 1
  br label %165

160:                                              ; preds = %133, %127
  %161 = load i32, i32* %17, align 4
  %162 = trunc i32 %161 to i8
  %163 = load i8*, i8** %20, align 8
  %164 = getelementptr inbounds i8, i8* %163, i64 7
  store i8 %162, i8* %164, align 1
  br label %165

165:                                              ; preds = %160, %144
  br label %166

166:                                              ; preds = %165, %120
  br label %167

167:                                              ; preds = %166, %108
  br label %168

168:                                              ; preds = %167, %96
  br label %169

169:                                              ; preds = %168, %82
  %170 = load i32, i32* %8, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %169
  br label %206

173:                                              ; preds = %169
  %174 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %175 = call i64 @bfd_is_com_section(%struct.TYPE_14__* %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %185, label %177

177:                                              ; preds = %173
  %178 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %179 = call i64 @bfd_is_abs_section(%struct.TYPE_14__* %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %185, label %181

181:                                              ; preds = %177
  %182 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %183 = call i64 @bfd_is_und_section(%struct.TYPE_14__* %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %201

185:                                              ; preds = %181, %177, %173
  %186 = load %struct.TYPE_16__*, %struct.TYPE_16__** @bfd_abs_section_ptr, align 8
  %187 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %186, i32 0, i32 0
  %188 = load %struct.TYPE_13__*, %struct.TYPE_13__** %187, align 8
  %189 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %190 = icmp eq %struct.TYPE_13__* %188, %189
  br i1 %190, label %191, label %192

191:                                              ; preds = %185
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %200

192:                                              ; preds = %185
  store i32 1, i32* %7, align 4
  %193 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %194 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %193, i32 0, i32 0
  %195 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %194, align 8
  %196 = load %struct.TYPE_13__*, %struct.TYPE_13__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  store i32 %199, i32* %8, align 4
  br label %200

200:                                              ; preds = %192, %191
  br label %205

201:                                              ; preds = %181
  store i32 0, i32* %7, align 4
  %202 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %203 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  store i32 %204, i32* %8, align 4
  br label %205

205:                                              ; preds = %201, %200
  br label %206

206:                                              ; preds = %205, %172
  %207 = load i32*, i32** %4, align 8
  %208 = call i64 @bfd_header_big_endian(i32* %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %225

210:                                              ; preds = %206
  %211 = load i32, i32* %8, align 4
  %212 = ashr i32 %211, 16
  %213 = trunc i32 %212 to i8
  %214 = load i8*, i8** %20, align 8
  %215 = getelementptr inbounds i8, i8* %214, i64 4
  store i8 %213, i8* %215, align 1
  %216 = load i32, i32* %8, align 4
  %217 = ashr i32 %216, 8
  %218 = trunc i32 %217 to i8
  %219 = load i8*, i8** %20, align 8
  %220 = getelementptr inbounds i8, i8* %219, i64 5
  store i8 %218, i8* %220, align 1
  %221 = load i32, i32* %8, align 4
  %222 = trunc i32 %221 to i8
  %223 = load i8*, i8** %20, align 8
  %224 = getelementptr inbounds i8, i8* %223, i64 6
  store i8 %222, i8* %224, align 1
  br label %240

225:                                              ; preds = %206
  %226 = load i32, i32* %8, align 4
  %227 = ashr i32 %226, 16
  %228 = trunc i32 %227 to i8
  %229 = load i8*, i8** %20, align 8
  %230 = getelementptr inbounds i8, i8* %229, i64 6
  store i8 %228, i8* %230, align 1
  %231 = load i32, i32* %8, align 4
  %232 = ashr i32 %231, 8
  %233 = trunc i32 %232 to i8
  %234 = load i8*, i8** %20, align 8
  %235 = getelementptr inbounds i8, i8* %234, i64 5
  store i8 %233, i8* %235, align 1
  %236 = load i32, i32* %8, align 4
  %237 = trunc i32 %236 to i8
  %238 = load i8*, i8** %20, align 8
  %239 = getelementptr inbounds i8, i8* %238, i64 4
  store i8 %237, i8* %239, align 1
  br label %240

240:                                              ; preds = %225, %210
  %241 = load i32, i32* %7, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %251

243:                                              ; preds = %240
  %244 = load i32, i32* %15, align 4
  %245 = load i8*, i8** %20, align 8
  %246 = getelementptr inbounds i8, i8* %245, i64 7
  %247 = load i8, i8* %246, align 1
  %248 = zext i8 %247 to i32
  %249 = or i32 %248, %244
  %250 = trunc i32 %249 to i8
  store i8 %250, i8* %246, align 1
  br label %251

251:                                              ; preds = %243, %240
  br label %252

252:                                              ; preds = %251
  %253 = load i32, i32* %11, align 4
  %254 = add i32 %253, -1
  store i32 %254, i32* %11, align 4
  %255 = load %struct.relocation_info*, %struct.relocation_info** %13, align 8
  %256 = getelementptr inbounds %struct.relocation_info, %struct.relocation_info* %255, i32 1
  store %struct.relocation_info* %256, %struct.relocation_info** %13, align 8
  %257 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %6, align 8
  %258 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %257, i32 1
  store %struct.TYPE_15__** %258, %struct.TYPE_15__*** %6, align 8
  br label %55

259:                                              ; preds = %55
  %260 = load %struct.relocation_info*, %struct.relocation_info** %12, align 8
  %261 = bitcast %struct.relocation_info* %260 to i8*
  %262 = load i32, i32* %14, align 4
  %263 = load i32*, i32** %4, align 8
  %264 = call i32 @bfd_bwrite(i8* %261, i32 %262, i32* %263)
  %265 = load i32, i32* %14, align 4
  %266 = icmp ne i32 %264, %265
  br i1 %266, label %267, label %271

267:                                              ; preds = %259
  %268 = load %struct.relocation_info*, %struct.relocation_info** %12, align 8
  %269 = call i32 @free(%struct.relocation_info* %268)
  %270 = load i32, i32* @FALSE, align 4
  store i32 %270, i32* %3, align 4
  br label %275

271:                                              ; preds = %259
  %272 = load %struct.relocation_info*, %struct.relocation_info** %12, align 8
  %273 = call i32 @free(%struct.relocation_info* %272)
  %274 = load i32, i32* @TRUE, align 4
  store i32 %274, i32* %3, align 4
  br label %275

275:                                              ; preds = %271, %267, %45, %28
  %276 = load i32, i32* %3, align 4
  ret i32 %276
}

declare dso_local %struct.relocation_info* @bfd_malloc(i32) #1

declare dso_local i64 @bfd_header_big_endian(i32*) #1

declare dso_local i32 @H_PUT_32(i32*, i32, i8*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i64 @bfd_is_com_section(%struct.TYPE_14__*) #1

declare dso_local i64 @bfd_is_abs_section(%struct.TYPE_14__*) #1

declare dso_local i64 @bfd_is_und_section(%struct.TYPE_14__*) #1

declare dso_local i32 @bfd_bwrite(i8*, i32, i32*) #1

declare dso_local i32 @free(%struct.relocation_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
