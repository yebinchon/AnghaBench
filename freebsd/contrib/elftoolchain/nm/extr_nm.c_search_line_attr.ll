; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/nm/extr_nm.c_search_line_attr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/nm/extr_nm.c_search_line_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.func_info_head = type opaque
%struct.var_info_head = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.func_info_entry = type { i32, i32, i32, %struct.func_info_entry*, i32*, i32 }
%struct.var_info_entry = type { i32, i32, i32, %struct.var_info_entry*, i32*, i32 }

@DW_DLV_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"dwarf_tag failed: %s\00", align 1
@DW_TAG_subprogram = common dso_local global i64 0, align 8
@DW_TAG_entry_point = common dso_local global i64 0, align 8
@DW_TAG_inlined_subroutine = common dso_local global i64 0, align 8
@DW_TAG_variable = common dso_local global i64 0, align 8
@DW_AT_artificial = common dso_local global i32 0, align 4
@DW_AT_declaration = common dso_local global i32 0, align 4
@DW_AT_external = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"calloc failed\00", align 1
@DW_AT_decl_file = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"strdup\00", align 1
@DW_AT_decl_line = common dso_local global i32 0, align 4
@DW_AT_location = common dso_local global i32 0, align 4
@DW_OP_addr = common dso_local global i64 0, align 8
@entries = common dso_local global i32 0, align 4
@DW_AT_low_pc = common dso_local global i32 0, align 4
@DW_AT_high_pc = common dso_local global i32 0, align 4
@DW_DLV_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"dwarf_child: %s\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"dwarf_siblingof: %s\00", align 1
@DW_DLA_DIE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.func_info_head*, %struct.var_info_head*, i32, i8**, i64)* @search_line_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @search_line_attr(i32 %0, %struct.func_info_head* %1, %struct.var_info_head* %2, i32 %3, i8** %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.func_info_head*, align 8
  %9 = alloca %struct.var_info_head*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_4__*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.func_info_entry*, align 8
  %21 = alloca %struct.var_info_entry*, align 8
  %22 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct.func_info_head* %1, %struct.func_info_head** %8, align 8
  store %struct.var_info_head* %2, %struct.var_info_head** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8** %4, i8*** %11, align 8
  store i64 %5, i64* %12, align 8
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @dwarf_tag(i32 %23, i64* %15, i32* %19)
  %25 = load i32, i32* @DW_DLV_OK, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %6
  %28 = load i32, i32* %19, align 4
  %29 = call i32 @dwarf_errmsg(i32 %28)
  %30 = call i32 @warnx(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %293

31:                                               ; preds = %6
  %32 = load i64, i64* %15, align 8
  %33 = load i64, i64* @DW_TAG_subprogram, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %48

35:                                               ; preds = %31
  %36 = load i64, i64* %15, align 8
  %37 = load i64, i64* @DW_TAG_entry_point, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %35
  %40 = load i64, i64* %15, align 8
  %41 = load i64, i64* @DW_TAG_inlined_subroutine, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %39
  %44 = load i64, i64* %15, align 8
  %45 = load i64, i64* @DW_TAG_variable, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  br label %293

48:                                               ; preds = %43, %39, %35, %31
  %49 = load i64, i64* %15, align 8
  %50 = load i64, i64* @DW_TAG_variable, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %187

52:                                               ; preds = %48
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* @DW_AT_artificial, align 4
  %55 = call i32 @dwarf_attrval_flag(i32 %53, i32 %54, i64* %17, i32* %19)
  %56 = load i32, i32* @DW_DLV_OK, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %52
  %59 = load i64, i64* %17, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  br label %293

62:                                               ; preds = %58, %52
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* @DW_AT_declaration, align 4
  %65 = call i32 @dwarf_attrval_flag(i32 %63, i32 %64, i64* %17, i32* %19)
  %66 = load i32, i32* @DW_DLV_OK, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %62
  %69 = load i64, i64* %17, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  br label %293

72:                                               ; preds = %68, %62
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* @DW_AT_external, align 4
  %75 = call i32 @dwarf_attrval_flag(i32 %73, i32 %74, i64* %17, i32* %19)
  %76 = load i32, i32* @DW_DLV_OK, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %81, label %78

78:                                               ; preds = %72
  %79 = load i64, i64* %17, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %78, %72
  br label %293

82:                                               ; preds = %78
  %83 = call %struct.var_info_entry* @calloc(i32 1, i32 40)
  store %struct.var_info_entry* %83, %struct.var_info_entry** %21, align 8
  %84 = icmp eq %struct.var_info_entry* %83, null
  br i1 %84, label %85, label %87

85:                                               ; preds = %82
  %86 = call i32 @warn(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %293

87:                                               ; preds = %82
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* @DW_AT_decl_file, align 4
  %90 = call i32 @dwarf_attrval_unsigned(i32 %88, i32 %89, i32* %14, i32* %19)
  %91 = load i32, i32* @DW_DLV_OK, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %122

93:                                               ; preds = %87
  %94 = load i32, i32* %14, align 4
  %95 = icmp sgt i32 %94, 0
  br i1 %95, label %96, label %122

96:                                               ; preds = %93
  %97 = load i32, i32* %14, align 4
  %98 = sub nsw i32 %97, 1
  %99 = sext i32 %98 to i64
  %100 = load i64, i64* %12, align 8
  %101 = icmp slt i64 %99, %100
  br i1 %101, label %102, label %122

102:                                              ; preds = %96
  %103 = load i8**, i8*** %11, align 8
  %104 = load i32, i32* %14, align 4
  %105 = sub nsw i32 %104, 1
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8*, i8** %103, i64 %106
  %108 = load i8*, i8** %107, align 8
  %109 = call i8* @strdup(i8* %108)
  %110 = bitcast i8* %109 to %struct.var_info_entry*
  %111 = load %struct.var_info_entry*, %struct.var_info_entry** %21, align 8
  %112 = getelementptr inbounds %struct.var_info_entry, %struct.var_info_entry* %111, i32 0, i32 3
  store %struct.var_info_entry* %110, %struct.var_info_entry** %112, align 8
  %113 = load %struct.var_info_entry*, %struct.var_info_entry** %21, align 8
  %114 = getelementptr inbounds %struct.var_info_entry, %struct.var_info_entry* %113, i32 0, i32 3
  %115 = load %struct.var_info_entry*, %struct.var_info_entry** %114, align 8
  %116 = icmp eq %struct.var_info_entry* %115, null
  br i1 %116, label %117, label %121

117:                                              ; preds = %102
  %118 = call i32 @warn(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %119 = load %struct.var_info_entry*, %struct.var_info_entry** %21, align 8
  %120 = call i32 @free(%struct.var_info_entry* %119)
  br label %293

121:                                              ; preds = %102
  br label %122

122:                                              ; preds = %121, %96, %93, %87
  %123 = load i32, i32* %10, align 4
  %124 = load i32, i32* @DW_AT_decl_line, align 4
  %125 = call i32 @dwarf_attrval_unsigned(i32 %123, i32 %124, i32* %14, i32* %19)
  %126 = load i32, i32* @DW_DLV_OK, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %132

128:                                              ; preds = %122
  %129 = load i32, i32* %14, align 4
  %130 = load %struct.var_info_entry*, %struct.var_info_entry** %21, align 8
  %131 = getelementptr inbounds %struct.var_info_entry, %struct.var_info_entry* %130, i32 0, i32 0
  store i32 %129, i32* %131, align 8
  br label %132

132:                                              ; preds = %128, %122
  %133 = load i32, i32* %7, align 4
  %134 = load i32, i32* %10, align 4
  %135 = call i8* @find_object_name(i32 %133, i32 %134)
  %136 = bitcast i8* %135 to i32*
  %137 = load %struct.var_info_entry*, %struct.var_info_entry** %21, align 8
  %138 = getelementptr inbounds %struct.var_info_entry, %struct.var_info_entry* %137, i32 0, i32 4
  store i32* %136, i32** %138, align 8
  %139 = load %struct.var_info_entry*, %struct.var_info_entry** %21, align 8
  %140 = getelementptr inbounds %struct.var_info_entry, %struct.var_info_entry* %139, i32 0, i32 4
  %141 = load i32*, i32** %140, align 8
  %142 = icmp eq i32* %141, null
  br i1 %142, label %143, label %156

143:                                              ; preds = %132
  %144 = load %struct.var_info_entry*, %struct.var_info_entry** %21, align 8
  %145 = getelementptr inbounds %struct.var_info_entry, %struct.var_info_entry* %144, i32 0, i32 3
  %146 = load %struct.var_info_entry*, %struct.var_info_entry** %145, align 8
  %147 = icmp ne %struct.var_info_entry* %146, null
  br i1 %147, label %148, label %153

148:                                              ; preds = %143
  %149 = load %struct.var_info_entry*, %struct.var_info_entry** %21, align 8
  %150 = getelementptr inbounds %struct.var_info_entry, %struct.var_info_entry* %149, i32 0, i32 3
  %151 = load %struct.var_info_entry*, %struct.var_info_entry** %150, align 8
  %152 = call i32 @free(%struct.var_info_entry* %151)
  br label %153

153:                                              ; preds = %148, %143
  %154 = load %struct.var_info_entry*, %struct.var_info_entry** %21, align 8
  %155 = call i32 @free(%struct.var_info_entry* %154)
  br label %293

156:                                              ; preds = %132
  %157 = load i32, i32* %10, align 4
  %158 = load i32, i32* @DW_AT_location, align 4
  %159 = call i32 @dwarf_attr(i32 %157, i32 %158, i32* %13, i32* %19)
  %160 = load i32, i32* @DW_DLV_OK, align 4
  %161 = icmp eq i32 %159, %160
  br i1 %161, label %162, label %182

162:                                              ; preds = %156
  %163 = load i32, i32* %13, align 4
  %164 = call i32 @dwarf_formblock(i32 %163, %struct.TYPE_4__** %16, i32* %19)
  %165 = load i32, i32* @DW_DLV_OK, align 4
  %166 = icmp eq i32 %164, %165
  br i1 %166, label %167, label %182

167:                                              ; preds = %162
  %168 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = inttoptr i64 %170 to i64*
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @DW_OP_addr, align 8
  %174 = icmp eq i64 %172, %173
  br i1 %174, label %175, label %181

175:                                              ; preds = %167
  %176 = load i32, i32* %7, align 4
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %178 = call i32 @get_block_value(i32 %176, %struct.TYPE_4__* %177)
  %179 = load %struct.var_info_entry*, %struct.var_info_entry** %21, align 8
  %180 = getelementptr inbounds %struct.var_info_entry, %struct.var_info_entry* %179, i32 0, i32 5
  store i32 %178, i32* %180, align 8
  br label %181

181:                                              ; preds = %175, %167
  br label %182

182:                                              ; preds = %181, %162, %156
  %183 = load %struct.var_info_head*, %struct.var_info_head** %9, align 8
  %184 = load %struct.var_info_entry*, %struct.var_info_entry** %21, align 8
  %185 = load i32, i32* @entries, align 4
  %186 = call i32 @SLIST_INSERT_HEAD(%struct.var_info_head* %183, %struct.var_info_entry* %184, i32 %185)
  br label %292

187:                                              ; preds = %48
  %188 = call %struct.var_info_entry* @calloc(i32 1, i32 40)
  %189 = bitcast %struct.var_info_entry* %188 to %struct.func_info_entry*
  store %struct.func_info_entry* %189, %struct.func_info_entry** %20, align 8
  %190 = icmp eq %struct.func_info_entry* %189, null
  br i1 %190, label %191, label %193

191:                                              ; preds = %187
  %192 = call i32 @warn(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %293

193:                                              ; preds = %187
  %194 = load i32, i32* %10, align 4
  %195 = load i32, i32* @DW_AT_decl_file, align 4
  %196 = call i32 @dwarf_attrval_unsigned(i32 %194, i32 %195, i32* %14, i32* %19)
  %197 = load i32, i32* @DW_DLV_OK, align 4
  %198 = icmp eq i32 %196, %197
  br i1 %198, label %199, label %229

199:                                              ; preds = %193
  %200 = load i32, i32* %14, align 4
  %201 = icmp sgt i32 %200, 0
  br i1 %201, label %202, label %229

202:                                              ; preds = %199
  %203 = load i32, i32* %14, align 4
  %204 = sub nsw i32 %203, 1
  %205 = sext i32 %204 to i64
  %206 = load i64, i64* %12, align 8
  %207 = icmp slt i64 %205, %206
  br i1 %207, label %208, label %229

208:                                              ; preds = %202
  %209 = load i8**, i8*** %11, align 8
  %210 = load i32, i32* %14, align 4
  %211 = sub nsw i32 %210, 1
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i8*, i8** %209, i64 %212
  %214 = load i8*, i8** %213, align 8
  %215 = call i8* @strdup(i8* %214)
  %216 = bitcast i8* %215 to %struct.func_info_entry*
  %217 = load %struct.func_info_entry*, %struct.func_info_entry** %20, align 8
  %218 = getelementptr inbounds %struct.func_info_entry, %struct.func_info_entry* %217, i32 0, i32 3
  store %struct.func_info_entry* %216, %struct.func_info_entry** %218, align 8
  %219 = load %struct.func_info_entry*, %struct.func_info_entry** %20, align 8
  %220 = getelementptr inbounds %struct.func_info_entry, %struct.func_info_entry* %219, i32 0, i32 3
  %221 = load %struct.func_info_entry*, %struct.func_info_entry** %220, align 8
  %222 = icmp eq %struct.func_info_entry* %221, null
  br i1 %222, label %223, label %228

223:                                              ; preds = %208
  %224 = call i32 @warn(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %225 = load %struct.func_info_entry*, %struct.func_info_entry** %20, align 8
  %226 = bitcast %struct.func_info_entry* %225 to %struct.var_info_entry*
  %227 = call i32 @free(%struct.var_info_entry* %226)
  br label %293

228:                                              ; preds = %208
  br label %229

229:                                              ; preds = %228, %202, %199, %193
  %230 = load i32, i32* %10, align 4
  %231 = load i32, i32* @DW_AT_decl_line, align 4
  %232 = call i32 @dwarf_attrval_unsigned(i32 %230, i32 %231, i32* %14, i32* %19)
  %233 = load i32, i32* @DW_DLV_OK, align 4
  %234 = icmp eq i32 %232, %233
  br i1 %234, label %235, label %239

235:                                              ; preds = %229
  %236 = load i32, i32* %14, align 4
  %237 = load %struct.func_info_entry*, %struct.func_info_entry** %20, align 8
  %238 = getelementptr inbounds %struct.func_info_entry, %struct.func_info_entry* %237, i32 0, i32 0
  store i32 %236, i32* %238, align 8
  br label %239

239:                                              ; preds = %235, %229
  %240 = load i32, i32* %7, align 4
  %241 = load i32, i32* %10, align 4
  %242 = call i8* @find_object_name(i32 %240, i32 %241)
  %243 = bitcast i8* %242 to i32*
  %244 = load %struct.func_info_entry*, %struct.func_info_entry** %20, align 8
  %245 = getelementptr inbounds %struct.func_info_entry, %struct.func_info_entry* %244, i32 0, i32 4
  store i32* %243, i32** %245, align 8
  %246 = load %struct.func_info_entry*, %struct.func_info_entry** %20, align 8
  %247 = getelementptr inbounds %struct.func_info_entry, %struct.func_info_entry* %246, i32 0, i32 4
  %248 = load i32*, i32** %247, align 8
  %249 = icmp eq i32* %248, null
  br i1 %249, label %250, label %265

250:                                              ; preds = %239
  %251 = load %struct.func_info_entry*, %struct.func_info_entry** %20, align 8
  %252 = getelementptr inbounds %struct.func_info_entry, %struct.func_info_entry* %251, i32 0, i32 3
  %253 = load %struct.func_info_entry*, %struct.func_info_entry** %252, align 8
  %254 = icmp ne %struct.func_info_entry* %253, null
  br i1 %254, label %255, label %261

255:                                              ; preds = %250
  %256 = load %struct.func_info_entry*, %struct.func_info_entry** %20, align 8
  %257 = getelementptr inbounds %struct.func_info_entry, %struct.func_info_entry* %256, i32 0, i32 3
  %258 = load %struct.func_info_entry*, %struct.func_info_entry** %257, align 8
  %259 = bitcast %struct.func_info_entry* %258 to %struct.var_info_entry*
  %260 = call i32 @free(%struct.var_info_entry* %259)
  br label %261

261:                                              ; preds = %255, %250
  %262 = load %struct.func_info_entry*, %struct.func_info_entry** %20, align 8
  %263 = bitcast %struct.func_info_entry* %262 to %struct.var_info_entry*
  %264 = call i32 @free(%struct.var_info_entry* %263)
  br label %293

265:                                              ; preds = %239
  %266 = load i32, i32* %10, align 4
  %267 = load i32, i32* @DW_AT_low_pc, align 4
  %268 = call i32 @dwarf_attrval_unsigned(i32 %266, i32 %267, i32* %14, i32* %19)
  %269 = load i32, i32* @DW_DLV_OK, align 4
  %270 = icmp eq i32 %268, %269
  br i1 %270, label %271, label %275

271:                                              ; preds = %265
  %272 = load i32, i32* %14, align 4
  %273 = load %struct.func_info_entry*, %struct.func_info_entry** %20, align 8
  %274 = getelementptr inbounds %struct.func_info_entry, %struct.func_info_entry* %273, i32 0, i32 1
  store i32 %272, i32* %274, align 4
  br label %275

275:                                              ; preds = %271, %265
  %276 = load i32, i32* %10, align 4
  %277 = load i32, i32* @DW_AT_high_pc, align 4
  %278 = call i32 @dwarf_attrval_unsigned(i32 %276, i32 %277, i32* %14, i32* %19)
  %279 = load i32, i32* @DW_DLV_OK, align 4
  %280 = icmp eq i32 %278, %279
  br i1 %280, label %281, label %285

281:                                              ; preds = %275
  %282 = load i32, i32* %14, align 4
  %283 = load %struct.func_info_entry*, %struct.func_info_entry** %20, align 8
  %284 = getelementptr inbounds %struct.func_info_entry, %struct.func_info_entry* %283, i32 0, i32 2
  store i32 %282, i32* %284, align 8
  br label %285

285:                                              ; preds = %281, %275
  %286 = load %struct.func_info_head*, %struct.func_info_head** %8, align 8
  %287 = bitcast %struct.func_info_head* %286 to %struct.var_info_head*
  %288 = load %struct.func_info_entry*, %struct.func_info_entry** %20, align 8
  %289 = bitcast %struct.func_info_entry* %288 to %struct.var_info_entry*
  %290 = load i32, i32* @entries, align 4
  %291 = call i32 @SLIST_INSERT_HEAD(%struct.var_info_head* %287, %struct.var_info_entry* %289, i32 %290)
  br label %292

292:                                              ; preds = %285, %182
  br label %293

293:                                              ; preds = %292, %261, %223, %191, %153, %117, %85, %81, %71, %61, %47, %27
  %294 = load i32, i32* %10, align 4
  %295 = call i32 @dwarf_child(i32 %294, i32* %18, i32* %19)
  store i32 %295, i32* %22, align 4
  %296 = load i32, i32* %22, align 4
  %297 = load i32, i32* @DW_DLV_ERROR, align 4
  %298 = icmp eq i32 %296, %297
  br i1 %298, label %299, label %303

299:                                              ; preds = %293
  %300 = load i32, i32* %19, align 4
  %301 = call i32 @dwarf_errmsg(i32 %300)
  %302 = call i32 @warnx(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %301)
  br label %315

303:                                              ; preds = %293
  %304 = load i32, i32* %22, align 4
  %305 = load i32, i32* @DW_DLV_OK, align 4
  %306 = icmp eq i32 %304, %305
  br i1 %306, label %307, label %314

307:                                              ; preds = %303
  %308 = load i32, i32* %7, align 4
  %309 = load %struct.func_info_head*, %struct.func_info_head** %8, align 8
  %310 = load %struct.var_info_head*, %struct.var_info_head** %9, align 8
  %311 = load i32, i32* %18, align 4
  %312 = load i8**, i8*** %11, align 8
  %313 = load i64, i64* %12, align 8
  call void @search_line_attr(i32 %308, %struct.func_info_head* %309, %struct.var_info_head* %310, i32 %311, i8** %312, i64 %313)
  br label %314

314:                                              ; preds = %307, %303
  br label %315

315:                                              ; preds = %314, %299
  %316 = load i32, i32* %7, align 4
  %317 = load i32, i32* %10, align 4
  %318 = call i32 @dwarf_siblingof(i32 %316, i32 %317, i32* %18, i32* %19)
  store i32 %318, i32* %22, align 4
  %319 = load i32, i32* %22, align 4
  %320 = load i32, i32* @DW_DLV_ERROR, align 4
  %321 = icmp eq i32 %319, %320
  br i1 %321, label %322, label %326

322:                                              ; preds = %315
  %323 = load i32, i32* %19, align 4
  %324 = call i32 @dwarf_errmsg(i32 %323)
  %325 = call i32 @warnx(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %324)
  br label %338

326:                                              ; preds = %315
  %327 = load i32, i32* %22, align 4
  %328 = load i32, i32* @DW_DLV_OK, align 4
  %329 = icmp eq i32 %327, %328
  br i1 %329, label %330, label %337

330:                                              ; preds = %326
  %331 = load i32, i32* %7, align 4
  %332 = load %struct.func_info_head*, %struct.func_info_head** %8, align 8
  %333 = load %struct.var_info_head*, %struct.var_info_head** %9, align 8
  %334 = load i32, i32* %18, align 4
  %335 = load i8**, i8*** %11, align 8
  %336 = load i64, i64* %12, align 8
  call void @search_line_attr(i32 %331, %struct.func_info_head* %332, %struct.var_info_head* %333, i32 %334, i8** %335, i64 %336)
  br label %337

337:                                              ; preds = %330, %326
  br label %338

338:                                              ; preds = %337, %322
  %339 = load i32, i32* %7, align 4
  %340 = load i32, i32* %10, align 4
  %341 = load i32, i32* @DW_DLA_DIE, align 4
  %342 = call i32 @dwarf_dealloc(i32 %339, i32 %340, i32 %341)
  ret void
}

declare dso_local i32 @dwarf_tag(i32, i64*, i32*) #1

declare dso_local i32 @warnx(i8*, i32) #1

declare dso_local i32 @dwarf_errmsg(i32) #1

declare dso_local i32 @dwarf_attrval_flag(i32, i32, i64*, i32*) #1

declare dso_local %struct.var_info_entry* @calloc(i32, i32) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @dwarf_attrval_unsigned(i32, i32, i32*, i32*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @free(%struct.var_info_entry*) #1

declare dso_local i8* @find_object_name(i32, i32) #1

declare dso_local i32 @dwarf_attr(i32, i32, i32*, i32*) #1

declare dso_local i32 @dwarf_formblock(i32, %struct.TYPE_4__**, i32*) #1

declare dso_local i32 @get_block_value(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @SLIST_INSERT_HEAD(%struct.var_info_head*, %struct.var_info_entry*, i32) #1

declare dso_local i32 @dwarf_child(i32, i32*, i32*) #1

declare dso_local i32 @dwarf_siblingof(i32, i32, i32*, i32*) #1

declare dso_local i32 @dwarf_dealloc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
