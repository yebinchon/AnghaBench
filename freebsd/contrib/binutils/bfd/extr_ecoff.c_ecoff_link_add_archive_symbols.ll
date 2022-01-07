; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_ecoff.c_ecoff_link_add_archive_symbols.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_ecoff.c_ecoff_link_add_archive_symbols.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { %struct.TYPE_9__*, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { i32 (%struct.bfd_link_info*, i32*, i8*)* }
%struct.TYPE_7__ = type { %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry* }
%struct.bfd_link_hash_entry = type { i64, %struct.TYPE_11__, %struct.TYPE_8__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.bfd_link_hash_entry* }
%struct.TYPE_8__ = type { i8* }
%struct.ecoff_backend_data = type { i32* (i32*, i32)* }
%struct.TYPE_12__ = type { i64 }

@TRUE = common dso_local global i32 0, align 4
@bfd_error_no_armap = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@ecoff_link_check_archive_element = common dso_local global i32 0, align 4
@bfd_link_hash_undefined = common dso_local global i64 0, align 8
@bfd_link_hash_common = common dso_local global i64 0, align 8
@bfd_object = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.bfd_link_info*)* @ecoff_link_add_archive_symbols to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecoff_link_add_archive_symbols(i32* %0, %struct.bfd_link_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.bfd_link_info*, align 8
  %6 = alloca %struct.ecoff_backend_data*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.bfd_link_hash_entry**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.bfd_link_hash_entry*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %5, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = call %struct.ecoff_backend_data* @ecoff_backend(i32* %22)
  store %struct.ecoff_backend_data* %23, %struct.ecoff_backend_data** %6, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @bfd_has_map(i32* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %37, label %27

27:                                               ; preds = %2
  %28 = load i32*, i32** %4, align 8
  %29 = call i32* @bfd_openr_next_archived_file(i32* %28, i32* null)
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* @TRUE, align 4
  store i32 %32, i32* %3, align 4
  br label %314

33:                                               ; preds = %27
  %34 = load i32, i32* @bfd_error_no_armap, align 4
  %35 = call i32 @bfd_set_error(i32 %34)
  %36 = load i32, i32* @FALSE, align 4
  store i32 %36, i32* %3, align 4
  br label %314

37:                                               ; preds = %2
  %38 = load i32*, i32** %4, align 8
  %39 = call %struct.TYPE_12__* @bfd_ardata(i32* %38)
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to i32*
  store i32* %42, i32** %7, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %37
  %46 = load i32*, i32** %4, align 8
  %47 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %48 = load i32, i32* @ecoff_link_check_archive_element, align 4
  %49 = call i32 @_bfd_generic_link_add_archive_symbols(i32* %46, %struct.bfd_link_info* %47, i32 %48)
  store i32 %49, i32* %3, align 4
  br label %314

50:                                               ; preds = %37
  %51 = load i32*, i32** %4, align 8
  %52 = load i32*, i32** %7, align 8
  %53 = call i32 @H_GET_32(i32* %51, i32* %52)
  store i32 %53, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 1, i32* %11, align 4
  br label %54

54:                                               ; preds = %61, %50
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp ult i32 %55, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %54
  %59 = load i32, i32* %10, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %10, align 4
  br label %61

61:                                               ; preds = %58
  %62 = load i32, i32* %11, align 4
  %63 = shl i32 %62, 1
  store i32 %63, i32* %11, align 4
  br label %54

64:                                               ; preds = %54
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp eq i32 %65, %66
  %68 = zext i1 %67 to i32
  %69 = call i32 @BFD_ASSERT(i32 %68)
  %70 = load i32*, i32** %7, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 4
  store i32* %71, i32** %12, align 8
  %72 = load i32*, i32** %7, align 8
  %73 = bitcast i32* %72 to i8*
  %74 = load i32, i32* %9, align 4
  %75 = mul i32 %74, 8
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %73, i64 %76
  %78 = getelementptr inbounds i8, i8* %77, i64 8
  store i8* %78, i8** %13, align 8
  %79 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %80 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %79, i32 0, i32 1
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 1
  store %struct.bfd_link_hash_entry** %82, %struct.bfd_link_hash_entry*** %8, align 8
  br label %83

83:                                               ; preds = %306, %260, %155, %131, %124, %64
  %84 = load %struct.bfd_link_hash_entry**, %struct.bfd_link_hash_entry*** %8, align 8
  %85 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %84, align 8
  %86 = icmp ne %struct.bfd_link_hash_entry* %85, null
  br i1 %86, label %87, label %312

87:                                               ; preds = %83
  store i32 0, i32* %16, align 4
  %88 = load %struct.bfd_link_hash_entry**, %struct.bfd_link_hash_entry*** %8, align 8
  %89 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %88, align 8
  store %struct.bfd_link_hash_entry* %89, %struct.bfd_link_hash_entry** %14, align 8
  %90 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %14, align 8
  %91 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @bfd_link_hash_undefined, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %125

95:                                               ; preds = %87
  %96 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %14, align 8
  %97 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @bfd_link_hash_common, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %125

101:                                              ; preds = %95
  %102 = load %struct.bfd_link_hash_entry**, %struct.bfd_link_hash_entry*** %8, align 8
  %103 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %102, align 8
  %104 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %105 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %104, i32 0, i32 1
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  %108 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %107, align 8
  %109 = icmp ne %struct.bfd_link_hash_entry* %103, %108
  br i1 %109, label %110, label %118

110:                                              ; preds = %101
  %111 = load %struct.bfd_link_hash_entry**, %struct.bfd_link_hash_entry*** %8, align 8
  %112 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %111, align 8
  %113 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 0
  %116 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %115, align 8
  %117 = load %struct.bfd_link_hash_entry**, %struct.bfd_link_hash_entry*** %8, align 8
  store %struct.bfd_link_hash_entry* %116, %struct.bfd_link_hash_entry** %117, align 8
  br label %124

118:                                              ; preds = %101
  %119 = load %struct.bfd_link_hash_entry**, %struct.bfd_link_hash_entry*** %8, align 8
  %120 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %119, align 8
  %121 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 0
  store %struct.bfd_link_hash_entry** %123, %struct.bfd_link_hash_entry*** %8, align 8
  br label %124

124:                                              ; preds = %118, %110
  br label %83

125:                                              ; preds = %95, %87
  %126 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %14, align 8
  %127 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @bfd_link_hash_undefined, align 8
  %130 = icmp ne i64 %128, %129
  br i1 %130, label %131, label %137

131:                                              ; preds = %125
  %132 = load %struct.bfd_link_hash_entry**, %struct.bfd_link_hash_entry*** %8, align 8
  %133 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %132, align 8
  %134 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 0
  store %struct.bfd_link_hash_entry** %136, %struct.bfd_link_hash_entry*** %8, align 8
  br label %83

137:                                              ; preds = %125
  %138 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %14, align 8
  %139 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 0
  %141 = load i8*, i8** %140, align 8
  %142 = load i32, i32* %9, align 4
  %143 = load i32, i32* %10, align 4
  %144 = call i32 @ecoff_armap_hash(i8* %141, i32* %16, i32 %142, i32 %143)
  store i32 %144, i32* %15, align 4
  %145 = load i32*, i32** %4, align 8
  %146 = load i32*, i32** %12, align 8
  %147 = load i32, i32* %15, align 4
  %148 = mul i32 %147, 8
  %149 = zext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %146, i64 %149
  %151 = getelementptr inbounds i32, i32* %150, i64 4
  %152 = call i32 @H_GET_32(i32* %145, i32* %151)
  store i32 %152, i32* %17, align 4
  %153 = load i32, i32* %17, align 4
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %161

155:                                              ; preds = %137
  %156 = load %struct.bfd_link_hash_entry**, %struct.bfd_link_hash_entry*** %8, align 8
  %157 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %156, align 8
  %158 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 0
  store %struct.bfd_link_hash_entry** %160, %struct.bfd_link_hash_entry*** %8, align 8
  br label %83

161:                                              ; preds = %137
  %162 = load i8*, i8** %13, align 8
  %163 = load i32*, i32** %4, align 8
  %164 = load i32*, i32** %12, align 8
  %165 = load i32, i32* %15, align 4
  %166 = mul i32 %165, 8
  %167 = zext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %164, i64 %167
  %169 = call i32 @H_GET_32(i32* %163, i32* %168)
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i8, i8* %162, i64 %170
  store i8* %171, i8** %18, align 8
  %172 = load i8*, i8** %18, align 8
  %173 = getelementptr inbounds i8, i8* %172, i64 0
  %174 = load i8, i8* %173, align 1
  %175 = sext i8 %174 to i32
  %176 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %14, align 8
  %177 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %176, i32 0, i32 2
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 0
  %179 = load i8*, i8** %178, align 8
  %180 = getelementptr inbounds i8, i8* %179, i64 0
  %181 = load i8, i8* %180, align 1
  %182 = sext i8 %181 to i32
  %183 = icmp ne i32 %175, %182
  br i1 %183, label %192, label %184

184:                                              ; preds = %161
  %185 = load i8*, i8** %18, align 8
  %186 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %14, align 8
  %187 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %186, i32 0, i32 2
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 0
  %189 = load i8*, i8** %188, align 8
  %190 = call i64 @streq(i8* %185, i8* %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %268, label %192

192:                                              ; preds = %184, %161
  %193 = load i32, i32* @FALSE, align 4
  store i32 %193, i32* %21, align 4
  %194 = load i32, i32* %15, align 4
  %195 = load i32, i32* %16, align 4
  %196 = add i32 %194, %195
  %197 = load i32, i32* %9, align 4
  %198 = sub i32 %197, 1
  %199 = and i32 %196, %198
  store i32 %199, i32* %20, align 4
  br label %200

200:                                              ; preds = %250, %192
  %201 = load i32, i32* %20, align 4
  %202 = load i32, i32* %15, align 4
  %203 = icmp ne i32 %201, %202
  br i1 %203, label %204, label %257

204:                                              ; preds = %200
  %205 = load i32*, i32** %4, align 8
  %206 = load i32*, i32** %12, align 8
  %207 = load i32, i32* %20, align 4
  %208 = mul i32 %207, 8
  %209 = zext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %206, i64 %209
  %211 = getelementptr inbounds i32, i32* %210, i64 4
  %212 = call i32 @H_GET_32(i32* %205, i32* %211)
  store i32 %212, i32* %17, align 4
  %213 = load i32, i32* %17, align 4
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %216

215:                                              ; preds = %204
  br label %257

216:                                              ; preds = %204
  %217 = load i8*, i8** %13, align 8
  %218 = load i32*, i32** %4, align 8
  %219 = load i32*, i32** %12, align 8
  %220 = load i32, i32* %20, align 4
  %221 = mul i32 %220, 8
  %222 = zext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %219, i64 %222
  %224 = call i32 @H_GET_32(i32* %218, i32* %223)
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i8, i8* %217, i64 %225
  store i8* %226, i8** %18, align 8
  %227 = load i8*, i8** %18, align 8
  %228 = getelementptr inbounds i8, i8* %227, i64 0
  %229 = load i8, i8* %228, align 1
  %230 = sext i8 %229 to i32
  %231 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %14, align 8
  %232 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %231, i32 0, i32 2
  %233 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %232, i32 0, i32 0
  %234 = load i8*, i8** %233, align 8
  %235 = getelementptr inbounds i8, i8* %234, i64 0
  %236 = load i8, i8* %235, align 1
  %237 = sext i8 %236 to i32
  %238 = icmp eq i32 %230, %237
  br i1 %238, label %239, label %249

239:                                              ; preds = %216
  %240 = load i8*, i8** %18, align 8
  %241 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %14, align 8
  %242 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %241, i32 0, i32 2
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %242, i32 0, i32 0
  %244 = load i8*, i8** %243, align 8
  %245 = call i64 @streq(i8* %240, i8* %244)
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %249

247:                                              ; preds = %239
  %248 = load i32, i32* @TRUE, align 4
  store i32 %248, i32* %21, align 4
  br label %257

249:                                              ; preds = %239, %216
  br label %250

250:                                              ; preds = %249
  %251 = load i32, i32* %20, align 4
  %252 = load i32, i32* %16, align 4
  %253 = add i32 %251, %252
  %254 = load i32, i32* %9, align 4
  %255 = sub i32 %254, 1
  %256 = and i32 %253, %255
  store i32 %256, i32* %20, align 4
  br label %200

257:                                              ; preds = %247, %215, %200
  %258 = load i32, i32* %21, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %266, label %260

260:                                              ; preds = %257
  %261 = load %struct.bfd_link_hash_entry**, %struct.bfd_link_hash_entry*** %8, align 8
  %262 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %261, align 8
  %263 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %262, i32 0, i32 1
  %264 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %264, i32 0, i32 0
  store %struct.bfd_link_hash_entry** %265, %struct.bfd_link_hash_entry*** %8, align 8
  br label %83

266:                                              ; preds = %257
  %267 = load i32, i32* %20, align 4
  store i32 %267, i32* %15, align 4
  br label %268

268:                                              ; preds = %266, %184
  %269 = load %struct.ecoff_backend_data*, %struct.ecoff_backend_data** %6, align 8
  %270 = getelementptr inbounds %struct.ecoff_backend_data, %struct.ecoff_backend_data* %269, i32 0, i32 0
  %271 = load i32* (i32*, i32)*, i32* (i32*, i32)** %270, align 8
  %272 = load i32*, i32** %4, align 8
  %273 = load i32, i32* %17, align 4
  %274 = call i32* %271(i32* %272, i32 %273)
  store i32* %274, i32** %19, align 8
  %275 = load i32*, i32** %19, align 8
  %276 = icmp eq i32* %275, null
  br i1 %276, label %277, label %279

277:                                              ; preds = %268
  %278 = load i32, i32* @FALSE, align 4
  store i32 %278, i32* %3, align 4
  br label %314

279:                                              ; preds = %268
  %280 = load i32*, i32** %19, align 8
  %281 = load i32, i32* @bfd_object, align 4
  %282 = call i32 @bfd_check_format(i32* %280, i32 %281)
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %286, label %284

284:                                              ; preds = %279
  %285 = load i32, i32* @FALSE, align 4
  store i32 %285, i32* %3, align 4
  br label %314

286:                                              ; preds = %279
  %287 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %288 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %287, i32 0, i32 0
  %289 = load %struct.TYPE_9__*, %struct.TYPE_9__** %288, align 8
  %290 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %289, i32 0, i32 0
  %291 = load i32 (%struct.bfd_link_info*, i32*, i8*)*, i32 (%struct.bfd_link_info*, i32*, i8*)** %290, align 8
  %292 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %293 = load i32*, i32** %19, align 8
  %294 = load i8*, i8** %18, align 8
  %295 = call i32 %291(%struct.bfd_link_info* %292, i32* %293, i8* %294)
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %299, label %297

297:                                              ; preds = %286
  %298 = load i32, i32* @FALSE, align 4
  store i32 %298, i32* %3, align 4
  br label %314

299:                                              ; preds = %286
  %300 = load i32*, i32** %19, align 8
  %301 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %302 = call i32 @ecoff_link_add_object_symbols(i32* %300, %struct.bfd_link_info* %301)
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %306, label %304

304:                                              ; preds = %299
  %305 = load i32, i32* @FALSE, align 4
  store i32 %305, i32* %3, align 4
  br label %314

306:                                              ; preds = %299
  %307 = load %struct.bfd_link_hash_entry**, %struct.bfd_link_hash_entry*** %8, align 8
  %308 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %307, align 8
  %309 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %308, i32 0, i32 1
  %310 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %309, i32 0, i32 0
  %311 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %310, i32 0, i32 0
  store %struct.bfd_link_hash_entry** %311, %struct.bfd_link_hash_entry*** %8, align 8
  br label %83

312:                                              ; preds = %83
  %313 = load i32, i32* @TRUE, align 4
  store i32 %313, i32* %3, align 4
  br label %314

314:                                              ; preds = %312, %304, %297, %284, %277, %45, %33, %31
  %315 = load i32, i32* %3, align 4
  ret i32 %315
}

declare dso_local %struct.ecoff_backend_data* @ecoff_backend(i32*) #1

declare dso_local i32 @bfd_has_map(i32*) #1

declare dso_local i32* @bfd_openr_next_archived_file(i32*, i32*) #1

declare dso_local i32 @bfd_set_error(i32) #1

declare dso_local %struct.TYPE_12__* @bfd_ardata(i32*) #1

declare dso_local i32 @_bfd_generic_link_add_archive_symbols(i32*, %struct.bfd_link_info*, i32) #1

declare dso_local i32 @H_GET_32(i32*, i32*) #1

declare dso_local i32 @BFD_ASSERT(i32) #1

declare dso_local i32 @ecoff_armap_hash(i8*, i32*, i32, i32) #1

declare dso_local i64 @streq(i8*, i8*) #1

declare dso_local i32 @bfd_check_format(i32*, i32) #1

declare dso_local i32 @ecoff_link_add_object_symbols(i32*, %struct.bfd_link_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
