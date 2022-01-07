; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf.c_bfd_elf_match_symbols_in_sections.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf.c_bfd_elf_match_symbols_in_sections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32* }
%struct.bfd_link_info = type { i32 }
%struct.elf_backend_data = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.elf_symbol = type { i32, i32, i64, i64, %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { %struct.elf_symbol*, %struct.elf_symbuf_symbol* }
%struct.elf_symbuf_symbol = type { i64, i64, i32 }
%struct.elf_symbuf_head = type { i32, i32, %struct.elf_symbuf_symbol* }
%struct.TYPE_17__ = type { %struct.elf_symbuf_head*, %struct.TYPE_16__ }

@.str = private unnamed_addr constant [14 x i8] c".gnu.linkonce\00", align 1
@bfd_target_elf_flavour = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@SHF_GROUP = common dso_local global i32 0, align 4
@elf_sym_name_compare = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bfd_elf_match_symbols_in_sections(%struct.TYPE_15__* %0, %struct.TYPE_15__* %1, %struct.bfd_link_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.bfd_link_info*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.elf_backend_data*, align 8
  %11 = alloca %struct.elf_backend_data*, align 8
  %12 = alloca %struct.TYPE_16__*, align 8
  %13 = alloca %struct.TYPE_16__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.elf_symbol*, align 8
  %17 = alloca %struct.elf_symbol*, align 8
  %18 = alloca %struct.elf_symbuf_head*, align 8
  %19 = alloca %struct.elf_symbuf_head*, align 8
  %20 = alloca %struct.elf_symbol*, align 8
  %21 = alloca %struct.elf_symbol*, align 8
  %22 = alloca %struct.elf_symbol*, align 8
  %23 = alloca %struct.elf_symbol*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca %struct.elf_symbol*, align 8
  %34 = alloca %struct.elf_symbuf_symbol*, align 8
  %35 = alloca %struct.elf_symbuf_symbol*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %6, align 8
  store %struct.bfd_link_info* %2, %struct.bfd_link_info** %7, align 8
  store %struct.elf_symbol* null, %struct.elf_symbol** %22, align 8
  store %struct.elf_symbol* null, %struct.elf_symbol** %23, align 8
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  store i32* %38, i32** %8, align 8
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  store i32* %41, i32** %9, align 8
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @CONST_STRNEQ(i32 %44, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %69

47:                                               ; preds = %3
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @CONST_STRNEQ(i32 %50, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %69

53:                                               ; preds = %47
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = add i64 %57, 14
  %59 = trunc i64 %58 to i32
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = sext i32 %62 to i64
  %64 = add i64 %63, 14
  %65 = trunc i64 %64 to i32
  %66 = call i64 @strcmp(i32 %59, i32 %65)
  %67 = icmp eq i64 %66, 0
  %68 = zext i1 %67 to i32
  store i32 %68, i32* %4, align 4
  br label %746

69:                                               ; preds = %47, %3
  %70 = load i32*, i32** %8, align 8
  %71 = call i64 @bfd_get_flavour(i32* %70)
  %72 = load i64, i64* @bfd_target_elf_flavour, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %79, label %74

74:                                               ; preds = %69
  %75 = load i32*, i32** %9, align 8
  %76 = call i64 @bfd_get_flavour(i32* %75)
  %77 = load i64, i64* @bfd_target_elf_flavour, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %74, %69
  %80 = load i32, i32* @FALSE, align 4
  store i32 %80, i32* %4, align 4
  br label %746

81:                                               ; preds = %74
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %83 = call i64 @elf_section_type(%struct.TYPE_15__* %82)
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %85 = call i64 @elf_section_type(%struct.TYPE_15__* %84)
  %86 = icmp ne i64 %83, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %81
  %88 = load i32, i32* @FALSE, align 4
  store i32 %88, i32* %4, align 4
  br label %746

89:                                               ; preds = %81
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %91 = call i32 @elf_section_flags(%struct.TYPE_15__* %90)
  %92 = load i32, i32* @SHF_GROUP, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %111

95:                                               ; preds = %89
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %97 = call i32 @elf_section_flags(%struct.TYPE_15__* %96)
  %98 = load i32, i32* @SHF_GROUP, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %111

101:                                              ; preds = %95
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %103 = call i32 @elf_group_name(%struct.TYPE_15__* %102)
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %105 = call i32 @elf_group_name(%struct.TYPE_15__* %104)
  %106 = call i64 @strcmp(i32 %103, i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %101
  %109 = load i32, i32* @FALSE, align 4
  store i32 %109, i32* %4, align 4
  br label %746

110:                                              ; preds = %101
  br label %111

111:                                              ; preds = %110, %95, %89
  %112 = load i32*, i32** %8, align 8
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %114 = call i32 @_bfd_elf_section_from_bfd_section(i32* %112, %struct.TYPE_15__* %113)
  store i32 %114, i32* %27, align 4
  %115 = load i32*, i32** %9, align 8
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %117 = call i32 @_bfd_elf_section_from_bfd_section(i32* %115, %struct.TYPE_15__* %116)
  store i32 %117, i32* %28, align 4
  %118 = load i32, i32* %27, align 4
  %119 = icmp eq i32 %118, -1
  br i1 %119, label %123, label %120

120:                                              ; preds = %111
  %121 = load i32, i32* %28, align 4
  %122 = icmp eq i32 %121, -1
  br i1 %122, label %123, label %125

123:                                              ; preds = %120, %111
  %124 = load i32, i32* @FALSE, align 4
  store i32 %124, i32* %4, align 4
  br label %746

125:                                              ; preds = %120
  %126 = load i32*, i32** %8, align 8
  %127 = call %struct.elf_backend_data* @get_elf_backend_data(i32* %126)
  store %struct.elf_backend_data* %127, %struct.elf_backend_data** %10, align 8
  %128 = load i32*, i32** %9, align 8
  %129 = call %struct.elf_backend_data* @get_elf_backend_data(i32* %128)
  store %struct.elf_backend_data* %129, %struct.elf_backend_data** %11, align 8
  %130 = load i32*, i32** %8, align 8
  %131 = call %struct.TYPE_17__* @elf_tdata(i32* %130)
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i32 0, i32 1
  store %struct.TYPE_16__* %132, %struct.TYPE_16__** %12, align 8
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.elf_backend_data*, %struct.elf_backend_data** %10, align 8
  %137 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %136, i32 0, i32 0
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = sdiv i32 %135, %140
  store i32 %141, i32* %14, align 4
  %142 = load i32*, i32** %9, align 8
  %143 = call %struct.TYPE_17__* @elf_tdata(i32* %142)
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i32 0, i32 1
  store %struct.TYPE_16__* %144, %struct.TYPE_16__** %13, align 8
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.elf_backend_data*, %struct.elf_backend_data** %11, align 8
  %149 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %148, i32 0, i32 0
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = sdiv i32 %147, %152
  store i32 %153, i32* %15, align 4
  %154 = load i32, i32* %14, align 4
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %159, label %156

156:                                              ; preds = %125
  %157 = load i32, i32* %15, align 4
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %156, %125
  %160 = load i32, i32* @FALSE, align 4
  store i32 %160, i32* %4, align 4
  br label %746

161:                                              ; preds = %156
  %162 = load i32, i32* @FALSE, align 4
  store i32 %162, i32* %29, align 4
  store %struct.elf_symbol* null, %struct.elf_symbol** %16, align 8
  store %struct.elf_symbol* null, %struct.elf_symbol** %17, align 8
  %163 = load i32*, i32** %8, align 8
  %164 = call %struct.TYPE_17__* @elf_tdata(i32* %163)
  %165 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %164, i32 0, i32 0
  %166 = load %struct.elf_symbuf_head*, %struct.elf_symbuf_head** %165, align 8
  store %struct.elf_symbuf_head* %166, %struct.elf_symbuf_head** %18, align 8
  %167 = load i32*, i32** %9, align 8
  %168 = call %struct.TYPE_17__* @elf_tdata(i32* %167)
  %169 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %168, i32 0, i32 0
  %170 = load %struct.elf_symbuf_head*, %struct.elf_symbuf_head** %169, align 8
  store %struct.elf_symbuf_head* %170, %struct.elf_symbuf_head** %19, align 8
  %171 = load %struct.elf_symbuf_head*, %struct.elf_symbuf_head** %18, align 8
  %172 = icmp eq %struct.elf_symbuf_head* %171, null
  br i1 %172, label %173, label %194

173:                                              ; preds = %161
  %174 = load i32*, i32** %8, align 8
  %175 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %176 = load i32, i32* %14, align 4
  %177 = call %struct.elf_symbol* @bfd_elf_get_elf_syms(i32* %174, %struct.TYPE_16__* %175, i32 %176, i32 0, i32* null, i32* null, i32* null)
  store %struct.elf_symbol* %177, %struct.elf_symbol** %16, align 8
  %178 = load %struct.elf_symbol*, %struct.elf_symbol** %16, align 8
  %179 = icmp eq %struct.elf_symbol* %178, null
  br i1 %179, label %180, label %181

180:                                              ; preds = %173
  br label %720

181:                                              ; preds = %173
  %182 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %183 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %193, label %186

186:                                              ; preds = %181
  %187 = load i32, i32* %14, align 4
  %188 = load %struct.elf_symbol*, %struct.elf_symbol** %16, align 8
  %189 = call %struct.elf_symbuf_head* @elf_create_symbuf(i32 %187, %struct.elf_symbol* %188)
  store %struct.elf_symbuf_head* %189, %struct.elf_symbuf_head** %18, align 8
  %190 = load i32*, i32** %8, align 8
  %191 = call %struct.TYPE_17__* @elf_tdata(i32* %190)
  %192 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %191, i32 0, i32 0
  store %struct.elf_symbuf_head* %189, %struct.elf_symbuf_head** %192, align 8
  br label %193

193:                                              ; preds = %186, %181
  br label %194

194:                                              ; preds = %193, %161
  %195 = load %struct.elf_symbuf_head*, %struct.elf_symbuf_head** %18, align 8
  %196 = icmp eq %struct.elf_symbuf_head* %195, null
  br i1 %196, label %200, label %197

197:                                              ; preds = %194
  %198 = load %struct.elf_symbuf_head*, %struct.elf_symbuf_head** %19, align 8
  %199 = icmp eq %struct.elf_symbuf_head* %198, null
  br i1 %199, label %200, label %224

200:                                              ; preds = %197, %194
  %201 = load i32*, i32** %9, align 8
  %202 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %203 = load i32, i32* %15, align 4
  %204 = call %struct.elf_symbol* @bfd_elf_get_elf_syms(i32* %201, %struct.TYPE_16__* %202, i32 %203, i32 0, i32* null, i32* null, i32* null)
  store %struct.elf_symbol* %204, %struct.elf_symbol** %17, align 8
  %205 = load %struct.elf_symbol*, %struct.elf_symbol** %17, align 8
  %206 = icmp eq %struct.elf_symbol* %205, null
  br i1 %206, label %207, label %208

207:                                              ; preds = %200
  br label %720

208:                                              ; preds = %200
  %209 = load %struct.elf_symbuf_head*, %struct.elf_symbuf_head** %18, align 8
  %210 = icmp ne %struct.elf_symbuf_head* %209, null
  br i1 %210, label %211, label %223

211:                                              ; preds = %208
  %212 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %213 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %223, label %216

216:                                              ; preds = %211
  %217 = load i32, i32* %15, align 4
  %218 = load %struct.elf_symbol*, %struct.elf_symbol** %17, align 8
  %219 = call %struct.elf_symbuf_head* @elf_create_symbuf(i32 %217, %struct.elf_symbol* %218)
  store %struct.elf_symbuf_head* %219, %struct.elf_symbuf_head** %19, align 8
  %220 = load i32*, i32** %9, align 8
  %221 = call %struct.TYPE_17__* @elf_tdata(i32* %220)
  %222 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %221, i32 0, i32 0
  store %struct.elf_symbuf_head* %219, %struct.elf_symbuf_head** %222, align 8
  br label %223

223:                                              ; preds = %216, %211, %208
  br label %224

224:                                              ; preds = %223, %197
  %225 = load %struct.elf_symbuf_head*, %struct.elf_symbuf_head** %18, align 8
  %226 = icmp ne %struct.elf_symbuf_head* %225, null
  br i1 %226, label %227, label %501

227:                                              ; preds = %224
  %228 = load %struct.elf_symbuf_head*, %struct.elf_symbuf_head** %19, align 8
  %229 = icmp ne %struct.elf_symbuf_head* %228, null
  br i1 %229, label %230, label %501

230:                                              ; preds = %227
  store i32 0, i32* %30, align 4
  %231 = load %struct.elf_symbuf_head*, %struct.elf_symbuf_head** %18, align 8
  %232 = getelementptr inbounds %struct.elf_symbuf_head, %struct.elf_symbuf_head* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  store i32 %233, i32* %31, align 4
  %234 = load %struct.elf_symbuf_head*, %struct.elf_symbuf_head** %18, align 8
  %235 = getelementptr inbounds %struct.elf_symbuf_head, %struct.elf_symbuf_head* %234, i32 1
  store %struct.elf_symbuf_head* %235, %struct.elf_symbuf_head** %18, align 8
  store i32 0, i32* %24, align 4
  br label %236

236:                                              ; preds = %279, %230
  %237 = load i32, i32* %30, align 4
  %238 = load i32, i32* %31, align 4
  %239 = icmp slt i32 %237, %238
  br i1 %239, label %240, label %280

240:                                              ; preds = %236
  %241 = load i32, i32* %30, align 4
  %242 = load i32, i32* %31, align 4
  %243 = add nsw i32 %241, %242
  %244 = sdiv i32 %243, 2
  store i32 %244, i32* %32, align 4
  %245 = load i32, i32* %27, align 4
  %246 = load %struct.elf_symbuf_head*, %struct.elf_symbuf_head** %18, align 8
  %247 = load i32, i32* %32, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds %struct.elf_symbuf_head, %struct.elf_symbuf_head* %246, i64 %248
  %250 = getelementptr inbounds %struct.elf_symbuf_head, %struct.elf_symbuf_head* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  %252 = icmp ult i32 %245, %251
  br i1 %252, label %253, label %255

253:                                              ; preds = %240
  %254 = load i32, i32* %32, align 4
  store i32 %254, i32* %31, align 4
  br label %279

255:                                              ; preds = %240
  %256 = load i32, i32* %27, align 4
  %257 = load %struct.elf_symbuf_head*, %struct.elf_symbuf_head** %18, align 8
  %258 = load i32, i32* %32, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds %struct.elf_symbuf_head, %struct.elf_symbuf_head* %257, i64 %259
  %261 = getelementptr inbounds %struct.elf_symbuf_head, %struct.elf_symbuf_head* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  %263 = icmp ugt i32 %256, %262
  br i1 %263, label %264, label %267

264:                                              ; preds = %255
  %265 = load i32, i32* %32, align 4
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %30, align 4
  br label %278

267:                                              ; preds = %255
  %268 = load %struct.elf_symbuf_head*, %struct.elf_symbuf_head** %18, align 8
  %269 = load i32, i32* %32, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %struct.elf_symbuf_head, %struct.elf_symbuf_head* %268, i64 %270
  %272 = getelementptr inbounds %struct.elf_symbuf_head, %struct.elf_symbuf_head* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  store i32 %273, i32* %24, align 4
  %274 = load i32, i32* %32, align 4
  %275 = load %struct.elf_symbuf_head*, %struct.elf_symbuf_head** %18, align 8
  %276 = sext i32 %274 to i64
  %277 = getelementptr inbounds %struct.elf_symbuf_head, %struct.elf_symbuf_head* %275, i64 %276
  store %struct.elf_symbuf_head* %277, %struct.elf_symbuf_head** %18, align 8
  br label %280

278:                                              ; preds = %264
  br label %279

279:                                              ; preds = %278, %253
  br label %236

280:                                              ; preds = %267, %236
  store i32 0, i32* %30, align 4
  %281 = load %struct.elf_symbuf_head*, %struct.elf_symbuf_head** %19, align 8
  %282 = getelementptr inbounds %struct.elf_symbuf_head, %struct.elf_symbuf_head* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 8
  store i32 %283, i32* %31, align 4
  %284 = load %struct.elf_symbuf_head*, %struct.elf_symbuf_head** %19, align 8
  %285 = getelementptr inbounds %struct.elf_symbuf_head, %struct.elf_symbuf_head* %284, i32 1
  store %struct.elf_symbuf_head* %285, %struct.elf_symbuf_head** %19, align 8
  store i32 0, i32* %25, align 4
  br label %286

286:                                              ; preds = %329, %280
  %287 = load i32, i32* %30, align 4
  %288 = load i32, i32* %31, align 4
  %289 = icmp slt i32 %287, %288
  br i1 %289, label %290, label %330

290:                                              ; preds = %286
  %291 = load i32, i32* %30, align 4
  %292 = load i32, i32* %31, align 4
  %293 = add nsw i32 %291, %292
  %294 = sdiv i32 %293, 2
  store i32 %294, i32* %32, align 4
  %295 = load i32, i32* %28, align 4
  %296 = load %struct.elf_symbuf_head*, %struct.elf_symbuf_head** %19, align 8
  %297 = load i32, i32* %32, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds %struct.elf_symbuf_head, %struct.elf_symbuf_head* %296, i64 %298
  %300 = getelementptr inbounds %struct.elf_symbuf_head, %struct.elf_symbuf_head* %299, i32 0, i32 1
  %301 = load i32, i32* %300, align 4
  %302 = icmp ult i32 %295, %301
  br i1 %302, label %303, label %305

303:                                              ; preds = %290
  %304 = load i32, i32* %32, align 4
  store i32 %304, i32* %31, align 4
  br label %329

305:                                              ; preds = %290
  %306 = load i32, i32* %28, align 4
  %307 = load %struct.elf_symbuf_head*, %struct.elf_symbuf_head** %19, align 8
  %308 = load i32, i32* %32, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds %struct.elf_symbuf_head, %struct.elf_symbuf_head* %307, i64 %309
  %311 = getelementptr inbounds %struct.elf_symbuf_head, %struct.elf_symbuf_head* %310, i32 0, i32 1
  %312 = load i32, i32* %311, align 4
  %313 = icmp ugt i32 %306, %312
  br i1 %313, label %314, label %317

314:                                              ; preds = %305
  %315 = load i32, i32* %32, align 4
  %316 = add nsw i32 %315, 1
  store i32 %316, i32* %30, align 4
  br label %328

317:                                              ; preds = %305
  %318 = load %struct.elf_symbuf_head*, %struct.elf_symbuf_head** %19, align 8
  %319 = load i32, i32* %32, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds %struct.elf_symbuf_head, %struct.elf_symbuf_head* %318, i64 %320
  %322 = getelementptr inbounds %struct.elf_symbuf_head, %struct.elf_symbuf_head* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 8
  store i32 %323, i32* %25, align 4
  %324 = load i32, i32* %32, align 4
  %325 = load %struct.elf_symbuf_head*, %struct.elf_symbuf_head** %19, align 8
  %326 = sext i32 %324 to i64
  %327 = getelementptr inbounds %struct.elf_symbuf_head, %struct.elf_symbuf_head* %325, i64 %326
  store %struct.elf_symbuf_head* %327, %struct.elf_symbuf_head** %19, align 8
  br label %330

328:                                              ; preds = %314
  br label %329

329:                                              ; preds = %328, %303
  br label %286

330:                                              ; preds = %317, %286
  %331 = load i32, i32* %24, align 4
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %340, label %333

333:                                              ; preds = %330
  %334 = load i32, i32* %25, align 4
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %340, label %336

336:                                              ; preds = %333
  %337 = load i32, i32* %24, align 4
  %338 = load i32, i32* %25, align 4
  %339 = icmp ne i32 %337, %338
  br i1 %339, label %340, label %341

340:                                              ; preds = %336, %333, %330
  br label %720

341:                                              ; preds = %336
  %342 = load i32, i32* %24, align 4
  %343 = sext i32 %342 to i64
  %344 = mul i64 %343, 48
  %345 = trunc i64 %344 to i32
  %346 = call %struct.elf_symbol* @bfd_malloc(i32 %345)
  store %struct.elf_symbol* %346, %struct.elf_symbol** %22, align 8
  %347 = load i32, i32* %25, align 4
  %348 = sext i32 %347 to i64
  %349 = mul i64 %348, 48
  %350 = trunc i64 %349 to i32
  %351 = call %struct.elf_symbol* @bfd_malloc(i32 %350)
  store %struct.elf_symbol* %351, %struct.elf_symbol** %23, align 8
  %352 = load %struct.elf_symbol*, %struct.elf_symbol** %22, align 8
  %353 = icmp eq %struct.elf_symbol* %352, null
  br i1 %353, label %357, label %354

354:                                              ; preds = %341
  %355 = load %struct.elf_symbol*, %struct.elf_symbol** %23, align 8
  %356 = icmp eq %struct.elf_symbol* %355, null
  br i1 %356, label %357, label %358

357:                                              ; preds = %354, %341
  br label %720

358:                                              ; preds = %354
  %359 = load %struct.elf_symbol*, %struct.elf_symbol** %22, align 8
  store %struct.elf_symbol* %359, %struct.elf_symbol** %33, align 8
  %360 = load %struct.elf_symbuf_head*, %struct.elf_symbuf_head** %18, align 8
  %361 = getelementptr inbounds %struct.elf_symbuf_head, %struct.elf_symbuf_head* %360, i32 0, i32 2
  %362 = load %struct.elf_symbuf_symbol*, %struct.elf_symbuf_symbol** %361, align 8
  store %struct.elf_symbuf_symbol* %362, %struct.elf_symbuf_symbol** %34, align 8
  %363 = load %struct.elf_symbuf_symbol*, %struct.elf_symbuf_symbol** %34, align 8
  %364 = load i32, i32* %24, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds %struct.elf_symbuf_symbol, %struct.elf_symbuf_symbol* %363, i64 %365
  store %struct.elf_symbuf_symbol* %366, %struct.elf_symbuf_symbol** %35, align 8
  br label %367

367:                                              ; preds = %387, %358
  %368 = load %struct.elf_symbuf_symbol*, %struct.elf_symbuf_symbol** %34, align 8
  %369 = load %struct.elf_symbuf_symbol*, %struct.elf_symbuf_symbol** %35, align 8
  %370 = icmp ult %struct.elf_symbuf_symbol* %368, %369
  br i1 %370, label %371, label %392

371:                                              ; preds = %367
  %372 = load %struct.elf_symbuf_symbol*, %struct.elf_symbuf_symbol** %34, align 8
  %373 = load %struct.elf_symbol*, %struct.elf_symbol** %33, align 8
  %374 = getelementptr inbounds %struct.elf_symbol, %struct.elf_symbol* %373, i32 0, i32 4
  %375 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %374, i32 0, i32 1
  store %struct.elf_symbuf_symbol* %372, %struct.elf_symbuf_symbol** %375, align 8
  %376 = load i32*, i32** %8, align 8
  %377 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %378 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %377, i32 0, i32 1
  %379 = load i32, i32* %378, align 4
  %380 = load %struct.elf_symbuf_symbol*, %struct.elf_symbuf_symbol** %34, align 8
  %381 = getelementptr inbounds %struct.elf_symbuf_symbol, %struct.elf_symbuf_symbol* %380, i32 0, i32 2
  %382 = load i32, i32* %381, align 8
  %383 = call i8* @bfd_elf_string_from_elf_section(i32* %376, i32 %379, i32 %382)
  %384 = ptrtoint i8* %383 to i32
  %385 = load %struct.elf_symbol*, %struct.elf_symbol** %33, align 8
  %386 = getelementptr inbounds %struct.elf_symbol, %struct.elf_symbol* %385, i32 0, i32 0
  store i32 %384, i32* %386, align 8
  br label %387

387:                                              ; preds = %371
  %388 = load %struct.elf_symbuf_symbol*, %struct.elf_symbuf_symbol** %34, align 8
  %389 = getelementptr inbounds %struct.elf_symbuf_symbol, %struct.elf_symbuf_symbol* %388, i32 1
  store %struct.elf_symbuf_symbol* %389, %struct.elf_symbuf_symbol** %34, align 8
  %390 = load %struct.elf_symbol*, %struct.elf_symbol** %33, align 8
  %391 = getelementptr inbounds %struct.elf_symbol, %struct.elf_symbol* %390, i32 1
  store %struct.elf_symbol* %391, %struct.elf_symbol** %33, align 8
  br label %367

392:                                              ; preds = %367
  %393 = load %struct.elf_symbol*, %struct.elf_symbol** %23, align 8
  store %struct.elf_symbol* %393, %struct.elf_symbol** %33, align 8
  %394 = load %struct.elf_symbuf_head*, %struct.elf_symbuf_head** %19, align 8
  %395 = getelementptr inbounds %struct.elf_symbuf_head, %struct.elf_symbuf_head* %394, i32 0, i32 2
  %396 = load %struct.elf_symbuf_symbol*, %struct.elf_symbuf_symbol** %395, align 8
  store %struct.elf_symbuf_symbol* %396, %struct.elf_symbuf_symbol** %34, align 8
  %397 = load %struct.elf_symbuf_symbol*, %struct.elf_symbuf_symbol** %34, align 8
  %398 = load i32, i32* %25, align 4
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds %struct.elf_symbuf_symbol, %struct.elf_symbuf_symbol* %397, i64 %399
  store %struct.elf_symbuf_symbol* %400, %struct.elf_symbuf_symbol** %35, align 8
  br label %401

401:                                              ; preds = %421, %392
  %402 = load %struct.elf_symbuf_symbol*, %struct.elf_symbuf_symbol** %34, align 8
  %403 = load %struct.elf_symbuf_symbol*, %struct.elf_symbuf_symbol** %35, align 8
  %404 = icmp ult %struct.elf_symbuf_symbol* %402, %403
  br i1 %404, label %405, label %426

405:                                              ; preds = %401
  %406 = load %struct.elf_symbuf_symbol*, %struct.elf_symbuf_symbol** %34, align 8
  %407 = load %struct.elf_symbol*, %struct.elf_symbol** %33, align 8
  %408 = getelementptr inbounds %struct.elf_symbol, %struct.elf_symbol* %407, i32 0, i32 4
  %409 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %408, i32 0, i32 1
  store %struct.elf_symbuf_symbol* %406, %struct.elf_symbuf_symbol** %409, align 8
  %410 = load i32*, i32** %9, align 8
  %411 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %412 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %411, i32 0, i32 1
  %413 = load i32, i32* %412, align 4
  %414 = load %struct.elf_symbuf_symbol*, %struct.elf_symbuf_symbol** %34, align 8
  %415 = getelementptr inbounds %struct.elf_symbuf_symbol, %struct.elf_symbuf_symbol* %414, i32 0, i32 2
  %416 = load i32, i32* %415, align 8
  %417 = call i8* @bfd_elf_string_from_elf_section(i32* %410, i32 %413, i32 %416)
  %418 = ptrtoint i8* %417 to i32
  %419 = load %struct.elf_symbol*, %struct.elf_symbol** %33, align 8
  %420 = getelementptr inbounds %struct.elf_symbol, %struct.elf_symbol* %419, i32 0, i32 0
  store i32 %418, i32* %420, align 8
  br label %421

421:                                              ; preds = %405
  %422 = load %struct.elf_symbuf_symbol*, %struct.elf_symbuf_symbol** %34, align 8
  %423 = getelementptr inbounds %struct.elf_symbuf_symbol, %struct.elf_symbuf_symbol* %422, i32 1
  store %struct.elf_symbuf_symbol* %423, %struct.elf_symbuf_symbol** %34, align 8
  %424 = load %struct.elf_symbol*, %struct.elf_symbol** %33, align 8
  %425 = getelementptr inbounds %struct.elf_symbol, %struct.elf_symbol* %424, i32 1
  store %struct.elf_symbol* %425, %struct.elf_symbol** %33, align 8
  br label %401

426:                                              ; preds = %401
  %427 = load %struct.elf_symbol*, %struct.elf_symbol** %22, align 8
  %428 = load i32, i32* %24, align 4
  %429 = load i32, i32* @elf_sym_name_compare, align 4
  %430 = call i32 @qsort(%struct.elf_symbol* %427, i32 %428, i32 48, i32 %429)
  %431 = load %struct.elf_symbol*, %struct.elf_symbol** %23, align 8
  %432 = load i32, i32* %24, align 4
  %433 = load i32, i32* @elf_sym_name_compare, align 4
  %434 = call i32 @qsort(%struct.elf_symbol* %431, i32 %432, i32 48, i32 %433)
  store i32 0, i32* %26, align 4
  br label %435

435:                                              ; preds = %496, %426
  %436 = load i32, i32* %26, align 4
  %437 = load i32, i32* %24, align 4
  %438 = icmp slt i32 %436, %437
  br i1 %438, label %439, label %499

439:                                              ; preds = %435
  %440 = load %struct.elf_symbol*, %struct.elf_symbol** %22, align 8
  %441 = load i32, i32* %26, align 4
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds %struct.elf_symbol, %struct.elf_symbol* %440, i64 %442
  %444 = getelementptr inbounds %struct.elf_symbol, %struct.elf_symbol* %443, i32 0, i32 4
  %445 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %444, i32 0, i32 1
  %446 = load %struct.elf_symbuf_symbol*, %struct.elf_symbuf_symbol** %445, align 8
  %447 = getelementptr inbounds %struct.elf_symbuf_symbol, %struct.elf_symbuf_symbol* %446, i32 0, i32 0
  %448 = load i64, i64* %447, align 8
  %449 = load %struct.elf_symbol*, %struct.elf_symbol** %23, align 8
  %450 = load i32, i32* %26, align 4
  %451 = sext i32 %450 to i64
  %452 = getelementptr inbounds %struct.elf_symbol, %struct.elf_symbol* %449, i64 %451
  %453 = getelementptr inbounds %struct.elf_symbol, %struct.elf_symbol* %452, i32 0, i32 4
  %454 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %453, i32 0, i32 1
  %455 = load %struct.elf_symbuf_symbol*, %struct.elf_symbuf_symbol** %454, align 8
  %456 = getelementptr inbounds %struct.elf_symbuf_symbol, %struct.elf_symbuf_symbol* %455, i32 0, i32 0
  %457 = load i64, i64* %456, align 8
  %458 = icmp ne i64 %448, %457
  br i1 %458, label %494, label %459

459:                                              ; preds = %439
  %460 = load %struct.elf_symbol*, %struct.elf_symbol** %22, align 8
  %461 = load i32, i32* %26, align 4
  %462 = sext i32 %461 to i64
  %463 = getelementptr inbounds %struct.elf_symbol, %struct.elf_symbol* %460, i64 %462
  %464 = getelementptr inbounds %struct.elf_symbol, %struct.elf_symbol* %463, i32 0, i32 4
  %465 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %464, i32 0, i32 1
  %466 = load %struct.elf_symbuf_symbol*, %struct.elf_symbuf_symbol** %465, align 8
  %467 = getelementptr inbounds %struct.elf_symbuf_symbol, %struct.elf_symbuf_symbol* %466, i32 0, i32 1
  %468 = load i64, i64* %467, align 8
  %469 = load %struct.elf_symbol*, %struct.elf_symbol** %23, align 8
  %470 = load i32, i32* %26, align 4
  %471 = sext i32 %470 to i64
  %472 = getelementptr inbounds %struct.elf_symbol, %struct.elf_symbol* %469, i64 %471
  %473 = getelementptr inbounds %struct.elf_symbol, %struct.elf_symbol* %472, i32 0, i32 4
  %474 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %473, i32 0, i32 1
  %475 = load %struct.elf_symbuf_symbol*, %struct.elf_symbuf_symbol** %474, align 8
  %476 = getelementptr inbounds %struct.elf_symbuf_symbol, %struct.elf_symbuf_symbol* %475, i32 0, i32 1
  %477 = load i64, i64* %476, align 8
  %478 = icmp ne i64 %468, %477
  br i1 %478, label %494, label %479

479:                                              ; preds = %459
  %480 = load %struct.elf_symbol*, %struct.elf_symbol** %22, align 8
  %481 = load i32, i32* %26, align 4
  %482 = sext i32 %481 to i64
  %483 = getelementptr inbounds %struct.elf_symbol, %struct.elf_symbol* %480, i64 %482
  %484 = getelementptr inbounds %struct.elf_symbol, %struct.elf_symbol* %483, i32 0, i32 0
  %485 = load i32, i32* %484, align 8
  %486 = load %struct.elf_symbol*, %struct.elf_symbol** %23, align 8
  %487 = load i32, i32* %26, align 4
  %488 = sext i32 %487 to i64
  %489 = getelementptr inbounds %struct.elf_symbol, %struct.elf_symbol* %486, i64 %488
  %490 = getelementptr inbounds %struct.elf_symbol, %struct.elf_symbol* %489, i32 0, i32 0
  %491 = load i32, i32* %490, align 8
  %492 = call i64 @strcmp(i32 %485, i32 %491)
  %493 = icmp ne i64 %492, 0
  br i1 %493, label %494, label %495

494:                                              ; preds = %479, %459, %439
  br label %720

495:                                              ; preds = %479
  br label %496

496:                                              ; preds = %495
  %497 = load i32, i32* %26, align 4
  %498 = add nsw i32 %497, 1
  store i32 %498, i32* %26, align 4
  br label %435

499:                                              ; preds = %435
  %500 = load i32, i32* @TRUE, align 4
  store i32 %500, i32* %29, align 4
  br label %720

501:                                              ; preds = %227, %224
  %502 = load i32, i32* %14, align 4
  %503 = sext i32 %502 to i64
  %504 = mul i64 %503, 48
  %505 = trunc i64 %504 to i32
  %506 = call %struct.elf_symbol* @bfd_malloc(i32 %505)
  store %struct.elf_symbol* %506, %struct.elf_symbol** %22, align 8
  %507 = load i32, i32* %15, align 4
  %508 = sext i32 %507 to i64
  %509 = mul i64 %508, 48
  %510 = trunc i64 %509 to i32
  %511 = call %struct.elf_symbol* @bfd_malloc(i32 %510)
  store %struct.elf_symbol* %511, %struct.elf_symbol** %23, align 8
  %512 = load %struct.elf_symbol*, %struct.elf_symbol** %22, align 8
  %513 = icmp eq %struct.elf_symbol* %512, null
  br i1 %513, label %517, label %514

514:                                              ; preds = %501
  %515 = load %struct.elf_symbol*, %struct.elf_symbol** %23, align 8
  %516 = icmp eq %struct.elf_symbol* %515, null
  br i1 %516, label %517, label %518

517:                                              ; preds = %514, %501
  br label %720

518:                                              ; preds = %514
  store i32 0, i32* %24, align 4
  %519 = load %struct.elf_symbol*, %struct.elf_symbol** %16, align 8
  store %struct.elf_symbol* %519, %struct.elf_symbol** %20, align 8
  %520 = load %struct.elf_symbol*, %struct.elf_symbol** %20, align 8
  %521 = load i32, i32* %14, align 4
  %522 = sext i32 %521 to i64
  %523 = getelementptr inbounds %struct.elf_symbol, %struct.elf_symbol* %520, i64 %522
  store %struct.elf_symbol* %523, %struct.elf_symbol** %21, align 8
  br label %524

524:                                              ; preds = %544, %518
  %525 = load %struct.elf_symbol*, %struct.elf_symbol** %20, align 8
  %526 = load %struct.elf_symbol*, %struct.elf_symbol** %21, align 8
  %527 = icmp ult %struct.elf_symbol* %525, %526
  br i1 %527, label %528, label %547

528:                                              ; preds = %524
  %529 = load %struct.elf_symbol*, %struct.elf_symbol** %20, align 8
  %530 = getelementptr inbounds %struct.elf_symbol, %struct.elf_symbol* %529, i32 0, i32 1
  %531 = load i32, i32* %530, align 4
  %532 = load i32, i32* %27, align 4
  %533 = icmp eq i32 %531, %532
  br i1 %533, label %534, label %543

534:                                              ; preds = %528
  %535 = load %struct.elf_symbol*, %struct.elf_symbol** %20, align 8
  %536 = load %struct.elf_symbol*, %struct.elf_symbol** %22, align 8
  %537 = load i32, i32* %24, align 4
  %538 = add nsw i32 %537, 1
  store i32 %538, i32* %24, align 4
  %539 = sext i32 %537 to i64
  %540 = getelementptr inbounds %struct.elf_symbol, %struct.elf_symbol* %536, i64 %539
  %541 = getelementptr inbounds %struct.elf_symbol, %struct.elf_symbol* %540, i32 0, i32 4
  %542 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %541, i32 0, i32 0
  store %struct.elf_symbol* %535, %struct.elf_symbol** %542, align 8
  br label %543

543:                                              ; preds = %534, %528
  br label %544

544:                                              ; preds = %543
  %545 = load %struct.elf_symbol*, %struct.elf_symbol** %20, align 8
  %546 = getelementptr inbounds %struct.elf_symbol, %struct.elf_symbol* %545, i32 1
  store %struct.elf_symbol* %546, %struct.elf_symbol** %20, align 8
  br label %524

547:                                              ; preds = %524
  store i32 0, i32* %25, align 4
  %548 = load %struct.elf_symbol*, %struct.elf_symbol** %17, align 8
  store %struct.elf_symbol* %548, %struct.elf_symbol** %20, align 8
  %549 = load %struct.elf_symbol*, %struct.elf_symbol** %20, align 8
  %550 = load i32, i32* %15, align 4
  %551 = sext i32 %550 to i64
  %552 = getelementptr inbounds %struct.elf_symbol, %struct.elf_symbol* %549, i64 %551
  store %struct.elf_symbol* %552, %struct.elf_symbol** %21, align 8
  br label %553

553:                                              ; preds = %573, %547
  %554 = load %struct.elf_symbol*, %struct.elf_symbol** %20, align 8
  %555 = load %struct.elf_symbol*, %struct.elf_symbol** %21, align 8
  %556 = icmp ult %struct.elf_symbol* %554, %555
  br i1 %556, label %557, label %576

557:                                              ; preds = %553
  %558 = load %struct.elf_symbol*, %struct.elf_symbol** %20, align 8
  %559 = getelementptr inbounds %struct.elf_symbol, %struct.elf_symbol* %558, i32 0, i32 1
  %560 = load i32, i32* %559, align 4
  %561 = load i32, i32* %28, align 4
  %562 = icmp eq i32 %560, %561
  br i1 %562, label %563, label %572

563:                                              ; preds = %557
  %564 = load %struct.elf_symbol*, %struct.elf_symbol** %20, align 8
  %565 = load %struct.elf_symbol*, %struct.elf_symbol** %23, align 8
  %566 = load i32, i32* %25, align 4
  %567 = add nsw i32 %566, 1
  store i32 %567, i32* %25, align 4
  %568 = sext i32 %566 to i64
  %569 = getelementptr inbounds %struct.elf_symbol, %struct.elf_symbol* %565, i64 %568
  %570 = getelementptr inbounds %struct.elf_symbol, %struct.elf_symbol* %569, i32 0, i32 4
  %571 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %570, i32 0, i32 0
  store %struct.elf_symbol* %564, %struct.elf_symbol** %571, align 8
  br label %572

572:                                              ; preds = %563, %557
  br label %573

573:                                              ; preds = %572
  %574 = load %struct.elf_symbol*, %struct.elf_symbol** %20, align 8
  %575 = getelementptr inbounds %struct.elf_symbol, %struct.elf_symbol* %574, i32 1
  store %struct.elf_symbol* %575, %struct.elf_symbol** %20, align 8
  br label %553

576:                                              ; preds = %553
  %577 = load i32, i32* %24, align 4
  %578 = icmp eq i32 %577, 0
  br i1 %578, label %586, label %579

579:                                              ; preds = %576
  %580 = load i32, i32* %25, align 4
  %581 = icmp eq i32 %580, 0
  br i1 %581, label %586, label %582

582:                                              ; preds = %579
  %583 = load i32, i32* %24, align 4
  %584 = load i32, i32* %25, align 4
  %585 = icmp ne i32 %583, %584
  br i1 %585, label %586, label %587

586:                                              ; preds = %582, %579, %576
  br label %720

587:                                              ; preds = %582
  store i32 0, i32* %26, align 4
  br label %588

588:                                              ; preds = %613, %587
  %589 = load i32, i32* %26, align 4
  %590 = load i32, i32* %24, align 4
  %591 = icmp slt i32 %589, %590
  br i1 %591, label %592, label %616

592:                                              ; preds = %588
  %593 = load i32*, i32** %8, align 8
  %594 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %595 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %594, i32 0, i32 1
  %596 = load i32, i32* %595, align 4
  %597 = load %struct.elf_symbol*, %struct.elf_symbol** %22, align 8
  %598 = load i32, i32* %26, align 4
  %599 = sext i32 %598 to i64
  %600 = getelementptr inbounds %struct.elf_symbol, %struct.elf_symbol* %597, i64 %599
  %601 = getelementptr inbounds %struct.elf_symbol, %struct.elf_symbol* %600, i32 0, i32 4
  %602 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %601, i32 0, i32 0
  %603 = load %struct.elf_symbol*, %struct.elf_symbol** %602, align 8
  %604 = getelementptr inbounds %struct.elf_symbol, %struct.elf_symbol* %603, i32 0, i32 5
  %605 = load i32, i32* %604, align 8
  %606 = call i8* @bfd_elf_string_from_elf_section(i32* %593, i32 %596, i32 %605)
  %607 = ptrtoint i8* %606 to i32
  %608 = load %struct.elf_symbol*, %struct.elf_symbol** %22, align 8
  %609 = load i32, i32* %26, align 4
  %610 = sext i32 %609 to i64
  %611 = getelementptr inbounds %struct.elf_symbol, %struct.elf_symbol* %608, i64 %610
  %612 = getelementptr inbounds %struct.elf_symbol, %struct.elf_symbol* %611, i32 0, i32 0
  store i32 %607, i32* %612, align 8
  br label %613

613:                                              ; preds = %592
  %614 = load i32, i32* %26, align 4
  %615 = add nsw i32 %614, 1
  store i32 %615, i32* %26, align 4
  br label %588

616:                                              ; preds = %588
  store i32 0, i32* %26, align 4
  br label %617

617:                                              ; preds = %642, %616
  %618 = load i32, i32* %26, align 4
  %619 = load i32, i32* %25, align 4
  %620 = icmp slt i32 %618, %619
  br i1 %620, label %621, label %645

621:                                              ; preds = %617
  %622 = load i32*, i32** %9, align 8
  %623 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %624 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %623, i32 0, i32 1
  %625 = load i32, i32* %624, align 4
  %626 = load %struct.elf_symbol*, %struct.elf_symbol** %23, align 8
  %627 = load i32, i32* %26, align 4
  %628 = sext i32 %627 to i64
  %629 = getelementptr inbounds %struct.elf_symbol, %struct.elf_symbol* %626, i64 %628
  %630 = getelementptr inbounds %struct.elf_symbol, %struct.elf_symbol* %629, i32 0, i32 4
  %631 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %630, i32 0, i32 0
  %632 = load %struct.elf_symbol*, %struct.elf_symbol** %631, align 8
  %633 = getelementptr inbounds %struct.elf_symbol, %struct.elf_symbol* %632, i32 0, i32 5
  %634 = load i32, i32* %633, align 8
  %635 = call i8* @bfd_elf_string_from_elf_section(i32* %622, i32 %625, i32 %634)
  %636 = ptrtoint i8* %635 to i32
  %637 = load %struct.elf_symbol*, %struct.elf_symbol** %23, align 8
  %638 = load i32, i32* %26, align 4
  %639 = sext i32 %638 to i64
  %640 = getelementptr inbounds %struct.elf_symbol, %struct.elf_symbol* %637, i64 %639
  %641 = getelementptr inbounds %struct.elf_symbol, %struct.elf_symbol* %640, i32 0, i32 0
  store i32 %636, i32* %641, align 8
  br label %642

642:                                              ; preds = %621
  %643 = load i32, i32* %26, align 4
  %644 = add nsw i32 %643, 1
  store i32 %644, i32* %26, align 4
  br label %617

645:                                              ; preds = %617
  %646 = load %struct.elf_symbol*, %struct.elf_symbol** %22, align 8
  %647 = load i32, i32* %24, align 4
  %648 = load i32, i32* @elf_sym_name_compare, align 4
  %649 = call i32 @qsort(%struct.elf_symbol* %646, i32 %647, i32 48, i32 %648)
  %650 = load %struct.elf_symbol*, %struct.elf_symbol** %23, align 8
  %651 = load i32, i32* %24, align 4
  %652 = load i32, i32* @elf_sym_name_compare, align 4
  %653 = call i32 @qsort(%struct.elf_symbol* %650, i32 %651, i32 48, i32 %652)
  store i32 0, i32* %26, align 4
  br label %654

654:                                              ; preds = %715, %645
  %655 = load i32, i32* %26, align 4
  %656 = load i32, i32* %24, align 4
  %657 = icmp slt i32 %655, %656
  br i1 %657, label %658, label %718

658:                                              ; preds = %654
  %659 = load %struct.elf_symbol*, %struct.elf_symbol** %22, align 8
  %660 = load i32, i32* %26, align 4
  %661 = sext i32 %660 to i64
  %662 = getelementptr inbounds %struct.elf_symbol, %struct.elf_symbol* %659, i64 %661
  %663 = getelementptr inbounds %struct.elf_symbol, %struct.elf_symbol* %662, i32 0, i32 4
  %664 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %663, i32 0, i32 0
  %665 = load %struct.elf_symbol*, %struct.elf_symbol** %664, align 8
  %666 = getelementptr inbounds %struct.elf_symbol, %struct.elf_symbol* %665, i32 0, i32 2
  %667 = load i64, i64* %666, align 8
  %668 = load %struct.elf_symbol*, %struct.elf_symbol** %23, align 8
  %669 = load i32, i32* %26, align 4
  %670 = sext i32 %669 to i64
  %671 = getelementptr inbounds %struct.elf_symbol, %struct.elf_symbol* %668, i64 %670
  %672 = getelementptr inbounds %struct.elf_symbol, %struct.elf_symbol* %671, i32 0, i32 4
  %673 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %672, i32 0, i32 0
  %674 = load %struct.elf_symbol*, %struct.elf_symbol** %673, align 8
  %675 = getelementptr inbounds %struct.elf_symbol, %struct.elf_symbol* %674, i32 0, i32 2
  %676 = load i64, i64* %675, align 8
  %677 = icmp ne i64 %667, %676
  br i1 %677, label %713, label %678

678:                                              ; preds = %658
  %679 = load %struct.elf_symbol*, %struct.elf_symbol** %22, align 8
  %680 = load i32, i32* %26, align 4
  %681 = sext i32 %680 to i64
  %682 = getelementptr inbounds %struct.elf_symbol, %struct.elf_symbol* %679, i64 %681
  %683 = getelementptr inbounds %struct.elf_symbol, %struct.elf_symbol* %682, i32 0, i32 4
  %684 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %683, i32 0, i32 0
  %685 = load %struct.elf_symbol*, %struct.elf_symbol** %684, align 8
  %686 = getelementptr inbounds %struct.elf_symbol, %struct.elf_symbol* %685, i32 0, i32 3
  %687 = load i64, i64* %686, align 8
  %688 = load %struct.elf_symbol*, %struct.elf_symbol** %23, align 8
  %689 = load i32, i32* %26, align 4
  %690 = sext i32 %689 to i64
  %691 = getelementptr inbounds %struct.elf_symbol, %struct.elf_symbol* %688, i64 %690
  %692 = getelementptr inbounds %struct.elf_symbol, %struct.elf_symbol* %691, i32 0, i32 4
  %693 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %692, i32 0, i32 0
  %694 = load %struct.elf_symbol*, %struct.elf_symbol** %693, align 8
  %695 = getelementptr inbounds %struct.elf_symbol, %struct.elf_symbol* %694, i32 0, i32 3
  %696 = load i64, i64* %695, align 8
  %697 = icmp ne i64 %687, %696
  br i1 %697, label %713, label %698

698:                                              ; preds = %678
  %699 = load %struct.elf_symbol*, %struct.elf_symbol** %22, align 8
  %700 = load i32, i32* %26, align 4
  %701 = sext i32 %700 to i64
  %702 = getelementptr inbounds %struct.elf_symbol, %struct.elf_symbol* %699, i64 %701
  %703 = getelementptr inbounds %struct.elf_symbol, %struct.elf_symbol* %702, i32 0, i32 0
  %704 = load i32, i32* %703, align 8
  %705 = load %struct.elf_symbol*, %struct.elf_symbol** %23, align 8
  %706 = load i32, i32* %26, align 4
  %707 = sext i32 %706 to i64
  %708 = getelementptr inbounds %struct.elf_symbol, %struct.elf_symbol* %705, i64 %707
  %709 = getelementptr inbounds %struct.elf_symbol, %struct.elf_symbol* %708, i32 0, i32 0
  %710 = load i32, i32* %709, align 8
  %711 = call i64 @strcmp(i32 %704, i32 %710)
  %712 = icmp ne i64 %711, 0
  br i1 %712, label %713, label %714

713:                                              ; preds = %698, %678, %658
  br label %720

714:                                              ; preds = %698
  br label %715

715:                                              ; preds = %714
  %716 = load i32, i32* %26, align 4
  %717 = add nsw i32 %716, 1
  store i32 %717, i32* %26, align 4
  br label %654

718:                                              ; preds = %654
  %719 = load i32, i32* @TRUE, align 4
  store i32 %719, i32* %29, align 4
  br label %720

720:                                              ; preds = %718, %713, %586, %517, %499, %494, %357, %340, %207, %180
  %721 = load %struct.elf_symbol*, %struct.elf_symbol** %22, align 8
  %722 = icmp ne %struct.elf_symbol* %721, null
  br i1 %722, label %723, label %726

723:                                              ; preds = %720
  %724 = load %struct.elf_symbol*, %struct.elf_symbol** %22, align 8
  %725 = call i32 @free(%struct.elf_symbol* %724)
  br label %726

726:                                              ; preds = %723, %720
  %727 = load %struct.elf_symbol*, %struct.elf_symbol** %23, align 8
  %728 = icmp ne %struct.elf_symbol* %727, null
  br i1 %728, label %729, label %732

729:                                              ; preds = %726
  %730 = load %struct.elf_symbol*, %struct.elf_symbol** %23, align 8
  %731 = call i32 @free(%struct.elf_symbol* %730)
  br label %732

732:                                              ; preds = %729, %726
  %733 = load %struct.elf_symbol*, %struct.elf_symbol** %16, align 8
  %734 = icmp ne %struct.elf_symbol* %733, null
  br i1 %734, label %735, label %738

735:                                              ; preds = %732
  %736 = load %struct.elf_symbol*, %struct.elf_symbol** %16, align 8
  %737 = call i32 @free(%struct.elf_symbol* %736)
  br label %738

738:                                              ; preds = %735, %732
  %739 = load %struct.elf_symbol*, %struct.elf_symbol** %17, align 8
  %740 = icmp ne %struct.elf_symbol* %739, null
  br i1 %740, label %741, label %744

741:                                              ; preds = %738
  %742 = load %struct.elf_symbol*, %struct.elf_symbol** %17, align 8
  %743 = call i32 @free(%struct.elf_symbol* %742)
  br label %744

744:                                              ; preds = %741, %738
  %745 = load i32, i32* %29, align 4
  store i32 %745, i32* %4, align 4
  br label %746

746:                                              ; preds = %744, %159, %123, %108, %87, %79, %53
  %747 = load i32, i32* %4, align 4
  ret i32 %747
}

declare dso_local i64 @CONST_STRNEQ(i32, i8*) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i64 @bfd_get_flavour(i32*) #1

declare dso_local i64 @elf_section_type(%struct.TYPE_15__*) #1

declare dso_local i32 @elf_section_flags(%struct.TYPE_15__*) #1

declare dso_local i32 @elf_group_name(%struct.TYPE_15__*) #1

declare dso_local i32 @_bfd_elf_section_from_bfd_section(i32*, %struct.TYPE_15__*) #1

declare dso_local %struct.elf_backend_data* @get_elf_backend_data(i32*) #1

declare dso_local %struct.TYPE_17__* @elf_tdata(i32*) #1

declare dso_local %struct.elf_symbol* @bfd_elf_get_elf_syms(i32*, %struct.TYPE_16__*, i32, i32, i32*, i32*, i32*) #1

declare dso_local %struct.elf_symbuf_head* @elf_create_symbuf(i32, %struct.elf_symbol*) #1

declare dso_local %struct.elf_symbol* @bfd_malloc(i32) #1

declare dso_local i8* @bfd_elf_string_from_elf_section(i32*, i32, i32) #1

declare dso_local i32 @qsort(%struct.elf_symbol*, i32, i32, i32) #1

declare dso_local i32 @free(%struct.elf_symbol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
