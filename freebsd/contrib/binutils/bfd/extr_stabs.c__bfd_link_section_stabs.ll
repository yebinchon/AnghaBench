; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_stabs.c__bfd_link_section_stabs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_stabs.c__bfd_link_section_stabs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stab_info = type { i32*, %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i64, i32, i32, i32 }
%struct.stab_section_info = type { i32*, i32*, %struct.stab_excl_list* }
%struct.stab_excl_list = type { i32, %struct.stab_excl_list*, i64, i32 }
%struct.stab_link_includes_entry = type { %struct.stab_link_includes_totals* }
%struct.stab_link_includes_totals = type { i64, i64, %struct.stab_link_includes_totals*, i8* }

@TRUE = common dso_local global i64 0, align 8
@STABSIZE = common dso_local global i32 0, align 4
@SEC_RELOC = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@stab_link_includes_newfunc = common dso_local global i32 0, align 4
@SEC_HAS_CONTENTS = common dso_local global i32 0, align 4
@SEC_READONLY = common dso_local global i32 0, align 4
@SEC_DEBUGGING = common dso_local global i32 0, align 4
@SEC_LINKER_CREATED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c".stabstr\00", align 1
@TYPEOFF = common dso_local global i64 0, align 8
@STRDXOFF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"%B(%A+0x%lx): Stabs entry has invalid string index.\00", align 1
@bfd_error_bad_value = common dso_local global i32 0, align 4
@N_BINCL = common dso_local global i64 0, align 8
@N_EXCL = common dso_local global i64 0, align 8
@N_EINCL = common dso_local global i64 0, align 8
@SEC_EXCLUDE = common dso_local global i32 0, align 4
@SEC_KEEP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_bfd_link_section_stabs(i32* %0, %struct.stab_info* %1, %struct.TYPE_8__* %2, %struct.TYPE_8__* %3, i8** %4, i32* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.stab_info*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.stab_section_info*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i8*, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i8*, align 8
  %34 = alloca i8*, align 8
  %35 = alloca i32, align 4
  %36 = alloca i8*, align 8
  %37 = alloca %struct.stab_link_includes_entry*, align 8
  %38 = alloca %struct.stab_link_includes_totals*, align 8
  %39 = alloca %struct.stab_excl_list*, align 8
  %40 = alloca i32, align 4
  %41 = alloca i8*, align 8
  %42 = alloca i32*, align 8
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32*, align 8
  store i32* %0, i32** %8, align 8
  store %struct.stab_info* %1, %struct.stab_info** %9, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %10, align 8
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %11, align 8
  store i8** %4, i8*** %12, align 8
  store i32* %5, i32** %13, align 8
  store i8* null, i8** %18, align 8
  store i8* null, i8** %19, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %6
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %51, %6
  %57 = load i64, i64* @TRUE, align 8
  store i64 %57, i64* %7, align 8
  br label %724

58:                                               ; preds = %51
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i32, i32* @STABSIZE, align 4
  %63 = sext i32 %62 to i64
  %64 = srem i64 %61, %63
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %58
  %67 = load i64, i64* @TRUE, align 8
  store i64 %67, i64* %7, align 8
  br label %724

68:                                               ; preds = %58
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @SEC_RELOC, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %68
  %76 = load i64, i64* @TRUE, align 8
  store i64 %76, i64* %7, align 8
  br label %724

77:                                               ; preds = %68
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = call i64 @bfd_is_abs_section(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %89, label %83

83:                                               ; preds = %77
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = call i64 @bfd_is_abs_section(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %83, %77
  %90 = load i64, i64* @TRUE, align 8
  store i64 %90, i64* %7, align 8
  br label %724

91:                                               ; preds = %83
  %92 = load i64, i64* @FALSE, align 8
  store i64 %92, i64* %14, align 8
  %93 = load %struct.stab_info*, %struct.stab_info** %9, align 8
  %94 = getelementptr inbounds %struct.stab_info, %struct.stab_info* %93, i32 0, i32 1
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %94, align 8
  %96 = icmp eq %struct.TYPE_9__* %95, null
  br i1 %96, label %97, label %139

97:                                               ; preds = %91
  %98 = load i64, i64* @TRUE, align 8
  store i64 %98, i64* %14, align 8
  %99 = call i32* (...) @_bfd_stringtab_init()
  %100 = load %struct.stab_info*, %struct.stab_info** %9, align 8
  %101 = getelementptr inbounds %struct.stab_info, %struct.stab_info* %100, i32 0, i32 0
  store i32* %99, i32** %101, align 8
  %102 = load %struct.stab_info*, %struct.stab_info** %9, align 8
  %103 = getelementptr inbounds %struct.stab_info, %struct.stab_info* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = icmp eq i32* %104, null
  br i1 %105, label %106, label %107

106:                                              ; preds = %97
  br label %710

107:                                              ; preds = %97
  %108 = load %struct.stab_info*, %struct.stab_info** %9, align 8
  %109 = getelementptr inbounds %struct.stab_info, %struct.stab_info* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = load i64, i64* @TRUE, align 8
  %112 = load i64, i64* @TRUE, align 8
  %113 = call i32 @_bfd_stringtab_add(i32* %110, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i64 %111, i64 %112)
  %114 = load %struct.stab_info*, %struct.stab_info** %9, align 8
  %115 = getelementptr inbounds %struct.stab_info, %struct.stab_info* %114, i32 0, i32 2
  %116 = load i32, i32* @stab_link_includes_newfunc, align 4
  %117 = call i32 @bfd_hash_table_init(i32* %115, i32 %116, i32 8)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %120, label %119

119:                                              ; preds = %107
  br label %710

120:                                              ; preds = %107
  %121 = load i32, i32* @SEC_HAS_CONTENTS, align 4
  %122 = load i32, i32* @SEC_READONLY, align 4
  %123 = or i32 %121, %122
  %124 = load i32, i32* @SEC_DEBUGGING, align 4
  %125 = or i32 %123, %124
  %126 = load i32, i32* @SEC_LINKER_CREATED, align 4
  %127 = or i32 %125, %126
  store i32 %127, i32* %26, align 4
  %128 = load i32*, i32** %8, align 8
  %129 = load i32, i32* %26, align 4
  %130 = call %struct.TYPE_9__* @bfd_make_section_anyway_with_flags(i32* %128, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %129)
  %131 = load %struct.stab_info*, %struct.stab_info** %9, align 8
  %132 = getelementptr inbounds %struct.stab_info, %struct.stab_info* %131, i32 0, i32 1
  store %struct.TYPE_9__* %130, %struct.TYPE_9__** %132, align 8
  %133 = load %struct.stab_info*, %struct.stab_info** %9, align 8
  %134 = getelementptr inbounds %struct.stab_info, %struct.stab_info* %133, i32 0, i32 1
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %134, align 8
  %136 = icmp eq %struct.TYPE_9__* %135, null
  br i1 %136, label %137, label %138

137:                                              ; preds = %120
  br label %710

138:                                              ; preds = %120
  br label %139

139:                                              ; preds = %138, %91
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i32, i32* @STABSIZE, align 4
  %144 = sext i32 %143 to i64
  %145 = sdiv i64 %142, %144
  %146 = trunc i64 %145 to i32
  store i32 %146, i32* %15, align 4
  store i32 24, i32* %16, align 4
  %147 = load i32, i32* %15, align 4
  %148 = sub nsw i32 %147, 1
  %149 = sext i32 %148 to i64
  %150 = mul i64 %149, 4
  %151 = load i32, i32* %16, align 4
  %152 = sext i32 %151 to i64
  %153 = add i64 %152, %150
  %154 = trunc i64 %153 to i32
  store i32 %154, i32* %16, align 4
  %155 = load i32*, i32** %8, align 8
  %156 = load i32, i32* %16, align 4
  %157 = call i8* @bfd_alloc(i32* %155, i32 %156)
  %158 = load i8**, i8*** %12, align 8
  store i8* %157, i8** %158, align 8
  %159 = load i8**, i8*** %12, align 8
  %160 = load i8*, i8** %159, align 8
  %161 = icmp eq i8* %160, null
  br i1 %161, label %162, label %163

162:                                              ; preds = %139
  br label %710

163:                                              ; preds = %139
  %164 = load i8**, i8*** %12, align 8
  %165 = load i8*, i8** %164, align 8
  %166 = bitcast i8* %165 to %struct.stab_section_info*
  store %struct.stab_section_info* %166, %struct.stab_section_info** %17, align 8
  %167 = load %struct.stab_section_info*, %struct.stab_section_info** %17, align 8
  %168 = getelementptr inbounds %struct.stab_section_info, %struct.stab_section_info* %167, i32 0, i32 2
  store %struct.stab_excl_list* null, %struct.stab_excl_list** %168, align 8
  %169 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = trunc i64 %171 to i32
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 2
  store i32 %172, i32* %174, align 4
  %175 = load %struct.stab_section_info*, %struct.stab_section_info** %17, align 8
  %176 = getelementptr inbounds %struct.stab_section_info, %struct.stab_section_info* %175, i32 0, i32 0
  store i32* null, i32** %176, align 8
  %177 = load %struct.stab_section_info*, %struct.stab_section_info** %17, align 8
  %178 = getelementptr inbounds %struct.stab_section_info, %struct.stab_section_info* %177, i32 0, i32 1
  %179 = load i32*, i32** %178, align 8
  %180 = load i32, i32* %15, align 4
  %181 = sext i32 %180 to i64
  %182 = mul i64 %181, 4
  %183 = call i32 @memset(i32* %179, i32 0, i64 %182)
  %184 = load i32*, i32** %8, align 8
  %185 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %186 = call i32 @bfd_malloc_and_get_section(i32* %184, %struct.TYPE_8__* %185, i8** %18)
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %193

188:                                              ; preds = %163
  %189 = load i32*, i32** %8, align 8
  %190 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %191 = call i32 @bfd_malloc_and_get_section(i32* %189, %struct.TYPE_8__* %190, i8** %19)
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %194, label %193

193:                                              ; preds = %188, %163
  br label %710

194:                                              ; preds = %188
  store i32 0, i32* %22, align 4
  %195 = load i32*, i32** %13, align 8
  %196 = icmp ne i32* %195, null
  br i1 %196, label %197, label %200

197:                                              ; preds = %194
  %198 = load i32*, i32** %13, align 8
  %199 = load i32, i32* %198, align 4
  br label %201

200:                                              ; preds = %194
  br label %201

201:                                              ; preds = %200, %197
  %202 = phi i32 [ %199, %197 ], [ 0, %200 ]
  store i32 %202, i32* %23, align 4
  store i32 0, i32* %24, align 4
  %203 = load i8*, i8** %18, align 8
  %204 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = getelementptr inbounds i8, i8* %203, i64 %206
  store i8* %207, i8** %21, align 8
  %208 = load i8*, i8** %18, align 8
  store i8* %208, i8** %20, align 8
  %209 = load %struct.stab_section_info*, %struct.stab_section_info** %17, align 8
  %210 = getelementptr inbounds %struct.stab_section_info, %struct.stab_section_info* %209, i32 0, i32 1
  %211 = load i32*, i32** %210, align 8
  store i32* %211, i32** %25, align 8
  br label %212

212:                                              ; preds = %608, %201
  %213 = load i8*, i8** %20, align 8
  %214 = load i8*, i8** %21, align 8
  %215 = icmp ult i8* %213, %214
  br i1 %215, label %216, label %615

216:                                              ; preds = %212
  %217 = load i32*, i32** %25, align 8
  %218 = load i32, i32* %217, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %221

220:                                              ; preds = %216
  br label %608

221:                                              ; preds = %216
  %222 = load i8*, i8** %20, align 8
  %223 = load i64, i64* @TYPEOFF, align 8
  %224 = getelementptr inbounds i8, i8* %222, i64 %223
  %225 = load i8, i8* %224, align 1
  %226 = sext i8 %225 to i32
  store i32 %226, i32* %28, align 4
  %227 = load i32, i32* %28, align 4
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %229, label %251

229:                                              ; preds = %221
  %230 = load i32, i32* %23, align 4
  store i32 %230, i32* %22, align 4
  %231 = load i32*, i32** %8, align 8
  %232 = load i8*, i8** %20, align 8
  %233 = getelementptr inbounds i8, i8* %232, i64 8
  %234 = call i32 @bfd_get_32(i32* %231, i8* %233)
  %235 = load i32, i32* %23, align 4
  %236 = add nsw i32 %235, %234
  store i32 %236, i32* %23, align 4
  %237 = load i32*, i32** %13, align 8
  %238 = icmp ne i32* %237, null
  br i1 %238, label %239, label %242

239:                                              ; preds = %229
  %240 = load i32, i32* %23, align 4
  %241 = load i32*, i32** %13, align 8
  store i32 %240, i32* %241, align 4
  br label %242

242:                                              ; preds = %239, %229
  %243 = load i64, i64* %14, align 8
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %249, label %245

245:                                              ; preds = %242
  %246 = load i32*, i32** %25, align 8
  store i32 -1, i32* %246, align 4
  %247 = load i32, i32* %24, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %24, align 4
  br label %608

249:                                              ; preds = %242
  %250 = load i64, i64* @FALSE, align 8
  store i64 %250, i64* %14, align 8
  br label %251

251:                                              ; preds = %249, %221
  %252 = load i32, i32* %22, align 4
  %253 = load i32*, i32** %8, align 8
  %254 = load i8*, i8** %20, align 8
  %255 = load i32, i32* @STRDXOFF, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i8, i8* %254, i64 %256
  %258 = call i32 @bfd_get_32(i32* %253, i8* %257)
  %259 = add nsw i32 %252, %258
  store i32 %259, i32* %27, align 4
  %260 = load i32, i32* %27, align 4
  %261 = sext i32 %260 to i64
  %262 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %263 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %262, i32 0, i32 0
  %264 = load i64, i64* %263, align 8
  %265 = icmp sge i64 %261, %264
  br i1 %265, label %266, label %278

266:                                              ; preds = %251
  %267 = call i32 @_(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  %268 = load i32*, i32** %8, align 8
  %269 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %270 = load i8*, i8** %20, align 8
  %271 = load i8*, i8** %18, align 8
  %272 = ptrtoint i8* %270 to i64
  %273 = ptrtoint i8* %271 to i64
  %274 = sub i64 %272, %273
  %275 = call i32 @_bfd_error_handler(i32 %267, i32* %268, %struct.TYPE_8__* %269, i64 %274)
  %276 = load i32, i32* @bfd_error_bad_value, align 4
  %277 = call i32 @bfd_set_error(i32 %276)
  br label %710

278:                                              ; preds = %251
  %279 = load i8*, i8** %19, align 8
  %280 = load i32, i32* %27, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i8, i8* %279, i64 %281
  store i8* %282, i8** %29, align 8
  %283 = load %struct.stab_info*, %struct.stab_info** %9, align 8
  %284 = getelementptr inbounds %struct.stab_info, %struct.stab_info* %283, i32 0, i32 0
  %285 = load i32*, i32** %284, align 8
  %286 = load i8*, i8** %29, align 8
  %287 = load i64, i64* @TRUE, align 8
  %288 = load i64, i64* @TRUE, align 8
  %289 = call i32 @_bfd_stringtab_add(i32* %285, i8* %286, i64 %287, i64 %288)
  %290 = load i32*, i32** %25, align 8
  store i32 %289, i32* %290, align 4
  %291 = load i32, i32* %28, align 4
  %292 = load i64, i64* @N_BINCL, align 8
  %293 = trunc i64 %292 to i32
  %294 = icmp eq i32 %291, %293
  br i1 %294, label %295, label %607

295:                                              ; preds = %278
  store i64 0, i64* %32, align 8
  store i8* null, i8** %34, align 8
  store i8* null, i8** %33, align 8
  store i64 0, i64* %31, align 8
  store i64 0, i64* %30, align 8
  store i32 0, i32* %35, align 4
  %296 = load i8*, i8** %20, align 8
  %297 = load i32, i32* @STABSIZE, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds i8, i8* %296, i64 %298
  store i8* %299, i8** %36, align 8
  br label %300

300:                                              ; preds = %417, %295
  %301 = load i8*, i8** %36, align 8
  %302 = load i8*, i8** %21, align 8
  %303 = icmp ult i8* %301, %302
  br i1 %303, label %304, label %422

304:                                              ; preds = %300
  %305 = load i8*, i8** %36, align 8
  %306 = load i64, i64* @TYPEOFF, align 8
  %307 = getelementptr inbounds i8, i8* %305, i64 %306
  %308 = load i8, i8* %307, align 1
  %309 = sext i8 %308 to i32
  store i32 %309, i32* %40, align 4
  %310 = load i32, i32* %40, align 4
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %312, label %313

312:                                              ; preds = %304
  br label %422

313:                                              ; preds = %304
  %314 = load i32, i32* %40, align 4
  %315 = load i64, i64* @N_EXCL, align 8
  %316 = trunc i64 %315 to i32
  %317 = icmp eq i32 %314, %316
  br i1 %317, label %318, label %319

318:                                              ; preds = %313
  br label %417

319:                                              ; preds = %313
  %320 = load i32, i32* %40, align 4
  %321 = load i64, i64* @N_EINCL, align 8
  %322 = trunc i64 %321 to i32
  %323 = icmp eq i32 %320, %322
  br i1 %323, label %324, label %331

324:                                              ; preds = %319
  %325 = load i32, i32* %35, align 4
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %327, label %328

327:                                              ; preds = %324
  br label %422

328:                                              ; preds = %324
  %329 = load i32, i32* %35, align 4
  %330 = add nsw i32 %329, -1
  store i32 %330, i32* %35, align 4
  br label %414

331:                                              ; preds = %319
  %332 = load i32, i32* %40, align 4
  %333 = load i64, i64* @N_BINCL, align 8
  %334 = trunc i64 %333 to i32
  %335 = icmp eq i32 %332, %334
  br i1 %335, label %336, label %339

336:                                              ; preds = %331
  %337 = load i32, i32* %35, align 4
  %338 = add nsw i32 %337, 1
  store i32 %338, i32* %35, align 4
  br label %413

339:                                              ; preds = %331
  %340 = load i32, i32* %35, align 4
  %341 = icmp eq i32 %340, 0
  br i1 %341, label %342, label %412

342:                                              ; preds = %339
  %343 = load i8*, i8** %19, align 8
  %344 = load i32, i32* %22, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds i8, i8* %343, i64 %345
  %347 = load i32*, i32** %8, align 8
  %348 = load i8*, i8** %36, align 8
  %349 = load i32, i32* @STRDXOFF, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds i8, i8* %348, i64 %350
  %352 = call i32 @bfd_get_32(i32* %347, i8* %351)
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds i8, i8* %346, i64 %353
  store i8* %354, i8** %41, align 8
  br label %355

355:                                              ; preds = %408, %342
  %356 = load i8*, i8** %41, align 8
  %357 = load i8, i8* %356, align 1
  %358 = sext i8 %357 to i32
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %411

360:                                              ; preds = %355
  %361 = load i64, i64* %31, align 8
  %362 = load i64, i64* %32, align 8
  %363 = icmp sge i64 %361, %362
  br i1 %363, label %364, label %377

364:                                              ; preds = %360
  %365 = load i64, i64* %32, align 8
  %366 = add nsw i64 %365, 32768
  store i64 %366, i64* %32, align 8
  %367 = load i8*, i8** %33, align 8
  %368 = load i64, i64* %32, align 8
  %369 = call i8* @bfd_realloc(i8* %367, i64 %368)
  store i8* %369, i8** %33, align 8
  %370 = load i8*, i8** %33, align 8
  %371 = icmp eq i8* %370, null
  br i1 %371, label %372, label %373

372:                                              ; preds = %364
  br label %710

373:                                              ; preds = %364
  %374 = load i8*, i8** %33, align 8
  %375 = load i64, i64* %31, align 8
  %376 = getelementptr inbounds i8, i8* %374, i64 %375
  store i8* %376, i8** %34, align 8
  br label %377

377:                                              ; preds = %373, %360
  %378 = load i8*, i8** %41, align 8
  %379 = load i8, i8* %378, align 1
  %380 = load i8*, i8** %34, align 8
  %381 = getelementptr inbounds i8, i8* %380, i32 1
  store i8* %381, i8** %34, align 8
  store i8 %379, i8* %380, align 1
  %382 = load i8*, i8** %41, align 8
  %383 = load i8, i8* %382, align 1
  %384 = sext i8 %383 to i64
  %385 = load i64, i64* %30, align 8
  %386 = add nsw i64 %385, %384
  store i64 %386, i64* %30, align 8
  %387 = load i64, i64* %31, align 8
  %388 = add nsw i64 %387, 1
  store i64 %388, i64* %31, align 8
  %389 = load i8*, i8** %41, align 8
  %390 = load i8, i8* %389, align 1
  %391 = sext i8 %390 to i32
  %392 = icmp eq i32 %391, 40
  br i1 %392, label %393, label %407

393:                                              ; preds = %377
  %394 = load i8*, i8** %41, align 8
  %395 = getelementptr inbounds i8, i8* %394, i32 1
  store i8* %395, i8** %41, align 8
  br label %396

396:                                              ; preds = %401, %393
  %397 = load i8*, i8** %41, align 8
  %398 = load i8, i8* %397, align 1
  %399 = call i64 @ISDIGIT(i8 signext %398)
  %400 = icmp ne i64 %399, 0
  br i1 %400, label %401, label %404

401:                                              ; preds = %396
  %402 = load i8*, i8** %41, align 8
  %403 = getelementptr inbounds i8, i8* %402, i32 1
  store i8* %403, i8** %41, align 8
  br label %396

404:                                              ; preds = %396
  %405 = load i8*, i8** %41, align 8
  %406 = getelementptr inbounds i8, i8* %405, i32 -1
  store i8* %406, i8** %41, align 8
  br label %407

407:                                              ; preds = %404, %377
  br label %408

408:                                              ; preds = %407
  %409 = load i8*, i8** %41, align 8
  %410 = getelementptr inbounds i8, i8* %409, i32 1
  store i8* %410, i8** %41, align 8
  br label %355

411:                                              ; preds = %355
  br label %412

412:                                              ; preds = %411, %339
  br label %413

413:                                              ; preds = %412, %336
  br label %414

414:                                              ; preds = %413, %328
  br label %415

415:                                              ; preds = %414
  br label %416

416:                                              ; preds = %415
  br label %417

417:                                              ; preds = %416, %318
  %418 = load i32, i32* @STABSIZE, align 4
  %419 = load i8*, i8** %36, align 8
  %420 = sext i32 %418 to i64
  %421 = getelementptr inbounds i8, i8* %419, i64 %420
  store i8* %421, i8** %36, align 8
  br label %300

422:                                              ; preds = %327, %312, %300
  %423 = load i64, i64* %31, align 8
  %424 = load i8*, i8** %34, align 8
  %425 = load i8*, i8** %33, align 8
  %426 = ptrtoint i8* %424 to i64
  %427 = ptrtoint i8* %425 to i64
  %428 = sub i64 %426, %427
  %429 = icmp eq i64 %423, %428
  %430 = zext i1 %429 to i32
  %431 = call i32 @BFD_ASSERT(i32 %430)
  %432 = load %struct.stab_info*, %struct.stab_info** %9, align 8
  %433 = getelementptr inbounds %struct.stab_info, %struct.stab_info* %432, i32 0, i32 2
  %434 = load i8*, i8** %29, align 8
  %435 = load i64, i64* @TRUE, align 8
  %436 = load i64, i64* @TRUE, align 8
  %437 = call i64 @bfd_hash_lookup(i32* %433, i8* %434, i64 %435, i64 %436)
  %438 = inttoptr i64 %437 to %struct.stab_link_includes_entry*
  store %struct.stab_link_includes_entry* %438, %struct.stab_link_includes_entry** %37, align 8
  %439 = load %struct.stab_link_includes_entry*, %struct.stab_link_includes_entry** %37, align 8
  %440 = icmp eq %struct.stab_link_includes_entry* %439, null
  br i1 %440, label %441, label %442

441:                                              ; preds = %422
  br label %710

442:                                              ; preds = %422
  %443 = load %struct.stab_link_includes_entry*, %struct.stab_link_includes_entry** %37, align 8
  %444 = getelementptr inbounds %struct.stab_link_includes_entry, %struct.stab_link_includes_entry* %443, i32 0, i32 0
  %445 = load %struct.stab_link_includes_totals*, %struct.stab_link_includes_totals** %444, align 8
  store %struct.stab_link_includes_totals* %445, %struct.stab_link_includes_totals** %38, align 8
  br label %446

446:                                              ; preds = %471, %442
  %447 = load %struct.stab_link_includes_totals*, %struct.stab_link_includes_totals** %38, align 8
  %448 = icmp ne %struct.stab_link_includes_totals* %447, null
  br i1 %448, label %449, label %475

449:                                              ; preds = %446
  %450 = load %struct.stab_link_includes_totals*, %struct.stab_link_includes_totals** %38, align 8
  %451 = getelementptr inbounds %struct.stab_link_includes_totals, %struct.stab_link_includes_totals* %450, i32 0, i32 0
  %452 = load i64, i64* %451, align 8
  %453 = load i64, i64* %30, align 8
  %454 = icmp eq i64 %452, %453
  br i1 %454, label %455, label %470

455:                                              ; preds = %449
  %456 = load %struct.stab_link_includes_totals*, %struct.stab_link_includes_totals** %38, align 8
  %457 = getelementptr inbounds %struct.stab_link_includes_totals, %struct.stab_link_includes_totals* %456, i32 0, i32 1
  %458 = load i64, i64* %457, align 8
  %459 = load i64, i64* %31, align 8
  %460 = icmp eq i64 %458, %459
  br i1 %460, label %461, label %470

461:                                              ; preds = %455
  %462 = load %struct.stab_link_includes_totals*, %struct.stab_link_includes_totals** %38, align 8
  %463 = getelementptr inbounds %struct.stab_link_includes_totals, %struct.stab_link_includes_totals* %462, i32 0, i32 3
  %464 = load i8*, i8** %463, align 8
  %465 = load i8*, i8** %33, align 8
  %466 = load i64, i64* %31, align 8
  %467 = call i64 @memcmp(i8* %464, i8* %465, i64 %466)
  %468 = icmp eq i64 %467, 0
  br i1 %468, label %469, label %470

469:                                              ; preds = %461
  br label %475

470:                                              ; preds = %461, %455, %449
  br label %471

471:                                              ; preds = %470
  %472 = load %struct.stab_link_includes_totals*, %struct.stab_link_includes_totals** %38, align 8
  %473 = getelementptr inbounds %struct.stab_link_includes_totals, %struct.stab_link_includes_totals* %472, i32 0, i32 2
  %474 = load %struct.stab_link_includes_totals*, %struct.stab_link_includes_totals** %473, align 8
  store %struct.stab_link_includes_totals* %474, %struct.stab_link_includes_totals** %38, align 8
  br label %446

475:                                              ; preds = %469, %446
  store i32 32, i32* %16, align 4
  %476 = load i32*, i32** %8, align 8
  %477 = load i32, i32* %16, align 4
  %478 = call i8* @bfd_alloc(i32* %476, i32 %477)
  %479 = bitcast i8* %478 to %struct.stab_excl_list*
  store %struct.stab_excl_list* %479, %struct.stab_excl_list** %39, align 8
  %480 = load %struct.stab_excl_list*, %struct.stab_excl_list** %39, align 8
  %481 = icmp eq %struct.stab_excl_list* %480, null
  br i1 %481, label %482, label %483

482:                                              ; preds = %475
  br label %710

483:                                              ; preds = %475
  %484 = load i8*, i8** %20, align 8
  %485 = load i8*, i8** %18, align 8
  %486 = ptrtoint i8* %484 to i64
  %487 = ptrtoint i8* %485 to i64
  %488 = sub i64 %486, %487
  %489 = trunc i64 %488 to i32
  %490 = load %struct.stab_excl_list*, %struct.stab_excl_list** %39, align 8
  %491 = getelementptr inbounds %struct.stab_excl_list, %struct.stab_excl_list* %490, i32 0, i32 3
  store i32 %489, i32* %491, align 8
  %492 = load i64, i64* %30, align 8
  %493 = load %struct.stab_excl_list*, %struct.stab_excl_list** %39, align 8
  %494 = getelementptr inbounds %struct.stab_excl_list, %struct.stab_excl_list* %493, i32 0, i32 2
  store i64 %492, i64* %494, align 8
  %495 = load i64, i64* @N_BINCL, align 8
  %496 = trunc i64 %495 to i32
  %497 = load %struct.stab_excl_list*, %struct.stab_excl_list** %39, align 8
  %498 = getelementptr inbounds %struct.stab_excl_list, %struct.stab_excl_list* %497, i32 0, i32 0
  store i32 %496, i32* %498, align 8
  %499 = load %struct.stab_section_info*, %struct.stab_section_info** %17, align 8
  %500 = getelementptr inbounds %struct.stab_section_info, %struct.stab_section_info* %499, i32 0, i32 2
  %501 = load %struct.stab_excl_list*, %struct.stab_excl_list** %500, align 8
  %502 = load %struct.stab_excl_list*, %struct.stab_excl_list** %39, align 8
  %503 = getelementptr inbounds %struct.stab_excl_list, %struct.stab_excl_list* %502, i32 0, i32 1
  store %struct.stab_excl_list* %501, %struct.stab_excl_list** %503, align 8
  %504 = load %struct.stab_excl_list*, %struct.stab_excl_list** %39, align 8
  %505 = load %struct.stab_section_info*, %struct.stab_section_info** %17, align 8
  %506 = getelementptr inbounds %struct.stab_section_info, %struct.stab_section_info* %505, i32 0, i32 2
  store %struct.stab_excl_list* %504, %struct.stab_excl_list** %506, align 8
  %507 = load %struct.stab_link_includes_totals*, %struct.stab_link_includes_totals** %38, align 8
  %508 = icmp eq %struct.stab_link_includes_totals* %507, null
  br i1 %508, label %509, label %536

509:                                              ; preds = %483
  %510 = load %struct.stab_info*, %struct.stab_info** %9, align 8
  %511 = getelementptr inbounds %struct.stab_info, %struct.stab_info* %510, i32 0, i32 2
  %512 = call %struct.stab_link_includes_totals* @bfd_hash_allocate(i32* %511, i32 32)
  store %struct.stab_link_includes_totals* %512, %struct.stab_link_includes_totals** %38, align 8
  %513 = load %struct.stab_link_includes_totals*, %struct.stab_link_includes_totals** %38, align 8
  %514 = icmp eq %struct.stab_link_includes_totals* %513, null
  br i1 %514, label %515, label %516

515:                                              ; preds = %509
  br label %710

516:                                              ; preds = %509
  %517 = load i64, i64* %30, align 8
  %518 = load %struct.stab_link_includes_totals*, %struct.stab_link_includes_totals** %38, align 8
  %519 = getelementptr inbounds %struct.stab_link_includes_totals, %struct.stab_link_includes_totals* %518, i32 0, i32 0
  store i64 %517, i64* %519, align 8
  %520 = load i64, i64* %31, align 8
  %521 = load %struct.stab_link_includes_totals*, %struct.stab_link_includes_totals** %38, align 8
  %522 = getelementptr inbounds %struct.stab_link_includes_totals, %struct.stab_link_includes_totals* %521, i32 0, i32 1
  store i64 %520, i64* %522, align 8
  %523 = load i8*, i8** %33, align 8
  %524 = load i64, i64* %31, align 8
  %525 = call i8* @bfd_realloc(i8* %523, i64 %524)
  %526 = load %struct.stab_link_includes_totals*, %struct.stab_link_includes_totals** %38, align 8
  %527 = getelementptr inbounds %struct.stab_link_includes_totals, %struct.stab_link_includes_totals* %526, i32 0, i32 3
  store i8* %525, i8** %527, align 8
  %528 = load %struct.stab_link_includes_entry*, %struct.stab_link_includes_entry** %37, align 8
  %529 = getelementptr inbounds %struct.stab_link_includes_entry, %struct.stab_link_includes_entry* %528, i32 0, i32 0
  %530 = load %struct.stab_link_includes_totals*, %struct.stab_link_includes_totals** %529, align 8
  %531 = load %struct.stab_link_includes_totals*, %struct.stab_link_includes_totals** %38, align 8
  %532 = getelementptr inbounds %struct.stab_link_includes_totals, %struct.stab_link_includes_totals* %531, i32 0, i32 2
  store %struct.stab_link_includes_totals* %530, %struct.stab_link_includes_totals** %532, align 8
  %533 = load %struct.stab_link_includes_totals*, %struct.stab_link_includes_totals** %38, align 8
  %534 = load %struct.stab_link_includes_entry*, %struct.stab_link_includes_entry** %37, align 8
  %535 = getelementptr inbounds %struct.stab_link_includes_entry, %struct.stab_link_includes_entry* %534, i32 0, i32 0
  store %struct.stab_link_includes_totals* %533, %struct.stab_link_includes_totals** %535, align 8
  br label %606

536:                                              ; preds = %483
  %537 = load i64, i64* @N_EXCL, align 8
  %538 = trunc i64 %537 to i32
  %539 = load %struct.stab_excl_list*, %struct.stab_excl_list** %39, align 8
  %540 = getelementptr inbounds %struct.stab_excl_list, %struct.stab_excl_list* %539, i32 0, i32 0
  store i32 %538, i32* %540, align 8
  %541 = load i8*, i8** %33, align 8
  %542 = call i32 @free(i8* %541)
  store i32 0, i32* %35, align 4
  %543 = load i8*, i8** %20, align 8
  %544 = load i32, i32* @STABSIZE, align 4
  %545 = sext i32 %544 to i64
  %546 = getelementptr inbounds i8, i8* %543, i64 %545
  store i8* %546, i8** %36, align 8
  %547 = load i32*, i32** %25, align 8
  %548 = getelementptr inbounds i32, i32* %547, i64 1
  store i32* %548, i32** %42, align 8
  br label %549

549:                                              ; preds = %598, %536
  %550 = load i8*, i8** %36, align 8
  %551 = load i8*, i8** %21, align 8
  %552 = icmp ult i8* %550, %551
  br i1 %552, label %553, label %605

553:                                              ; preds = %549
  %554 = load i8*, i8** %36, align 8
  %555 = load i64, i64* @TYPEOFF, align 8
  %556 = getelementptr inbounds i8, i8* %554, i64 %555
  %557 = load i8, i8* %556, align 1
  %558 = sext i8 %557 to i32
  store i32 %558, i32* %43, align 4
  %559 = load i32, i32* %43, align 4
  %560 = load i64, i64* @N_EINCL, align 8
  %561 = trunc i64 %560 to i32
  %562 = icmp eq i32 %559, %561
  br i1 %562, label %563, label %573

563:                                              ; preds = %553
  %564 = load i32, i32* %35, align 4
  %565 = icmp eq i32 %564, 0
  br i1 %565, label %566, label %570

566:                                              ; preds = %563
  %567 = load i32*, i32** %42, align 8
  store i32 -1, i32* %567, align 4
  %568 = load i32, i32* %24, align 4
  %569 = add nsw i32 %568, 1
  store i32 %569, i32* %24, align 4
  br label %605

570:                                              ; preds = %563
  %571 = load i32, i32* %35, align 4
  %572 = add nsw i32 %571, -1
  store i32 %572, i32* %35, align 4
  br label %597

573:                                              ; preds = %553
  %574 = load i32, i32* %43, align 4
  %575 = load i64, i64* @N_BINCL, align 8
  %576 = trunc i64 %575 to i32
  %577 = icmp eq i32 %574, %576
  br i1 %577, label %578, label %581

578:                                              ; preds = %573
  %579 = load i32, i32* %35, align 4
  %580 = add nsw i32 %579, 1
  store i32 %580, i32* %35, align 4
  br label %596

581:                                              ; preds = %573
  %582 = load i32, i32* %43, align 4
  %583 = load i64, i64* @N_EXCL, align 8
  %584 = trunc i64 %583 to i32
  %585 = icmp eq i32 %582, %584
  br i1 %585, label %586, label %587

586:                                              ; preds = %581
  br label %598

587:                                              ; preds = %581
  %588 = load i32, i32* %35, align 4
  %589 = icmp eq i32 %588, 0
  br i1 %589, label %590, label %594

590:                                              ; preds = %587
  %591 = load i32*, i32** %42, align 8
  store i32 -1, i32* %591, align 4
  %592 = load i32, i32* %24, align 4
  %593 = add nsw i32 %592, 1
  store i32 %593, i32* %24, align 4
  br label %594

594:                                              ; preds = %590, %587
  br label %595

595:                                              ; preds = %594
  br label %596

596:                                              ; preds = %595, %578
  br label %597

597:                                              ; preds = %596, %570
  br label %598

598:                                              ; preds = %597, %586
  %599 = load i32, i32* @STABSIZE, align 4
  %600 = load i8*, i8** %36, align 8
  %601 = sext i32 %599 to i64
  %602 = getelementptr inbounds i8, i8* %600, i64 %601
  store i8* %602, i8** %36, align 8
  %603 = load i32*, i32** %42, align 8
  %604 = getelementptr inbounds i32, i32* %603, i32 1
  store i32* %604, i32** %42, align 8
  br label %549

605:                                              ; preds = %566, %549
  br label %606

606:                                              ; preds = %605, %516
  br label %607

607:                                              ; preds = %606, %278
  br label %608

608:                                              ; preds = %607, %245, %220
  %609 = load i32, i32* @STABSIZE, align 4
  %610 = load i8*, i8** %20, align 8
  %611 = sext i32 %609 to i64
  %612 = getelementptr inbounds i8, i8* %610, i64 %611
  store i8* %612, i8** %20, align 8
  %613 = load i32*, i32** %25, align 8
  %614 = getelementptr inbounds i32, i32* %613, i32 1
  store i32* %614, i32** %25, align 8
  br label %212

615:                                              ; preds = %212
  %616 = load i8*, i8** %18, align 8
  %617 = call i32 @free(i8* %616)
  store i8* null, i8** %18, align 8
  %618 = load i8*, i8** %19, align 8
  %619 = call i32 @free(i8* %618)
  store i8* null, i8** %19, align 8
  %620 = load i32, i32* %15, align 4
  %621 = load i32, i32* %24, align 4
  %622 = sub nsw i32 %620, %621
  %623 = load i32, i32* @STABSIZE, align 4
  %624 = mul nsw i32 %622, %623
  %625 = sext i32 %624 to i64
  %626 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %627 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %626, i32 0, i32 0
  store i64 %625, i64* %627, align 8
  %628 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %629 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %628, i32 0, i32 0
  %630 = load i64, i64* %629, align 8
  %631 = icmp eq i64 %630, 0
  br i1 %631, label %632, label %640

632:                                              ; preds = %615
  %633 = load i32, i32* @SEC_EXCLUDE, align 4
  %634 = load i32, i32* @SEC_KEEP, align 4
  %635 = or i32 %633, %634
  %636 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %637 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %636, i32 0, i32 1
  %638 = load i32, i32* %637, align 8
  %639 = or i32 %638, %635
  store i32 %639, i32* %637, align 8
  br label %640

640:                                              ; preds = %632, %615
  %641 = load i32, i32* @SEC_EXCLUDE, align 4
  %642 = load i32, i32* @SEC_KEEP, align 4
  %643 = or i32 %641, %642
  %644 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %645 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %644, i32 0, i32 1
  %646 = load i32, i32* %645, align 8
  %647 = or i32 %646, %643
  store i32 %647, i32* %645, align 8
  %648 = load %struct.stab_info*, %struct.stab_info** %9, align 8
  %649 = getelementptr inbounds %struct.stab_info, %struct.stab_info* %648, i32 0, i32 0
  %650 = load i32*, i32** %649, align 8
  %651 = call i32 @_bfd_stringtab_size(i32* %650)
  %652 = load %struct.stab_info*, %struct.stab_info** %9, align 8
  %653 = getelementptr inbounds %struct.stab_info, %struct.stab_info* %652, i32 0, i32 1
  %654 = load %struct.TYPE_9__*, %struct.TYPE_9__** %653, align 8
  %655 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %654, i32 0, i32 0
  store i32 %651, i32* %655, align 4
  %656 = load i32, i32* %24, align 4
  %657 = icmp ne i32 %656, 0
  br i1 %657, label %658, label %708

658:                                              ; preds = %640
  %659 = load i32, i32* %15, align 4
  %660 = sext i32 %659 to i64
  %661 = mul i64 %660, 4
  %662 = trunc i64 %661 to i32
  store i32 %662, i32* %16, align 4
  %663 = load i32*, i32** %8, align 8
  %664 = load i32, i32* %16, align 4
  %665 = call i8* @bfd_alloc(i32* %663, i32 %664)
  %666 = bitcast i8* %665 to i32*
  %667 = load %struct.stab_section_info*, %struct.stab_section_info** %17, align 8
  %668 = getelementptr inbounds %struct.stab_section_info, %struct.stab_section_info* %667, i32 0, i32 0
  store i32* %666, i32** %668, align 8
  %669 = load %struct.stab_section_info*, %struct.stab_section_info** %17, align 8
  %670 = getelementptr inbounds %struct.stab_section_info, %struct.stab_section_info* %669, i32 0, i32 0
  %671 = load i32*, i32** %670, align 8
  %672 = icmp eq i32* %671, null
  br i1 %672, label %673, label %674

673:                                              ; preds = %658
  br label %710

674:                                              ; preds = %658
  %675 = load %struct.stab_section_info*, %struct.stab_section_info** %17, align 8
  %676 = getelementptr inbounds %struct.stab_section_info, %struct.stab_section_info* %675, i32 0, i32 0
  %677 = load i32*, i32** %676, align 8
  store i32* %677, i32** %46, align 8
  %678 = load %struct.stab_section_info*, %struct.stab_section_info** %17, align 8
  %679 = getelementptr inbounds %struct.stab_section_info, %struct.stab_section_info* %678, i32 0, i32 1
  %680 = load i32*, i32** %679, align 8
  store i32* %680, i32** %25, align 8
  store i32 0, i32* %45, align 4
  store i32 0, i32* %44, align 4
  br label %681

681:                                              ; preds = %696, %674
  %682 = load i32, i32* %44, align 4
  %683 = load i32, i32* %15, align 4
  %684 = icmp slt i32 %682, %683
  br i1 %684, label %685, label %703

685:                                              ; preds = %681
  %686 = load i32, i32* %45, align 4
  %687 = load i32*, i32** %46, align 8
  store i32 %686, i32* %687, align 4
  %688 = load i32*, i32** %25, align 8
  %689 = load i32, i32* %688, align 4
  %690 = icmp eq i32 %689, -1
  br i1 %690, label %691, label %695

691:                                              ; preds = %685
  %692 = load i32, i32* @STABSIZE, align 4
  %693 = load i32, i32* %45, align 4
  %694 = add nsw i32 %693, %692
  store i32 %694, i32* %45, align 4
  br label %695

695:                                              ; preds = %691, %685
  br label %696

696:                                              ; preds = %695
  %697 = load i32, i32* %44, align 4
  %698 = add nsw i32 %697, 1
  store i32 %698, i32* %44, align 4
  %699 = load i32*, i32** %46, align 8
  %700 = getelementptr inbounds i32, i32* %699, i32 1
  store i32* %700, i32** %46, align 8
  %701 = load i32*, i32** %25, align 8
  %702 = getelementptr inbounds i32, i32* %701, i32 1
  store i32* %702, i32** %25, align 8
  br label %681

703:                                              ; preds = %681
  %704 = load i32, i32* %45, align 4
  %705 = icmp ne i32 %704, 0
  %706 = zext i1 %705 to i32
  %707 = call i32 @BFD_ASSERT(i32 %706)
  br label %708

708:                                              ; preds = %703, %640
  %709 = load i64, i64* @TRUE, align 8
  store i64 %709, i64* %7, align 8
  br label %724

710:                                              ; preds = %673, %515, %482, %441, %372, %266, %193, %162, %137, %119, %106
  %711 = load i8*, i8** %18, align 8
  %712 = icmp ne i8* %711, null
  br i1 %712, label %713, label %716

713:                                              ; preds = %710
  %714 = load i8*, i8** %18, align 8
  %715 = call i32 @free(i8* %714)
  br label %716

716:                                              ; preds = %713, %710
  %717 = load i8*, i8** %19, align 8
  %718 = icmp ne i8* %717, null
  br i1 %718, label %719, label %722

719:                                              ; preds = %716
  %720 = load i8*, i8** %19, align 8
  %721 = call i32 @free(i8* %720)
  br label %722

722:                                              ; preds = %719, %716
  %723 = load i64, i64* @FALSE, align 8
  store i64 %723, i64* %7, align 8
  br label %724

724:                                              ; preds = %722, %708, %89, %75, %66, %56
  %725 = load i64, i64* %7, align 8
  ret i64 %725
}

declare dso_local i64 @bfd_is_abs_section(i32) #1

declare dso_local i32* @_bfd_stringtab_init(...) #1

declare dso_local i32 @_bfd_stringtab_add(i32*, i8*, i64, i64) #1

declare dso_local i32 @bfd_hash_table_init(i32*, i32, i32) #1

declare dso_local %struct.TYPE_9__* @bfd_make_section_anyway_with_flags(i32*, i8*, i32) #1

declare dso_local i8* @bfd_alloc(i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i32 @bfd_malloc_and_get_section(i32*, %struct.TYPE_8__*, i8**) #1

declare dso_local i32 @bfd_get_32(i32*, i8*) #1

declare dso_local i32 @_bfd_error_handler(i32, i32*, %struct.TYPE_8__*, i64) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @bfd_set_error(i32) #1

declare dso_local i8* @bfd_realloc(i8*, i64) #1

declare dso_local i64 @ISDIGIT(i8 signext) #1

declare dso_local i32 @BFD_ASSERT(i32) #1

declare dso_local i64 @bfd_hash_lookup(i32*, i8*, i64, i64) #1

declare dso_local i64 @memcmp(i8*, i8*, i64) #1

declare dso_local %struct.stab_link_includes_totals* @bfd_hash_allocate(i32*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @_bfd_stringtab_size(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
