; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_libdwarf_elf_init.c__dwarf_elf_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_libdwarf_elf_init.c__dwarf_elf_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64 }
%struct.TYPE_24__ = type { i32, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { %struct.TYPE_20__*, %struct.TYPE_23__* }
%struct.TYPE_20__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_23__ = type { i32, %struct.TYPE_19__*, i32, i32*, %struct.TYPE_25__, %struct.TYPE_20__, i32* }
%struct.TYPE_19__ = type { i32* }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_21__ = type { i32 }

@DW_DLE_NONE = common dso_local global i32 0, align 4
@DW_DLE_MEMORY = common dso_local global i32 0, align 4
@_dwarf_elf_get_section_info = common dso_local global i32 0, align 4
@_dwarf_elf_get_byte_order = common dso_local global i32 0, align 4
@_dwarf_elf_get_length_size = common dso_local global i32 0, align 4
@_dwarf_elf_get_pointer_size = common dso_local global i32 0, align 4
@_dwarf_elf_get_section_count = common dso_local global i32 0, align 4
@_dwarf_elf_load_section = common dso_local global i32 0, align 4
@DW_DLE_ELF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c".symtab\00", align 1
@debug_name = common dso_local global i8** null, align 8
@_libdwarf = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_dwarf_elf_init(%struct.TYPE_24__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca %struct.TYPE_23__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_21__, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %20 = load i32, i32* @DW_DLE_NONE, align 4
  store i32 %20, i32* %19, align 4
  %21 = call i8* @calloc(i32 1, i32 16)
  %22 = bitcast i8* %21 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %22, %struct.TYPE_22__** %8, align 8
  %23 = icmp eq %struct.TYPE_22__* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %3
  %25 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* @DW_DLE_MEMORY, align 4
  %28 = call i32 @DWARF_SET_ERROR(%struct.TYPE_24__* %25, i32* %26, i32 %27)
  %29 = load i32, i32* @DW_DLE_MEMORY, align 4
  store i32 %29, i32* %4, align 4
  br label %346

30:                                               ; preds = %3
  %31 = call i8* @calloc(i32 1, i32 72)
  %32 = bitcast i8* %31 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %32, %struct.TYPE_23__** %9, align 8
  %33 = icmp eq %struct.TYPE_23__* %32, null
  br i1 %33, label %34, label %42

34:                                               ; preds = %30
  %35 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %36 = call i32 @free(%struct.TYPE_22__* %35)
  %37 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = load i32, i32* @DW_DLE_MEMORY, align 4
  %40 = call i32 @DWARF_SET_ERROR(%struct.TYPE_24__* %37, i32* %38, i32 %39)
  %41 = load i32, i32* @DW_DLE_MEMORY, align 4
  store i32 %41, i32* %4, align 4
  br label %346

42:                                               ; preds = %30
  %43 = load i32*, i32** %6, align 8
  %44 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %44, i32 0, i32 6
  store i32* %43, i32** %45, align 8
  %46 = load i32, i32* @_dwarf_elf_get_section_info, align 4
  %47 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %47, i32 0, i32 5
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i32 0, i32 5
  store i32 %46, i32* %49, align 4
  %50 = load i32, i32* @_dwarf_elf_get_byte_order, align 4
  %51 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %51, i32 0, i32 5
  %53 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %52, i32 0, i32 4
  store i32 %50, i32* %53, align 4
  %54 = load i32, i32* @_dwarf_elf_get_length_size, align 4
  %55 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %55, i32 0, i32 5
  %57 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %56, i32 0, i32 3
  store i32 %54, i32* %57, align 4
  %58 = load i32, i32* @_dwarf_elf_get_pointer_size, align 4
  %59 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %59, i32 0, i32 5
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 2
  store i32 %58, i32* %61, align 4
  %62 = load i32, i32* @_dwarf_elf_get_section_count, align 4
  %63 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %63, i32 0, i32 5
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %64, i32 0, i32 1
  store i32 %62, i32* %65, align 4
  %66 = load i32, i32* @_dwarf_elf_load_section, align 4
  %67 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %67, i32 0, i32 5
  %69 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %68, i32 0, i32 0
  store i32 %66, i32* %69, align 4
  %70 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %71 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %71, i32 0, i32 1
  store %struct.TYPE_23__* %70, %struct.TYPE_23__** %72, align 8
  %73 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %73, i32 0, i32 5
  %75 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %75, i32 0, i32 0
  store %struct.TYPE_20__* %74, %struct.TYPE_20__** %76, align 8
  %77 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %78 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %78, i32 0, i32 1
  store %struct.TYPE_22__* %77, %struct.TYPE_22__** %79, align 8
  %80 = load i32*, i32** %6, align 8
  %81 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %81, i32 0, i32 4
  %83 = call i32* @gelf_getehdr(i32* %80, %struct.TYPE_25__* %82)
  %84 = icmp eq i32* %83, null
  br i1 %84, label %85, label %90

85:                                               ; preds = %42
  %86 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %87 = load i32*, i32** %7, align 8
  %88 = call i32 @DWARF_SET_ELF_ERROR(%struct.TYPE_24__* %86, i32* %87)
  %89 = load i32, i32* @DW_DLE_ELF, align 4
  store i32 %89, i32* %19, align 4
  br label %342

90:                                               ; preds = %42
  %91 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %91, i32 0, i32 4
  %93 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  %97 = load i32*, i32** %6, align 8
  %98 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %98, i32 0, i32 2
  %100 = call i32 @elf_getshstrndx(i32* %97, i32* %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %107, label %102

102:                                              ; preds = %90
  %103 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %104 = load i32*, i32** %7, align 8
  %105 = call i32 @DWARF_SET_ELF_ERROR(%struct.TYPE_24__* %103, i32* %104)
  %106 = load i32, i32* @DW_DLE_ELF, align 4
  store i32 %106, i32* %19, align 4
  br label %342

107:                                              ; preds = %90
  store i32 0, i32* %18, align 4
  store i64 0, i64* %14, align 8
  store i32* null, i32** %13, align 8
  store i32* null, i32** %12, align 8
  %108 = call i32 (...) @elf_errno()
  br label %109

109:                                              ; preds = %184, %159, %107
  %110 = load i32*, i32** %6, align 8
  %111 = load i32*, i32** %12, align 8
  %112 = call i32* @elf_nextscn(i32* %110, i32* %111)
  store i32* %112, i32** %12, align 8
  %113 = icmp ne i32* %112, null
  br i1 %113, label %114, label %185

114:                                              ; preds = %109
  %115 = load i32*, i32** %12, align 8
  %116 = call i32* @gelf_getshdr(i32* %115, %struct.TYPE_21__* %11)
  %117 = icmp eq i32* %116, null
  br i1 %117, label %118, label %123

118:                                              ; preds = %114
  %119 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %120 = load i32*, i32** %7, align 8
  %121 = call i32 @DWARF_SET_ELF_ERROR(%struct.TYPE_24__* %119, i32* %120)
  %122 = load i32, i32* @DW_DLE_ELF, align 4
  store i32 %122, i32* %19, align 4
  br label %342

123:                                              ; preds = %114
  %124 = load i32*, i32** %6, align 8
  %125 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i8* @elf_strptr(i32* %124, i32 %127, i32 %129)
  store i8* %130, i8** %10, align 8
  %131 = icmp eq i8* %130, null
  br i1 %131, label %132, label %137

132:                                              ; preds = %123
  %133 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %134 = load i32*, i32** %7, align 8
  %135 = call i32 @DWARF_SET_ELF_ERROR(%struct.TYPE_24__* %133, i32* %134)
  %136 = load i32, i32* @DW_DLE_ELF, align 4
  store i32 %136, i32* %19, align 4
  br label %342

137:                                              ; preds = %123
  %138 = load i8*, i8** %10, align 8
  %139 = call i64 @strcmp(i8* %138, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %160, label %141

141:                                              ; preds = %137
  %142 = load i32*, i32** %12, align 8
  %143 = call i64 @elf_ndxscn(i32* %142)
  store i64 %143, i64* %14, align 8
  %144 = load i32*, i32** %12, align 8
  %145 = call i8* @elf_getdata(i32* %144, i32* null)
  %146 = bitcast i8* %145 to i32*
  store i32* %146, i32** %13, align 8
  %147 = icmp eq i32* %146, null
  br i1 %147, label %148, label %159

148:                                              ; preds = %141
  %149 = call i32 (...) @elf_errno()
  store i32 %149, i32* %15, align 4
  %150 = load i32, i32* %15, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %158

152:                                              ; preds = %148
  %153 = load i32*, i32** %7, align 8
  %154 = load i32, i32* @DW_DLE_ELF, align 4
  %155 = load i32, i32* %15, align 4
  %156 = call i32 @_DWARF_SET_ERROR(%struct.TYPE_24__* null, i32* %153, i32 %154, i32 %155)
  %157 = load i32, i32* @DW_DLE_ELF, align 4
  store i32 %157, i32* %19, align 4
  br label %342

158:                                              ; preds = %148
  br label %159

159:                                              ; preds = %158, %141
  br label %109

160:                                              ; preds = %137
  store i32 0, i32* %16, align 4
  br label %161

161:                                              ; preds = %181, %160
  %162 = load i8**, i8*** @debug_name, align 8
  %163 = load i32, i32* %16, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i8*, i8** %162, i64 %164
  %166 = load i8*, i8** %165, align 8
  %167 = icmp ne i8* %166, null
  br i1 %167, label %168, label %184

168:                                              ; preds = %161
  %169 = load i8*, i8** %10, align 8
  %170 = load i8**, i8*** @debug_name, align 8
  %171 = load i32, i32* %16, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i8*, i8** %170, i64 %172
  %174 = load i8*, i8** %173, align 8
  %175 = call i64 @strcmp(i8* %169, i8* %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %180, label %177

177:                                              ; preds = %168
  %178 = load i32, i32* %18, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %18, align 4
  br label %180

180:                                              ; preds = %177, %168
  br label %181

181:                                              ; preds = %180
  %182 = load i32, i32* %16, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %16, align 4
  br label %161

184:                                              ; preds = %161
  br label %109

185:                                              ; preds = %109
  %186 = call i32 (...) @elf_errno()
  store i32 %186, i32* %15, align 4
  %187 = load i32, i32* %15, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %194

189:                                              ; preds = %185
  %190 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %191 = load i32*, i32** %7, align 8
  %192 = call i32 @DWARF_SET_ELF_ERROR(%struct.TYPE_24__* %190, i32* %191)
  %193 = load i32, i32* @DW_DLE_ELF, align 4
  store i32 %193, i32* %4, align 4
  br label %346

194:                                              ; preds = %185
  %195 = load i32, i32* %18, align 4
  %196 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %197 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %196, i32 0, i32 0
  store i32 %195, i32* %197, align 8
  %198 = load i32, i32* %18, align 4
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %202

200:                                              ; preds = %194
  %201 = load i32, i32* @DW_DLE_NONE, align 4
  store i32 %201, i32* %4, align 4
  br label %346

202:                                              ; preds = %194
  %203 = load i32, i32* %18, align 4
  %204 = call i8* @calloc(i32 %203, i32 4)
  %205 = bitcast i8* %204 to %struct.TYPE_19__*
  %206 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %207 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %206, i32 0, i32 1
  store %struct.TYPE_19__* %205, %struct.TYPE_19__** %207, align 8
  %208 = icmp eq %struct.TYPE_19__* %205, null
  br i1 %208, label %216, label %209

209:                                              ; preds = %202
  %210 = load i32, i32* %18, align 4
  %211 = call i8* @calloc(i32 %210, i32 4)
  %212 = bitcast i8* %211 to i32*
  %213 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %214 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %213, i32 0, i32 3
  store i32* %212, i32** %214, align 8
  %215 = icmp eq i32* %212, null
  br i1 %215, label %216, label %221

216:                                              ; preds = %209, %202
  %217 = load i32*, i32** %7, align 8
  %218 = load i32, i32* @DW_DLE_MEMORY, align 4
  %219 = call i32 @DWARF_SET_ERROR(%struct.TYPE_24__* null, i32* %217, i32 %218)
  %220 = load i32, i32* @DW_DLE_MEMORY, align 4
  store i32 %220, i32* %19, align 4
  br label %342

221:                                              ; preds = %209
  store i32* null, i32** %12, align 8
  store i32 0, i32* %17, align 4
  br label %222

222:                                              ; preds = %334, %221
  %223 = load i32*, i32** %6, align 8
  %224 = load i32*, i32** %12, align 8
  %225 = call i32* @elf_nextscn(i32* %223, i32* %224)
  store i32* %225, i32** %12, align 8
  %226 = icmp ne i32* %225, null
  br i1 %226, label %227, label %231

227:                                              ; preds = %222
  %228 = load i32, i32* %17, align 4
  %229 = load i32, i32* %18, align 4
  %230 = icmp slt i32 %228, %229
  br label %231

231:                                              ; preds = %227, %222
  %232 = phi i1 [ false, %222 ], [ %230, %227 ]
  br i1 %232, label %233, label %335

233:                                              ; preds = %231
  %234 = load i32*, i32** %12, align 8
  %235 = call i32* @gelf_getshdr(i32* %234, %struct.TYPE_21__* %11)
  %236 = icmp eq i32* %235, null
  br i1 %236, label %237, label %242

237:                                              ; preds = %233
  %238 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %239 = load i32*, i32** %7, align 8
  %240 = call i32 @DWARF_SET_ELF_ERROR(%struct.TYPE_24__* %238, i32* %239)
  %241 = load i32, i32* @DW_DLE_ELF, align 4
  store i32 %241, i32* %19, align 4
  br label %342

242:                                              ; preds = %233
  %243 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %244 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %243, i32 0, i32 3
  %245 = load i32*, i32** %244, align 8
  %246 = load i32, i32* %17, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i32, i32* %245, i64 %247
  %249 = call i32 @memcpy(i32* %248, %struct.TYPE_21__* %11, i32 4)
  %250 = load i32*, i32** %6, align 8
  %251 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %252 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %251, i32 0, i32 2
  %253 = load i32, i32* %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  %256 = call i8* @elf_strptr(i32* %250, i32 %253, i32 %255)
  store i8* %256, i8** %10, align 8
  %257 = icmp eq i8* %256, null
  br i1 %257, label %258, label %263

258:                                              ; preds = %242
  %259 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %260 = load i32*, i32** %7, align 8
  %261 = call i32 @DWARF_SET_ELF_ERROR(%struct.TYPE_24__* %259, i32* %260)
  %262 = load i32, i32* @DW_DLE_ELF, align 4
  store i32 %262, i32* %19, align 4
  br label %342

263:                                              ; preds = %242
  store i32 0, i32* %16, align 4
  br label %264

264:                                              ; preds = %331, %263
  %265 = load i8**, i8*** @debug_name, align 8
  %266 = load i32, i32* %16, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i8*, i8** %265, i64 %267
  %269 = load i8*, i8** %268, align 8
  %270 = icmp ne i8* %269, null
  br i1 %270, label %271, label %334

271:                                              ; preds = %264
  %272 = load i8*, i8** %10, align 8
  %273 = load i8**, i8*** @debug_name, align 8
  %274 = load i32, i32* %16, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i8*, i8** %273, i64 %275
  %277 = load i8*, i8** %276, align 8
  %278 = call i64 @strcmp(i8* %272, i8* %277)
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %281

280:                                              ; preds = %271
  br label %331

281:                                              ; preds = %271
  %282 = call i32 (...) @elf_errno()
  %283 = load i32*, i32** %12, align 8
  %284 = call i8* @elf_getdata(i32* %283, i32* null)
  %285 = bitcast i8* %284 to i32*
  %286 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %287 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %286, i32 0, i32 1
  %288 = load %struct.TYPE_19__*, %struct.TYPE_19__** %287, align 8
  %289 = load i32, i32* %17, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %288, i64 %290
  %292 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %291, i32 0, i32 0
  store i32* %285, i32** %292, align 8
  %293 = icmp eq i32* %285, null
  br i1 %293, label %294, label %306

294:                                              ; preds = %281
  %295 = call i32 (...) @elf_errno()
  store i32 %295, i32* %15, align 4
  %296 = load i32, i32* %15, align 4
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %305

298:                                              ; preds = %294
  %299 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %300 = load i32*, i32** %7, align 8
  %301 = load i32, i32* @DW_DLE_ELF, align 4
  %302 = load i32, i32* %15, align 4
  %303 = call i32 @_DWARF_SET_ERROR(%struct.TYPE_24__* %299, i32* %300, i32 %301, i32 %302)
  %304 = load i32, i32* @DW_DLE_ELF, align 4
  store i32 %304, i32* %19, align 4
  br label %342

305:                                              ; preds = %294
  br label %306

306:                                              ; preds = %305, %281
  %307 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_libdwarf, i32 0, i32 0), align 8
  %308 = icmp ne i64 %307, 0
  br i1 %308, label %309, label %328

309:                                              ; preds = %306
  %310 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %311 = load i32*, i32** %6, align 8
  %312 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %313 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %312, i32 0, i32 1
  %314 = load %struct.TYPE_19__*, %struct.TYPE_19__** %313, align 8
  %315 = load i32, i32* %17, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %314, i64 %316
  %318 = load i32*, i32** %12, align 8
  %319 = call i64 @elf_ndxscn(i32* %318)
  %320 = load i64, i64* %14, align 8
  %321 = load i32*, i32** %13, align 8
  %322 = load i32*, i32** %7, align 8
  %323 = call i32 @_dwarf_elf_relocate(%struct.TYPE_24__* %310, i32* %311, %struct.TYPE_19__* %317, i64 %319, i64 %320, i32* %321, i32* %322)
  %324 = load i32, i32* @DW_DLE_NONE, align 4
  %325 = icmp ne i32 %323, %324
  br i1 %325, label %326, label %327

326:                                              ; preds = %309
  br label %342

327:                                              ; preds = %309
  br label %328

328:                                              ; preds = %327, %306
  %329 = load i32, i32* %17, align 4
  %330 = add nsw i32 %329, 1
  store i32 %330, i32* %17, align 4
  br label %331

331:                                              ; preds = %328, %280
  %332 = load i32, i32* %16, align 4
  %333 = add nsw i32 %332, 1
  store i32 %333, i32* %16, align 4
  br label %264

334:                                              ; preds = %264
  br label %222

335:                                              ; preds = %231
  %336 = load i32, i32* %17, align 4
  %337 = load i32, i32* %18, align 4
  %338 = icmp eq i32 %336, %337
  %339 = zext i1 %338 to i32
  %340 = call i32 @assert(i32 %339)
  %341 = load i32, i32* @DW_DLE_NONE, align 4
  store i32 %341, i32* %4, align 4
  br label %346

342:                                              ; preds = %326, %298, %258, %237, %216, %152, %132, %118, %102, %85
  %343 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %344 = call i32 @_dwarf_elf_deinit(%struct.TYPE_24__* %343)
  %345 = load i32, i32* %19, align 4
  store i32 %345, i32* %4, align 4
  br label %346

346:                                              ; preds = %342, %335, %200, %189, %34, %24
  %347 = load i32, i32* %4, align 4
  ret i32 %347
}

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @DWARF_SET_ERROR(%struct.TYPE_24__*, i32*, i32) #1

declare dso_local i32 @free(%struct.TYPE_22__*) #1

declare dso_local i32* @gelf_getehdr(i32*, %struct.TYPE_25__*) #1

declare dso_local i32 @DWARF_SET_ELF_ERROR(%struct.TYPE_24__*, i32*) #1

declare dso_local i32 @elf_getshstrndx(i32*, i32*) #1

declare dso_local i32 @elf_errno(...) #1

declare dso_local i32* @elf_nextscn(i32*, i32*) #1

declare dso_local i32* @gelf_getshdr(i32*, %struct.TYPE_21__*) #1

declare dso_local i8* @elf_strptr(i32*, i32, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @elf_ndxscn(i32*) #1

declare dso_local i8* @elf_getdata(i32*, i32*) #1

declare dso_local i32 @_DWARF_SET_ERROR(%struct.TYPE_24__*, i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.TYPE_21__*, i32) #1

declare dso_local i32 @_dwarf_elf_relocate(%struct.TYPE_24__*, i32*, %struct.TYPE_19__*, i64, i64, i32*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @_dwarf_elf_deinit(%struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
