; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_aoutx.h_aout_link_check_ar_symbols.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_aoutx.h_aout_link_check_ar_symbols.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i32, %struct.TYPE_11__*, %struct.TYPE_12__* }
%struct.TYPE_11__ = type { i32 (%struct.bfd_link_info*, i32*, i8*)* }
%struct.TYPE_12__ = type { i32 }
%struct.external_nlist = type { i32, i32, i32 }
%struct.bfd_link_hash_entry = type { i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i64, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_14__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@N_EXT = common dso_local global i32 0, align 4
@N_STAB = common dso_local global i32 0, align 4
@N_FN = common dso_local global i32 0, align 4
@N_WEAKA = common dso_local global i32 0, align 4
@N_WEAKT = common dso_local global i32 0, align 4
@N_WEAKD = common dso_local global i32 0, align 4
@N_WEAKB = common dso_local global i32 0, align 4
@N_WARNING = common dso_local global i32 0, align 4
@N_INDR = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@bfd_link_hash_undefined = common dso_local global i64 0, align 8
@bfd_link_hash_common = common dso_local global i64 0, align 8
@N_TEXT = common dso_local global i32 0, align 4
@N_DATA = common dso_local global i32 0, align 4
@N_BSS = common dso_local global i32 0, align 4
@N_ABS = common dso_local global i32 0, align 4
@N_UNDF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"COMMON\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.bfd_link_info*, i32*)* @aout_link_check_ar_symbols to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aout_link_check_ar_symbols(i32* %0, %struct.bfd_link_info* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.bfd_link_info*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.external_nlist*, align 8
  %9 = alloca %struct.external_nlist*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.bfd_link_hash_entry*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %6, align 8
  store i32* %2, i32** %7, align 8
  %18 = load i32, i32* @FALSE, align 4
  %19 = load i32*, i32** %7, align 8
  store i32 %18, i32* %19, align 4
  %20 = load i32*, i32** %5, align 8
  %21 = call %struct.external_nlist* @obj_aout_external_syms(i32* %20)
  store %struct.external_nlist* %21, %struct.external_nlist** %8, align 8
  %22 = load %struct.external_nlist*, %struct.external_nlist** %8, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @obj_aout_external_sym_count(i32* %23)
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.external_nlist, %struct.external_nlist* %22, i64 %25
  store %struct.external_nlist* %26, %struct.external_nlist** %9, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = call i8* @obj_aout_external_strings(i32* %27)
  store i8* %28, i8** %10, align 8
  br label %29

29:                                               ; preds = %359, %3
  %30 = load %struct.external_nlist*, %struct.external_nlist** %8, align 8
  %31 = load %struct.external_nlist*, %struct.external_nlist** %9, align 8
  %32 = icmp ult %struct.external_nlist* %30, %31
  br i1 %32, label %33, label %362

33:                                               ; preds = %29
  %34 = load i32*, i32** %5, align 8
  %35 = load %struct.external_nlist*, %struct.external_nlist** %8, align 8
  %36 = getelementptr inbounds %struct.external_nlist, %struct.external_nlist* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @H_GET_8(i32* %34, i32 %37)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* @N_EXT, align 4
  %41 = and i32 %39, %40
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %52, label %43

43:                                               ; preds = %33
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* @N_STAB, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %43
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* @N_FN, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %80

52:                                               ; preds = %48, %43, %33
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* @N_WEAKA, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %80

56:                                               ; preds = %52
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* @N_WEAKT, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %80

60:                                               ; preds = %56
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* @N_WEAKD, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %80

64:                                               ; preds = %60
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* @N_WEAKB, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %80

68:                                               ; preds = %64
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* @N_WARNING, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %76, label %72

72:                                               ; preds = %68
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* @N_INDR, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %72, %68
  %77 = load %struct.external_nlist*, %struct.external_nlist** %8, align 8
  %78 = getelementptr inbounds %struct.external_nlist, %struct.external_nlist* %77, i32 1
  store %struct.external_nlist* %78, %struct.external_nlist** %8, align 8
  br label %79

79:                                               ; preds = %76, %72
  br label %359

80:                                               ; preds = %64, %60, %56, %52, %48
  %81 = load i8*, i8** %10, align 8
  %82 = load i32*, i32** %5, align 8
  %83 = load %struct.external_nlist*, %struct.external_nlist** %8, align 8
  %84 = getelementptr inbounds %struct.external_nlist, %struct.external_nlist* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @GET_WORD(i32* %82, i32 %85)
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %81, i64 %87
  store i8* %88, i8** %12, align 8
  %89 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %90 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %89, i32 0, i32 2
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %90, align 8
  %92 = load i8*, i8** %12, align 8
  %93 = load i32, i32* @FALSE, align 4
  %94 = load i32, i32* @FALSE, align 4
  %95 = load i32, i32* @TRUE, align 4
  %96 = call %struct.bfd_link_hash_entry* @bfd_link_hash_lookup(%struct.TYPE_12__* %91, i8* %92, i32 %93, i32 %94, i32 %95)
  store %struct.bfd_link_hash_entry* %96, %struct.bfd_link_hash_entry** %13, align 8
  %97 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %13, align 8
  %98 = icmp eq %struct.bfd_link_hash_entry* %97, null
  br i1 %98, label %111, label %99

99:                                               ; preds = %80
  %100 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %13, align 8
  %101 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @bfd_link_hash_undefined, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %121

105:                                              ; preds = %99
  %106 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %13, align 8
  %107 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @bfd_link_hash_common, align 8
  %110 = icmp ne i64 %108, %109
  br i1 %110, label %111, label %121

111:                                              ; preds = %105, %80
  %112 = load i32, i32* %11, align 4
  %113 = load i32, i32* @N_INDR, align 4
  %114 = load i32, i32* @N_EXT, align 4
  %115 = or i32 %113, %114
  %116 = icmp eq i32 %112, %115
  br i1 %116, label %117, label %120

117:                                              ; preds = %111
  %118 = load %struct.external_nlist*, %struct.external_nlist** %8, align 8
  %119 = getelementptr inbounds %struct.external_nlist, %struct.external_nlist* %118, i32 1
  store %struct.external_nlist* %119, %struct.external_nlist** %8, align 8
  br label %120

120:                                              ; preds = %117, %111
  br label %359

121:                                              ; preds = %105, %99
  %122 = load i32, i32* %11, align 4
  %123 = load i32, i32* @N_TEXT, align 4
  %124 = load i32, i32* @N_EXT, align 4
  %125 = or i32 %123, %124
  %126 = icmp eq i32 %122, %125
  br i1 %126, label %151, label %127

127:                                              ; preds = %121
  %128 = load i32, i32* %11, align 4
  %129 = load i32, i32* @N_DATA, align 4
  %130 = load i32, i32* @N_EXT, align 4
  %131 = or i32 %129, %130
  %132 = icmp eq i32 %128, %131
  br i1 %132, label %151, label %133

133:                                              ; preds = %127
  %134 = load i32, i32* %11, align 4
  %135 = load i32, i32* @N_BSS, align 4
  %136 = load i32, i32* @N_EXT, align 4
  %137 = or i32 %135, %136
  %138 = icmp eq i32 %134, %137
  br i1 %138, label %151, label %139

139:                                              ; preds = %133
  %140 = load i32, i32* %11, align 4
  %141 = load i32, i32* @N_ABS, align 4
  %142 = load i32, i32* @N_EXT, align 4
  %143 = or i32 %141, %142
  %144 = icmp eq i32 %140, %143
  br i1 %144, label %151, label %145

145:                                              ; preds = %139
  %146 = load i32, i32* %11, align 4
  %147 = load i32, i32* @N_INDR, align 4
  %148 = load i32, i32* @N_EXT, align 4
  %149 = or i32 %147, %148
  %150 = icmp eq i32 %146, %149
  br i1 %150, label %151, label %199

151:                                              ; preds = %145, %139, %133, %127, %121
  %152 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %13, align 8
  %153 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @bfd_link_hash_common, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %182

157:                                              ; preds = %151
  store i32 0, i32* %14, align 4
  %158 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %159 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  switch i32 %160, label %175 [
    i32 128, label %161
    i32 129, label %168
    i32 130, label %176
  ]

161:                                              ; preds = %157
  %162 = load i32, i32* %11, align 4
  %163 = load i32, i32* @N_TEXT, align 4
  %164 = load i32, i32* @N_EXT, align 4
  %165 = or i32 %163, %164
  %166 = icmp eq i32 %162, %165
  %167 = zext i1 %166 to i32
  store i32 %167, i32* %14, align 4
  br label %177

168:                                              ; preds = %157
  %169 = load i32, i32* %11, align 4
  %170 = load i32, i32* @N_DATA, align 4
  %171 = load i32, i32* @N_EXT, align 4
  %172 = or i32 %170, %171
  %173 = icmp eq i32 %169, %172
  %174 = zext i1 %173 to i32
  store i32 %174, i32* %14, align 4
  br label %177

175:                                              ; preds = %157
  br label %176

176:                                              ; preds = %157, %175
  store i32 1, i32* %14, align 4
  br label %177

177:                                              ; preds = %176, %168, %161
  %178 = load i32, i32* %14, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %177
  br label %359

181:                                              ; preds = %177
  br label %182

182:                                              ; preds = %181, %151
  %183 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %184 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %183, i32 0, i32 1
  %185 = load %struct.TYPE_11__*, %struct.TYPE_11__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i32 0, i32 0
  %187 = load i32 (%struct.bfd_link_info*, i32*, i8*)*, i32 (%struct.bfd_link_info*, i32*, i8*)** %186, align 8
  %188 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %189 = load i32*, i32** %5, align 8
  %190 = load i8*, i8** %12, align 8
  %191 = call i32 %187(%struct.bfd_link_info* %188, i32* %189, i8* %190)
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %195, label %193

193:                                              ; preds = %182
  %194 = load i32, i32* @FALSE, align 4
  store i32 %194, i32* %4, align 4
  br label %364

195:                                              ; preds = %182
  %196 = load i32, i32* @TRUE, align 4
  %197 = load i32*, i32** %7, align 8
  store i32 %196, i32* %197, align 4
  %198 = load i32, i32* @TRUE, align 4
  store i32 %198, i32* %4, align 4
  br label %364

199:                                              ; preds = %145
  %200 = load i32, i32* %11, align 4
  %201 = load i32, i32* @N_UNDF, align 4
  %202 = load i32, i32* @N_EXT, align 4
  %203 = or i32 %201, %202
  %204 = icmp eq i32 %200, %203
  br i1 %204, label %205, label %318

205:                                              ; preds = %199
  %206 = load i32*, i32** %5, align 8
  %207 = load %struct.external_nlist*, %struct.external_nlist** %8, align 8
  %208 = getelementptr inbounds %struct.external_nlist, %struct.external_nlist* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @GET_WORD(i32* %206, i32 %209)
  %211 = sext i32 %210 to i64
  store i64 %211, i64* %15, align 8
  %212 = load i64, i64* %15, align 8
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %317

214:                                              ; preds = %205
  %215 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %13, align 8
  %216 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = load i64, i64* @bfd_link_hash_undefined, align 8
  %219 = icmp eq i64 %217, %218
  br i1 %219, label %220, label %301

220:                                              ; preds = %214
  %221 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %13, align 8
  %222 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %222, i32 0, i32 1
  %224 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %223, i32 0, i32 0
  %225 = load i32*, i32** %224, align 8
  store i32* %225, i32** %16, align 8
  %226 = load i32*, i32** %16, align 8
  %227 = icmp eq i32* %226, null
  br i1 %227, label %228, label %245

228:                                              ; preds = %220
  %229 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %230 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %229, i32 0, i32 1
  %231 = load %struct.TYPE_11__*, %struct.TYPE_11__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %231, i32 0, i32 0
  %233 = load i32 (%struct.bfd_link_info*, i32*, i8*)*, i32 (%struct.bfd_link_info*, i32*, i8*)** %232, align 8
  %234 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %235 = load i32*, i32** %5, align 8
  %236 = load i8*, i8** %12, align 8
  %237 = call i32 %233(%struct.bfd_link_info* %234, i32* %235, i8* %236)
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %241, label %239

239:                                              ; preds = %228
  %240 = load i32, i32* @FALSE, align 4
  store i32 %240, i32* %4, align 4
  br label %364

241:                                              ; preds = %228
  %242 = load i32, i32* @TRUE, align 4
  %243 = load i32*, i32** %7, align 8
  store i32 %242, i32* %243, align 4
  %244 = load i32, i32* @TRUE, align 4
  store i32 %244, i32* %4, align 4
  br label %364

245:                                              ; preds = %220
  %246 = load i64, i64* @bfd_link_hash_common, align 8
  %247 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %13, align 8
  %248 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %247, i32 0, i32 0
  store i64 %246, i64* %248, align 8
  %249 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %250 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %249, i32 0, i32 2
  %251 = load %struct.TYPE_12__*, %struct.TYPE_12__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %251, i32 0, i32 0
  %253 = call %struct.TYPE_13__* @bfd_hash_allocate(i32* %252, i32 4)
  %254 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %13, align 8
  %255 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %254, i32 0, i32 1
  %256 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %256, i32 0, i32 1
  store %struct.TYPE_13__* %253, %struct.TYPE_13__** %257, align 8
  %258 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %13, align 8
  %259 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %258, i32 0, i32 1
  %260 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %260, i32 0, i32 1
  %262 = load %struct.TYPE_13__*, %struct.TYPE_13__** %261, align 8
  %263 = icmp eq %struct.TYPE_13__* %262, null
  br i1 %263, label %264, label %266

264:                                              ; preds = %245
  %265 = load i32, i32* @FALSE, align 4
  store i32 %265, i32* %4, align 4
  br label %364

266:                                              ; preds = %245
  %267 = load i64, i64* %15, align 8
  %268 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %13, align 8
  %269 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %268, i32 0, i32 1
  %270 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %269, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %270, i32 0, i32 0
  store i64 %267, i64* %271, align 8
  %272 = load i64, i64* %15, align 8
  %273 = call i32 @bfd_log2(i64 %272)
  store i32 %273, i32* %17, align 4
  %274 = load i32, i32* %17, align 4
  %275 = load i32*, i32** %5, align 8
  %276 = call %struct.TYPE_14__* @bfd_get_arch_info(i32* %275)
  %277 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 4
  %279 = icmp ugt i32 %274, %278
  br i1 %279, label %280, label %285

280:                                              ; preds = %266
  %281 = load i32*, i32** %5, align 8
  %282 = call %struct.TYPE_14__* @bfd_get_arch_info(i32* %281)
  %283 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 4
  store i32 %284, i32* %17, align 4
  br label %285

285:                                              ; preds = %280, %266
  %286 = load i32, i32* %17, align 4
  %287 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %13, align 8
  %288 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %287, i32 0, i32 1
  %289 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %288, i32 0, i32 0
  %290 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %289, i32 0, i32 1
  %291 = load %struct.TYPE_13__*, %struct.TYPE_13__** %290, align 8
  %292 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %291, i32 0, i32 0
  store i32 %286, i32* %292, align 4
  %293 = load i32*, i32** %16, align 8
  %294 = call i32 @bfd_make_section_old_way(i32* %293, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %295 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %13, align 8
  %296 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %295, i32 0, i32 1
  %297 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %296, i32 0, i32 0
  %298 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %297, i32 0, i32 1
  %299 = load %struct.TYPE_13__*, %struct.TYPE_13__** %298, align 8
  %300 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %299, i32 0, i32 1
  store i32 %294, i32* %300, align 4
  br label %316

301:                                              ; preds = %214
  %302 = load i64, i64* %15, align 8
  %303 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %13, align 8
  %304 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %303, i32 0, i32 1
  %305 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %304, i32 0, i32 0
  %306 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %305, i32 0, i32 0
  %307 = load i64, i64* %306, align 8
  %308 = icmp sgt i64 %302, %307
  br i1 %308, label %309, label %315

309:                                              ; preds = %301
  %310 = load i64, i64* %15, align 8
  %311 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %13, align 8
  %312 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %311, i32 0, i32 1
  %313 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %312, i32 0, i32 0
  %314 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %313, i32 0, i32 0
  store i64 %310, i64* %314, align 8
  br label %315

315:                                              ; preds = %309, %301
  br label %316

316:                                              ; preds = %315, %285
  br label %317

317:                                              ; preds = %316, %205
  br label %318

318:                                              ; preds = %317, %199
  %319 = load i32, i32* %11, align 4
  %320 = load i32, i32* @N_WEAKA, align 4
  %321 = icmp eq i32 %319, %320
  br i1 %321, label %334, label %322

322:                                              ; preds = %318
  %323 = load i32, i32* %11, align 4
  %324 = load i32, i32* @N_WEAKT, align 4
  %325 = icmp eq i32 %323, %324
  br i1 %325, label %334, label %326

326:                                              ; preds = %322
  %327 = load i32, i32* %11, align 4
  %328 = load i32, i32* @N_WEAKD, align 4
  %329 = icmp eq i32 %327, %328
  br i1 %329, label %334, label %330

330:                                              ; preds = %326
  %331 = load i32, i32* %11, align 4
  %332 = load i32, i32* @N_WEAKB, align 4
  %333 = icmp eq i32 %331, %332
  br i1 %333, label %334, label %358

334:                                              ; preds = %330, %326, %322, %318
  %335 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %13, align 8
  %336 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %335, i32 0, i32 0
  %337 = load i64, i64* %336, align 8
  %338 = load i64, i64* @bfd_link_hash_undefined, align 8
  %339 = icmp eq i64 %337, %338
  br i1 %339, label %340, label %357

340:                                              ; preds = %334
  %341 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %342 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %341, i32 0, i32 1
  %343 = load %struct.TYPE_11__*, %struct.TYPE_11__** %342, align 8
  %344 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %343, i32 0, i32 0
  %345 = load i32 (%struct.bfd_link_info*, i32*, i8*)*, i32 (%struct.bfd_link_info*, i32*, i8*)** %344, align 8
  %346 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %347 = load i32*, i32** %5, align 8
  %348 = load i8*, i8** %12, align 8
  %349 = call i32 %345(%struct.bfd_link_info* %346, i32* %347, i8* %348)
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %353, label %351

351:                                              ; preds = %340
  %352 = load i32, i32* @FALSE, align 4
  store i32 %352, i32* %4, align 4
  br label %364

353:                                              ; preds = %340
  %354 = load i32, i32* @TRUE, align 4
  %355 = load i32*, i32** %7, align 8
  store i32 %354, i32* %355, align 4
  %356 = load i32, i32* @TRUE, align 4
  store i32 %356, i32* %4, align 4
  br label %364

357:                                              ; preds = %334
  br label %358

358:                                              ; preds = %357, %330
  br label %359

359:                                              ; preds = %358, %180, %120, %79
  %360 = load %struct.external_nlist*, %struct.external_nlist** %8, align 8
  %361 = getelementptr inbounds %struct.external_nlist, %struct.external_nlist* %360, i32 1
  store %struct.external_nlist* %361, %struct.external_nlist** %8, align 8
  br label %29

362:                                              ; preds = %29
  %363 = load i32, i32* @TRUE, align 4
  store i32 %363, i32* %4, align 4
  br label %364

364:                                              ; preds = %362, %353, %351, %264, %241, %239, %195, %193
  %365 = load i32, i32* %4, align 4
  ret i32 %365
}

declare dso_local %struct.external_nlist* @obj_aout_external_syms(i32*) #1

declare dso_local i32 @obj_aout_external_sym_count(i32*) #1

declare dso_local i8* @obj_aout_external_strings(i32*) #1

declare dso_local i32 @H_GET_8(i32*, i32) #1

declare dso_local i32 @GET_WORD(i32*, i32) #1

declare dso_local %struct.bfd_link_hash_entry* @bfd_link_hash_lookup(%struct.TYPE_12__*, i8*, i32, i32, i32) #1

declare dso_local %struct.TYPE_13__* @bfd_hash_allocate(i32*, i32) #1

declare dso_local i32 @bfd_log2(i64) #1

declare dso_local %struct.TYPE_14__* @bfd_get_arch_info(i32*) #1

declare dso_local i32 @bfd_make_section_old_way(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
