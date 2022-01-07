; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c__bfd_elf_add_default_symbol.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c__bfd_elf_add_default_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.bfd_link_info = type { i64, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.elf_link_hash_entry = type { i32, i64, %struct.bfd_link_hash_entry, i64, i64 }
%struct.bfd_link_hash_entry = type { i64, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.bfd_link_hash_entry* }
%struct.elf_backend_data = type { i32, i32 (%struct.bfd_link_info.0*, %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry*)* }
%struct.bfd_link_info.0 = type opaque

@ELF_VER_CHR = common dso_local global i8 0, align 1
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@bfd_link_hash_indirect = common dso_local global i64 0, align 8
@bfd_link_hash_warning = common dso_local global i64 0, align 8
@DYNAMIC = common dso_local global i32 0, align 4
@BSF_INDIRECT = common dso_local global i32 0, align 4
@bfd_ind_section_ptr = common dso_local global i32 0, align 4
@bfd_link_hash_defined = common dso_local global i64 0, align 8
@bfd_link_hash_defweak = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [62 x i8] c"%B: unexpected redefinition of indirect versioned symbol `%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_bfd_elf_add_default_symbol(%struct.TYPE_14__* %0, %struct.bfd_link_info* %1, %struct.elf_link_hash_entry* %2, i8* %3, i32* %4, i32** %5, i32* %6, i32* %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca %struct.bfd_link_info*, align 8
  %13 = alloca %struct.elf_link_hash_entry*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32**, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca %struct.elf_link_hash_entry*, align 8
  %25 = alloca %struct.bfd_link_hash_entry*, align 8
  %26 = alloca %struct.elf_backend_data*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i8*, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i32*, align 8
  %33 = alloca %struct.elf_link_hash_entry*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %11, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %12, align 8
  store %struct.elf_link_hash_entry* %2, %struct.elf_link_hash_entry** %13, align 8
  store i8* %3, i8** %14, align 8
  store i32* %4, i32** %15, align 8
  store i32** %5, i32*** %16, align 8
  store i32* %6, i32** %17, align 8
  store i32* %7, i32** %18, align 8
  store i32 %8, i32* %19, align 4
  %34 = load i8*, i8** %14, align 8
  %35 = load i8, i8* @ELF_VER_CHR, align 1
  %36 = call i8* @strchr(i8* %34, i8 signext %35)
  store i8* %36, i8** %29, align 8
  %37 = load i8*, i8** %29, align 8
  %38 = icmp eq i8* %37, null
  br i1 %38, label %47, label %39

39:                                               ; preds = %9
  %40 = load i8*, i8** %29, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 1
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = load i8, i8* @ELF_VER_CHR, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %43, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %39, %9
  %48 = load i32, i32* @TRUE, align 4
  store i32 %48, i32* %10, align 4
  br label %447

49:                                               ; preds = %39
  %50 = load i32, i32* %19, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %101

52:                                               ; preds = %49
  %53 = load %struct.bfd_link_info*, %struct.bfd_link_info** %12, align 8
  %54 = call i32 @elf_hash_table(%struct.bfd_link_info* %53)
  %55 = load i8*, i8** %14, align 8
  %56 = load i32, i32* @TRUE, align 4
  %57 = load i32, i32* @FALSE, align 4
  %58 = load i32, i32* @FALSE, align 4
  %59 = call %struct.elf_link_hash_entry* @elf_link_hash_lookup(i32 %54, i8* %55, i32 %56, i32 %57, i32 %58)
  store %struct.elf_link_hash_entry* %59, %struct.elf_link_hash_entry** %24, align 8
  %60 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %24, align 8
  %61 = icmp ne %struct.elf_link_hash_entry* %60, null
  %62 = zext i1 %61 to i32
  %63 = call i32 @BFD_ASSERT(i32 %62)
  %64 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %24, align 8
  %65 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %13, align 8
  %66 = icmp eq %struct.elf_link_hash_entry* %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %52
  %68 = load i32, i32* @TRUE, align 4
  store i32 %68, i32* %10, align 4
  br label %447

69:                                               ; preds = %52
  br label %70

70:                                               ; preds = %99, %69
  %71 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %24, align 8
  %72 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @bfd_link_hash_indirect, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %84, label %77

77:                                               ; preds = %70
  %78 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %24, align 8
  %79 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @bfd_link_hash_warning, align 8
  %83 = icmp eq i64 %81, %82
  br label %84

84:                                               ; preds = %77, %70
  %85 = phi i1 [ true, %70 ], [ %83, %77 ]
  br i1 %85, label %86, label %100

86:                                               ; preds = %84
  %87 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %24, align 8
  %88 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 0
  %92 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %91, align 8
  %93 = bitcast %struct.bfd_link_hash_entry* %92 to %struct.elf_link_hash_entry*
  store %struct.elf_link_hash_entry* %93, %struct.elf_link_hash_entry** %24, align 8
  %94 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %24, align 8
  %95 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %13, align 8
  %96 = icmp eq %struct.elf_link_hash_entry* %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %86
  %98 = load i32, i32* @TRUE, align 4
  store i32 %98, i32* %10, align 4
  br label %447

99:                                               ; preds = %86
  br label %70

100:                                              ; preds = %84
  br label %101

101:                                              ; preds = %100, %49
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %103 = call %struct.elf_backend_data* @get_elf_backend_data(%struct.TYPE_14__* %102)
  store %struct.elf_backend_data* %103, %struct.elf_backend_data** %26, align 8
  %104 = load %struct.elf_backend_data*, %struct.elf_backend_data** %26, align 8
  %105 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  store i32 %106, i32* %27, align 4
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @DYNAMIC, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  %113 = zext i1 %112 to i32
  store i32 %113, i32* %28, align 4
  %114 = load i8*, i8** %29, align 8
  %115 = load i8*, i8** %14, align 8
  %116 = ptrtoint i8* %114 to i64
  %117 = ptrtoint i8* %115 to i64
  %118 = sub i64 %116, %117
  store i64 %118, i64* %31, align 8
  %119 = load %struct.bfd_link_info*, %struct.bfd_link_info** %12, align 8
  %120 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %119, i32 0, i32 1
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 0
  %123 = load i64, i64* %31, align 8
  %124 = add i64 %123, 1
  %125 = call i8* @bfd_hash_allocate(i32* %122, i64 %124)
  store i8* %125, i8** %23, align 8
  %126 = load i8*, i8** %23, align 8
  %127 = icmp eq i8* %126, null
  br i1 %127, label %128, label %130

128:                                              ; preds = %101
  %129 = load i32, i32* @FALSE, align 4
  store i32 %129, i32* %10, align 4
  br label %447

130:                                              ; preds = %101
  %131 = load i8*, i8** %23, align 8
  %132 = load i8*, i8** %14, align 8
  %133 = load i64, i64* %31, align 8
  %134 = call i32 @memcpy(i8* %131, i8* %132, i64 %133)
  %135 = load i8*, i8** %23, align 8
  %136 = load i64, i64* %31, align 8
  %137 = getelementptr inbounds i8, i8* %135, i64 %136
  store i8 0, i8* %137, align 1
  %138 = load i32, i32* @FALSE, align 4
  store i32 %138, i32* %20, align 4
  %139 = load i32, i32* @FALSE, align 4
  store i32 %139, i32* %21, align 4
  %140 = load i32**, i32*** %16, align 8
  %141 = load i32*, i32** %140, align 8
  store i32* %141, i32** %32, align 8
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %143 = load %struct.bfd_link_info*, %struct.bfd_link_info** %12, align 8
  %144 = load i8*, i8** %23, align 8
  %145 = load i32*, i32** %15, align 8
  %146 = load i32*, i32** %17, align 8
  %147 = call i32 @_bfd_elf_merge_symbol(%struct.TYPE_14__* %142, %struct.bfd_link_info* %143, i8* %144, i32* %145, i32** %32, i32* %146, i32* null, %struct.elf_link_hash_entry** %24, i32* %22, i32* %19, i32* %20, i32* %21)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %151, label %149

149:                                              ; preds = %130
  %150 = load i32, i32* @FALSE, align 4
  store i32 %150, i32* %10, align 4
  br label %447

151:                                              ; preds = %130
  %152 = load i32, i32* %22, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %151
  br label %312

155:                                              ; preds = %151
  %156 = load i32, i32* %19, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %176, label %158

158:                                              ; preds = %155
  %159 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %24, align 8
  %160 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %159, i32 0, i32 2
  store %struct.bfd_link_hash_entry* %160, %struct.bfd_link_hash_entry** %25, align 8
  %161 = load %struct.bfd_link_info*, %struct.bfd_link_info** %12, align 8
  %162 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %163 = load i8*, i8** %23, align 8
  %164 = load i32, i32* @BSF_INDIRECT, align 4
  %165 = load i32, i32* @bfd_ind_section_ptr, align 4
  %166 = load i8*, i8** %14, align 8
  %167 = load i32, i32* @FALSE, align 4
  %168 = load i32, i32* %27, align 4
  %169 = call i32 @_bfd_generic_link_add_one_symbol(%struct.bfd_link_info* %161, %struct.TYPE_14__* %162, i8* %163, i32 %164, i32 %165, i32 0, i8* %166, i32 %167, i32 %168, %struct.bfd_link_hash_entry** %25)
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %173, label %171

171:                                              ; preds = %158
  %172 = load i32, i32* @FALSE, align 4
  store i32 %172, i32* %10, align 4
  br label %447

173:                                              ; preds = %158
  %174 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %25, align 8
  %175 = bitcast %struct.bfd_link_hash_entry* %174 to %struct.elf_link_hash_entry*
  store %struct.elf_link_hash_entry* %175, %struct.elf_link_hash_entry** %24, align 8
  br label %242

176:                                              ; preds = %155
  br label %177

177:                                              ; preds = %193, %176
  %178 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %24, align 8
  %179 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %178, i32 0, i32 2
  %180 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @bfd_link_hash_indirect, align 8
  %183 = icmp eq i64 %181, %182
  br i1 %183, label %191, label %184

184:                                              ; preds = %177
  %185 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %24, align 8
  %186 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %185, i32 0, i32 2
  %187 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* @bfd_link_hash_warning, align 8
  %190 = icmp eq i64 %188, %189
  br label %191

191:                                              ; preds = %184, %177
  %192 = phi i1 [ true, %177 ], [ %190, %184 ]
  br i1 %192, label %193, label %201

193:                                              ; preds = %191
  %194 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %24, align 8
  %195 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %194, i32 0, i32 2
  %196 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i32 0, i32 0
  %199 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %198, align 8
  %200 = bitcast %struct.bfd_link_hash_entry* %199 to %struct.elf_link_hash_entry*
  store %struct.elf_link_hash_entry* %200, %struct.elf_link_hash_entry** %24, align 8
  br label %177

201:                                              ; preds = %191
  %202 = load i64, i64* @bfd_link_hash_indirect, align 8
  %203 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %13, align 8
  %204 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %203, i32 0, i32 2
  %205 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %204, i32 0, i32 0
  store i64 %202, i64* %205, align 8
  %206 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %24, align 8
  %207 = bitcast %struct.elf_link_hash_entry* %206 to %struct.bfd_link_hash_entry*
  %208 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %13, align 8
  %209 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %208, i32 0, i32 2
  %210 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %211, i32 0, i32 0
  store %struct.bfd_link_hash_entry* %207, %struct.bfd_link_hash_entry** %212, align 8
  %213 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %13, align 8
  %214 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %213, i32 0, i32 4
  %215 = load i64, i64* %214, align 8
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %240

217:                                              ; preds = %201
  %218 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %13, align 8
  %219 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %218, i32 0, i32 4
  store i64 0, i64* %219, align 8
  %220 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %24, align 8
  %221 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %220, i32 0, i32 0
  store i32 1, i32* %221, align 8
  %222 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %24, align 8
  %223 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %222, i32 0, i32 1
  %224 = load i64, i64* %223, align 8
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %231, label %226

226:                                              ; preds = %217
  %227 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %24, align 8
  %228 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %227, i32 0, i32 3
  %229 = load i64, i64* %228, align 8
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %239

231:                                              ; preds = %226, %217
  %232 = load %struct.bfd_link_info*, %struct.bfd_link_info** %12, align 8
  %233 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %24, align 8
  %234 = call i32 @bfd_elf_link_record_dynamic_symbol(%struct.bfd_link_info* %232, %struct.elf_link_hash_entry* %233)
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %238, label %236

236:                                              ; preds = %231
  %237 = load i32, i32* @FALSE, align 4
  store i32 %237, i32* %10, align 4
  br label %447

238:                                              ; preds = %231
  br label %239

239:                                              ; preds = %238, %226
  br label %240

240:                                              ; preds = %239, %201
  %241 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %13, align 8
  store %struct.elf_link_hash_entry* %241, %struct.elf_link_hash_entry** %24, align 8
  br label %242

242:                                              ; preds = %240, %173
  %243 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %24, align 8
  %244 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %243, i32 0, i32 2
  %245 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %244, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  %247 = load i64, i64* @bfd_link_hash_warning, align 8
  %248 = icmp eq i64 %246, %247
  br i1 %248, label %249, label %257

249:                                              ; preds = %242
  %250 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %24, align 8
  %251 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %250, i32 0, i32 2
  %252 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %251, i32 0, i32 1
  %253 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %253, i32 0, i32 0
  %255 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %254, align 8
  %256 = bitcast %struct.bfd_link_hash_entry* %255 to %struct.elf_link_hash_entry*
  store %struct.elf_link_hash_entry* %256, %struct.elf_link_hash_entry** %24, align 8
  br label %257

257:                                              ; preds = %249, %242
  %258 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %24, align 8
  %259 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %258, i32 0, i32 2
  %260 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %259, i32 0, i32 0
  %261 = load i64, i64* %260, align 8
  %262 = load i64, i64* @bfd_link_hash_indirect, align 8
  %263 = icmp eq i64 %261, %262
  br i1 %263, label %264, label %311

264:                                              ; preds = %257
  %265 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %24, align 8
  %266 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %265, i32 0, i32 2
  %267 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %266, i32 0, i32 1
  %268 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %268, i32 0, i32 0
  %270 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %269, align 8
  %271 = bitcast %struct.bfd_link_hash_entry* %270 to %struct.elf_link_hash_entry*
  store %struct.elf_link_hash_entry* %271, %struct.elf_link_hash_entry** %33, align 8
  %272 = load %struct.elf_backend_data*, %struct.elf_backend_data** %26, align 8
  %273 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %272, i32 0, i32 1
  %274 = load i32 (%struct.bfd_link_info.0*, %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry*)*, i32 (%struct.bfd_link_info.0*, %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry*)** %273, align 8
  %275 = load %struct.bfd_link_info*, %struct.bfd_link_info** %12, align 8
  %276 = bitcast %struct.bfd_link_info* %275 to %struct.bfd_link_info.0*
  %277 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %33, align 8
  %278 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %24, align 8
  %279 = call i32 %274(%struct.bfd_link_info.0* %276, %struct.elf_link_hash_entry* %277, %struct.elf_link_hash_entry* %278)
  %280 = load i32*, i32** %18, align 8
  %281 = load i32, i32* %280, align 4
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %310, label %283

283:                                              ; preds = %264
  %284 = load i32, i32* %28, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %300, label %286

286:                                              ; preds = %283
  %287 = load %struct.bfd_link_info*, %struct.bfd_link_info** %12, align 8
  %288 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %287, i32 0, i32 0
  %289 = load i64, i64* %288, align 8
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %296, label %291

291:                                              ; preds = %286
  %292 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %24, align 8
  %293 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 8
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %299

296:                                              ; preds = %291, %286
  %297 = load i32, i32* @TRUE, align 4
  %298 = load i32*, i32** %18, align 8
  store i32 %297, i32* %298, align 4
  br label %299

299:                                              ; preds = %296, %291
  br label %309

300:                                              ; preds = %283
  %301 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %24, align 8
  %302 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %301, i32 0, i32 1
  %303 = load i64, i64* %302, align 8
  %304 = icmp ne i64 %303, 0
  br i1 %304, label %305, label %308

305:                                              ; preds = %300
  %306 = load i32, i32* @TRUE, align 4
  %307 = load i32*, i32** %18, align 8
  store i32 %306, i32* %307, align 4
  br label %308

308:                                              ; preds = %305, %300
  br label %309

309:                                              ; preds = %308, %299
  br label %310

310:                                              ; preds = %309, %264
  br label %311

311:                                              ; preds = %310, %257
  br label %312

312:                                              ; preds = %311, %154
  %313 = load i8*, i8** %14, align 8
  %314 = call i64 @strlen(i8* %313)
  store i64 %314, i64* %30, align 8
  %315 = load %struct.bfd_link_info*, %struct.bfd_link_info** %12, align 8
  %316 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %315, i32 0, i32 1
  %317 = load %struct.TYPE_13__*, %struct.TYPE_13__** %316, align 8
  %318 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %317, i32 0, i32 0
  %319 = load i64, i64* %30, align 8
  %320 = call i8* @bfd_hash_allocate(i32* %318, i64 %319)
  store i8* %320, i8** %23, align 8
  %321 = load i8*, i8** %23, align 8
  %322 = icmp eq i8* %321, null
  br i1 %322, label %323, label %325

323:                                              ; preds = %312
  %324 = load i32, i32* @FALSE, align 4
  store i32 %324, i32* %10, align 4
  br label %447

325:                                              ; preds = %312
  %326 = load i8*, i8** %23, align 8
  %327 = load i8*, i8** %14, align 8
  %328 = load i64, i64* %31, align 8
  %329 = call i32 @memcpy(i8* %326, i8* %327, i64 %328)
  %330 = load i8*, i8** %23, align 8
  %331 = load i64, i64* %31, align 8
  %332 = getelementptr inbounds i8, i8* %330, i64 %331
  %333 = load i8*, i8** %29, align 8
  %334 = getelementptr inbounds i8, i8* %333, i64 1
  %335 = load i64, i64* %30, align 8
  %336 = load i64, i64* %31, align 8
  %337 = sub i64 %335, %336
  %338 = call i32 @memcpy(i8* %332, i8* %334, i64 %337)
  %339 = load i32, i32* @FALSE, align 4
  store i32 %339, i32* %20, align 4
  %340 = load i32, i32* @FALSE, align 4
  store i32 %340, i32* %21, align 4
  %341 = load i32**, i32*** %16, align 8
  %342 = load i32*, i32** %341, align 8
  store i32* %342, i32** %32, align 8
  %343 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %344 = load %struct.bfd_link_info*, %struct.bfd_link_info** %12, align 8
  %345 = load i8*, i8** %23, align 8
  %346 = load i32*, i32** %15, align 8
  %347 = load i32*, i32** %17, align 8
  %348 = call i32 @_bfd_elf_merge_symbol(%struct.TYPE_14__* %343, %struct.bfd_link_info* %344, i8* %345, i32* %346, i32** %32, i32* %347, i32* null, %struct.elf_link_hash_entry** %24, i32* %22, i32* %19, i32* %20, i32* %21)
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %352, label %350

350:                                              ; preds = %325
  %351 = load i32, i32* @FALSE, align 4
  store i32 %351, i32* %10, align 4
  br label %447

352:                                              ; preds = %325
  %353 = load i32, i32* %22, align 4
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %357

355:                                              ; preds = %352
  %356 = load i32, i32* @TRUE, align 4
  store i32 %356, i32* %10, align 4
  br label %447

357:                                              ; preds = %352
  %358 = load i32, i32* %19, align 4
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %380

360:                                              ; preds = %357
  %361 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %24, align 8
  %362 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %361, i32 0, i32 2
  %363 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %362, i32 0, i32 0
  %364 = load i64, i64* %363, align 8
  %365 = load i64, i64* @bfd_link_hash_defined, align 8
  %366 = icmp ne i64 %364, %365
  br i1 %366, label %367, label %379

367:                                              ; preds = %360
  %368 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %24, align 8
  %369 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %368, i32 0, i32 2
  %370 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %369, i32 0, i32 0
  %371 = load i64, i64* %370, align 8
  %372 = load i64, i64* @bfd_link_hash_defweak, align 8
  %373 = icmp ne i64 %371, %372
  br i1 %373, label %374, label %379

374:                                              ; preds = %367
  %375 = call i32 @_(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  %376 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %377 = load i8*, i8** %23, align 8
  %378 = call i32 @_bfd_error_handler(i32 %375, %struct.TYPE_14__* %376, i8* %377)
  br label %379

379:                                              ; preds = %374, %367, %360
  br label %445

380:                                              ; preds = %357
  %381 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %24, align 8
  %382 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %381, i32 0, i32 2
  store %struct.bfd_link_hash_entry* %382, %struct.bfd_link_hash_entry** %25, align 8
  %383 = load %struct.bfd_link_info*, %struct.bfd_link_info** %12, align 8
  %384 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %385 = load i8*, i8** %23, align 8
  %386 = load i32, i32* @BSF_INDIRECT, align 4
  %387 = load i32, i32* @bfd_ind_section_ptr, align 4
  %388 = load i8*, i8** %14, align 8
  %389 = load i32, i32* @FALSE, align 4
  %390 = load i32, i32* %27, align 4
  %391 = call i32 @_bfd_generic_link_add_one_symbol(%struct.bfd_link_info* %383, %struct.TYPE_14__* %384, i8* %385, i32 %386, i32 %387, i32 0, i8* %388, i32 %389, i32 %390, %struct.bfd_link_hash_entry** %25)
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %395, label %393

393:                                              ; preds = %380
  %394 = load i32, i32* @FALSE, align 4
  store i32 %394, i32* %10, align 4
  br label %447

395:                                              ; preds = %380
  %396 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %25, align 8
  %397 = bitcast %struct.bfd_link_hash_entry* %396 to %struct.elf_link_hash_entry*
  store %struct.elf_link_hash_entry* %397, %struct.elf_link_hash_entry** %24, align 8
  %398 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %24, align 8
  %399 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %398, i32 0, i32 2
  %400 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %399, i32 0, i32 0
  %401 = load i64, i64* %400, align 8
  %402 = load i64, i64* @bfd_link_hash_indirect, align 8
  %403 = icmp eq i64 %401, %402
  br i1 %403, label %404, label %444

404:                                              ; preds = %395
  %405 = load %struct.elf_backend_data*, %struct.elf_backend_data** %26, align 8
  %406 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %405, i32 0, i32 1
  %407 = load i32 (%struct.bfd_link_info.0*, %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry*)*, i32 (%struct.bfd_link_info.0*, %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry*)** %406, align 8
  %408 = load %struct.bfd_link_info*, %struct.bfd_link_info** %12, align 8
  %409 = bitcast %struct.bfd_link_info* %408 to %struct.bfd_link_info.0*
  %410 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %13, align 8
  %411 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %24, align 8
  %412 = call i32 %407(%struct.bfd_link_info.0* %409, %struct.elf_link_hash_entry* %410, %struct.elf_link_hash_entry* %411)
  %413 = load i32*, i32** %18, align 8
  %414 = load i32, i32* %413, align 4
  %415 = icmp ne i32 %414, 0
  br i1 %415, label %443, label %416

416:                                              ; preds = %404
  %417 = load i32, i32* %28, align 4
  %418 = icmp ne i32 %417, 0
  br i1 %418, label %433, label %419

419:                                              ; preds = %416
  %420 = load %struct.bfd_link_info*, %struct.bfd_link_info** %12, align 8
  %421 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %420, i32 0, i32 0
  %422 = load i64, i64* %421, align 8
  %423 = icmp ne i64 %422, 0
  br i1 %423, label %429, label %424

424:                                              ; preds = %419
  %425 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %24, align 8
  %426 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %425, i32 0, i32 0
  %427 = load i32, i32* %426, align 8
  %428 = icmp ne i32 %427, 0
  br i1 %428, label %429, label %432

429:                                              ; preds = %424, %419
  %430 = load i32, i32* @TRUE, align 4
  %431 = load i32*, i32** %18, align 8
  store i32 %430, i32* %431, align 4
  br label %432

432:                                              ; preds = %429, %424
  br label %442

433:                                              ; preds = %416
  %434 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %24, align 8
  %435 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %434, i32 0, i32 1
  %436 = load i64, i64* %435, align 8
  %437 = icmp ne i64 %436, 0
  br i1 %437, label %438, label %441

438:                                              ; preds = %433
  %439 = load i32, i32* @TRUE, align 4
  %440 = load i32*, i32** %18, align 8
  store i32 %439, i32* %440, align 4
  br label %441

441:                                              ; preds = %438, %433
  br label %442

442:                                              ; preds = %441, %432
  br label %443

443:                                              ; preds = %442, %404
  br label %444

444:                                              ; preds = %443, %395
  br label %445

445:                                              ; preds = %444, %379
  %446 = load i32, i32* @TRUE, align 4
  store i32 %446, i32* %10, align 4
  br label %447

447:                                              ; preds = %445, %393, %355, %350, %323, %236, %171, %149, %128, %97, %67, %47
  %448 = load i32, i32* %10, align 4
  ret i32 %448
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local %struct.elf_link_hash_entry* @elf_link_hash_lookup(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @elf_hash_table(%struct.bfd_link_info*) #1

declare dso_local i32 @BFD_ASSERT(i32) #1

declare dso_local %struct.elf_backend_data* @get_elf_backend_data(%struct.TYPE_14__*) #1

declare dso_local i8* @bfd_hash_allocate(i32*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @_bfd_elf_merge_symbol(%struct.TYPE_14__*, %struct.bfd_link_info*, i8*, i32*, i32**, i32*, i32*, %struct.elf_link_hash_entry**, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @_bfd_generic_link_add_one_symbol(%struct.bfd_link_info*, %struct.TYPE_14__*, i8*, i32, i32, i32, i8*, i32, i32, %struct.bfd_link_hash_entry**) #1

declare dso_local i32 @bfd_elf_link_record_dynamic_symbol(%struct.bfd_link_info*, %struct.elf_link_hash_entry*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @_bfd_error_handler(i32, %struct.TYPE_14__*, i8*) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
