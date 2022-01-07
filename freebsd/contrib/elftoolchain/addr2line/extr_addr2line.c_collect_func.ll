; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/addr2line/extr_addr2line.c_collect_func.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/addr2line/extr_addr2line.c_collect_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Func = type { i8*, i8*, %struct.Func*, i8*, i8*, i64, i32*, i32* }
%struct.CU = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"dwarf_tag: %s\00", align 1
@DW_TAG_subprogram = common dso_local global i64 0, align 8
@DW_TAG_entry_point = common dso_local global i64 0, align 8
@DW_TAG_inlined_subroutine = common dso_local global i64 0, align 8
@DW_AT_ranges = common dso_local global i32 0, align 4
@DW_DLV_OK = common dso_local global i32 0, align 4
@DW_AT_low_pc = common dso_local global i32 0, align 4
@DW_AT_high_pc = common dso_local global i32 0, align 4
@DW_AT_name = common dso_local global i32 0, align 4
@DW_AT_abstract_origin = common dso_local global i32 0, align 4
@DW_AT_specification = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"calloc\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"strdup\00", align 1
@DW_AT_call_file = common dso_local global i32 0, align 4
@DW_AT_call_line = common dso_local global i32 0, align 4
@next = common dso_local global i32 0, align 4
@DW_DLV_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"dwarf_child: %s\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"dwarf_siblingof: %s\00", align 1
@DW_DLA_DIE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, %struct.Func*, %struct.CU*)* @collect_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @collect_func(i32 %0, i32* %1, %struct.Func* %2, %struct.CU* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.Func*, align 8
  %8 = alloca %struct.CU*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca %struct.Func*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store %struct.Func* %2, %struct.Func** %7, align 8
  store %struct.CU* %3, %struct.CU** %8, align 8
  store %struct.Func* null, %struct.Func** %23, align 8
  store i32* null, i32** %11, align 8
  store i32* null, i32** %10, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = call i64 @dwarf_tag(i32* %26, i64* %13, i32* %12)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %4
  %30 = load i32, i32* %12, align 4
  %31 = call i32 @dwarf_errmsg(i32 %30)
  %32 = call i32 @warnx(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %198

33:                                               ; preds = %4
  %34 = load i64, i64* %13, align 8
  %35 = load i64, i64* @DW_TAG_subprogram, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %45, label %37

37:                                               ; preds = %33
  %38 = load i64, i64* %13, align 8
  %39 = load i64, i64* @DW_TAG_entry_point, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = load i64, i64* %13, align 8
  %43 = load i64, i64* @DW_TAG_inlined_subroutine, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %197

45:                                               ; preds = %41, %37, %33
  store i32* null, i32** %21, align 8
  store i64 0, i64* %17, align 8
  store i32 0, i32* %24, align 4
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* @DW_AT_ranges, align 4
  %48 = call i32 @dwarf_attrval_unsigned(i32* %46, i32 %47, i8** %16, i32* %12)
  %49 = load i32, i32* @DW_DLV_OK, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %66

51:                                               ; preds = %45
  %52 = load i32, i32* %5, align 4
  %53 = load i8*, i8** %16, align 8
  %54 = ptrtoint i8* %53 to i32
  %55 = call i32 @dwarf_get_ranges(i32 %52, i32 %54, i32** %21, i64* %17, i32* null, i32* %12)
  %56 = load i32, i32* @DW_DLV_OK, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %51
  %59 = load i32*, i32** %21, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = load i64, i64* %17, align 8
  %63 = icmp sgt i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  store i32 1, i32* %24, align 4
  br label %85

65:                                               ; preds = %61, %58
  br label %66

66:                                               ; preds = %65, %51, %45
  %67 = load i32*, i32** %6, align 8
  %68 = load i32, i32* @DW_AT_low_pc, align 4
  %69 = call i32 @dwarf_attrval_unsigned(i32* %67, i32 %68, i8** %14, i32* %12)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %66
  %72 = load i32*, i32** %6, align 8
  %73 = load i32, i32* @DW_AT_high_pc, align 4
  %74 = call i32 @dwarf_attrval_unsigned(i32* %72, i32 %73, i8** %15, i32* %12)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %71, %66
  br label %198

77:                                               ; preds = %71
  %78 = load i32*, i32** %6, align 8
  %79 = load i8*, i8** %14, align 8
  %80 = call i32 @handle_high_pc(i32* %78, i8* %79, i8** %15)
  %81 = load i32, i32* @DW_DLV_OK, align 4
  %82 = icmp ne i32 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %77
  br label %198

84:                                               ; preds = %77
  br label %85

85:                                               ; preds = %84, %64
  %86 = load i32*, i32** %6, align 8
  %87 = load i32, i32* @DW_AT_name, align 4
  %88 = call i32 @dwarf_attrval_string(i32* %86, i32 %87, i8** %22, i32* %12)
  %89 = load i32, i32* @DW_DLV_OK, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %85
  br label %141

92:                                               ; preds = %85
  %93 = load i32*, i32** %6, align 8
  %94 = load i32, i32* @DW_AT_abstract_origin, align 4
  %95 = call i32 @dwarf_attr(i32* %93, i32 %94, i32* %19, i32* %12)
  %96 = load i32, i32* @DW_DLV_OK, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %116

98:                                               ; preds = %92
  %99 = load i32, i32* %19, align 4
  %100 = call i32 @dwarf_global_formref(i32 %99, i32* %18, i32* %12)
  %101 = load i32, i32* @DW_DLV_OK, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %116

103:                                              ; preds = %98
  %104 = load i32, i32* %5, align 4
  %105 = load i32, i32* %18, align 4
  %106 = call i32 @dwarf_offdie(i32 %104, i32 %105, i32** %10, i32* %12)
  %107 = load i32, i32* @DW_DLV_OK, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %116

109:                                              ; preds = %103
  %110 = load i32*, i32** %10, align 8
  %111 = load i32, i32* @DW_AT_name, align 4
  %112 = call i32 @dwarf_attrval_string(i32* %110, i32 %111, i8** %22, i32* %12)
  %113 = load i32, i32* @DW_DLV_OK, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %109
  br label %141

116:                                              ; preds = %109, %103, %98, %92
  %117 = load i32*, i32** %6, align 8
  %118 = load i32, i32* @DW_AT_specification, align 4
  %119 = call i32 @dwarf_attr(i32* %117, i32 %118, i32* %20, i32* %12)
  %120 = load i32, i32* @DW_DLV_OK, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %140

122:                                              ; preds = %116
  %123 = load i32, i32* %20, align 4
  %124 = call i32 @dwarf_global_formref(i32 %123, i32* %18, i32* %12)
  %125 = load i32, i32* @DW_DLV_OK, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %140

127:                                              ; preds = %122
  %128 = load i32, i32* %5, align 4
  %129 = load i32, i32* %18, align 4
  %130 = call i32 @dwarf_offdie(i32 %128, i32 %129, i32** %11, i32* %12)
  %131 = load i32, i32* @DW_DLV_OK, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %140

133:                                              ; preds = %127
  %134 = load i32*, i32** %11, align 8
  %135 = load i32, i32* @DW_AT_name, align 4
  %136 = call i32 @dwarf_attrval_string(i32* %134, i32 %135, i8** %22, i32* %12)
  %137 = load i32, i32* @DW_DLV_OK, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %133
  br label %141

140:                                              ; preds = %133, %127, %122, %116
  br label %198

141:                                              ; preds = %139, %115, %91
  %142 = call %struct.Func* @calloc(i32 1, i32 64)
  store %struct.Func* %142, %struct.Func** %23, align 8
  %143 = icmp eq %struct.Func* %142, null
  br i1 %143, label %144, label %147

144:                                              ; preds = %141
  %145 = load i32, i32* @EXIT_FAILURE, align 4
  %146 = call i32 @err(i32 %145, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %147

147:                                              ; preds = %144, %141
  %148 = load i8*, i8** %22, align 8
  %149 = call i32* @strdup(i8* %148)
  %150 = load %struct.Func*, %struct.Func** %23, align 8
  %151 = getelementptr inbounds %struct.Func, %struct.Func* %150, i32 0, i32 7
  store i32* %149, i32** %151, align 8
  %152 = icmp eq i32* %149, null
  br i1 %152, label %153, label %156

153:                                              ; preds = %147
  %154 = load i32, i32* @EXIT_FAILURE, align 4
  %155 = call i32 @err(i32 %154, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %156

156:                                              ; preds = %153, %147
  %157 = load i32, i32* %24, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %166

159:                                              ; preds = %156
  %160 = load i32*, i32** %21, align 8
  %161 = load %struct.Func*, %struct.Func** %23, align 8
  %162 = getelementptr inbounds %struct.Func, %struct.Func* %161, i32 0, i32 6
  store i32* %160, i32** %162, align 8
  %163 = load i64, i64* %17, align 8
  %164 = load %struct.Func*, %struct.Func** %23, align 8
  %165 = getelementptr inbounds %struct.Func, %struct.Func* %164, i32 0, i32 5
  store i64 %163, i64* %165, align 8
  br label %173

166:                                              ; preds = %156
  %167 = load i8*, i8** %14, align 8
  %168 = load %struct.Func*, %struct.Func** %23, align 8
  %169 = getelementptr inbounds %struct.Func, %struct.Func* %168, i32 0, i32 4
  store i8* %167, i8** %169, align 8
  %170 = load i8*, i8** %15, align 8
  %171 = load %struct.Func*, %struct.Func** %23, align 8
  %172 = getelementptr inbounds %struct.Func, %struct.Func* %171, i32 0, i32 3
  store i8* %170, i8** %172, align 8
  br label %173

173:                                              ; preds = %166, %159
  %174 = load i64, i64* %13, align 8
  %175 = load i64, i64* @DW_TAG_inlined_subroutine, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %177, label %191

177:                                              ; preds = %173
  %178 = load %struct.Func*, %struct.Func** %7, align 8
  %179 = load %struct.Func*, %struct.Func** %23, align 8
  %180 = getelementptr inbounds %struct.Func, %struct.Func* %179, i32 0, i32 2
  store %struct.Func* %178, %struct.Func** %180, align 8
  %181 = load i32*, i32** %6, align 8
  %182 = load i32, i32* @DW_AT_call_file, align 4
  %183 = load %struct.Func*, %struct.Func** %23, align 8
  %184 = getelementptr inbounds %struct.Func, %struct.Func* %183, i32 0, i32 0
  %185 = call i32 @dwarf_attrval_unsigned(i32* %181, i32 %182, i8** %184, i32* %12)
  %186 = load i32*, i32** %6, align 8
  %187 = load i32, i32* @DW_AT_call_line, align 4
  %188 = load %struct.Func*, %struct.Func** %23, align 8
  %189 = getelementptr inbounds %struct.Func, %struct.Func* %188, i32 0, i32 1
  %190 = call i32 @dwarf_attrval_unsigned(i32* %186, i32 %187, i8** %189, i32* %12)
  br label %191

191:                                              ; preds = %177, %173
  %192 = load %struct.CU*, %struct.CU** %8, align 8
  %193 = getelementptr inbounds %struct.CU, %struct.CU* %192, i32 0, i32 0
  %194 = load %struct.Func*, %struct.Func** %23, align 8
  %195 = load i32, i32* @next, align 4
  %196 = call i32 @STAILQ_INSERT_TAIL(i32* %193, %struct.Func* %194, i32 %195)
  br label %197

197:                                              ; preds = %191, %41
  br label %198

198:                                              ; preds = %197, %140, %83, %76, %29
  %199 = load i32*, i32** %6, align 8
  %200 = call i32 @dwarf_child(i32* %199, i32** %9, i32* %12)
  store i32 %200, i32* %25, align 4
  %201 = load i32, i32* %25, align 4
  %202 = load i32, i32* @DW_DLV_ERROR, align 4
  %203 = icmp eq i32 %201, %202
  br i1 %203, label %204, label %208

204:                                              ; preds = %198
  %205 = load i32, i32* %12, align 4
  %206 = call i32 @dwarf_errmsg(i32 %205)
  %207 = call i32 @warnx(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %206)
  br label %227

208:                                              ; preds = %198
  %209 = load i32, i32* %25, align 4
  %210 = load i32, i32* @DW_DLV_OK, align 4
  %211 = icmp eq i32 %209, %210
  br i1 %211, label %212, label %226

212:                                              ; preds = %208
  %213 = load %struct.Func*, %struct.Func** %23, align 8
  %214 = icmp ne %struct.Func* %213, null
  br i1 %214, label %215, label %220

215:                                              ; preds = %212
  %216 = load i32, i32* %5, align 4
  %217 = load i32*, i32** %9, align 8
  %218 = load %struct.Func*, %struct.Func** %23, align 8
  %219 = load %struct.CU*, %struct.CU** %8, align 8
  call void @collect_func(i32 %216, i32* %217, %struct.Func* %218, %struct.CU* %219)
  br label %225

220:                                              ; preds = %212
  %221 = load i32, i32* %5, align 4
  %222 = load i32*, i32** %9, align 8
  %223 = load %struct.Func*, %struct.Func** %7, align 8
  %224 = load %struct.CU*, %struct.CU** %8, align 8
  call void @collect_func(i32 %221, i32* %222, %struct.Func* %223, %struct.CU* %224)
  br label %225

225:                                              ; preds = %220, %215
  br label %226

226:                                              ; preds = %225, %208
  br label %227

227:                                              ; preds = %226, %204
  %228 = load i32, i32* %5, align 4
  %229 = load i32*, i32** %6, align 8
  %230 = call i32 @dwarf_siblingof(i32 %228, i32* %229, i32** %9, i32* %12)
  store i32 %230, i32* %25, align 4
  %231 = load i32, i32* %25, align 4
  %232 = load i32, i32* @DW_DLV_ERROR, align 4
  %233 = icmp eq i32 %231, %232
  br i1 %233, label %234, label %238

234:                                              ; preds = %227
  %235 = load i32, i32* %12, align 4
  %236 = call i32 @dwarf_errmsg(i32 %235)
  %237 = call i32 @warnx(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %236)
  br label %248

238:                                              ; preds = %227
  %239 = load i32, i32* %25, align 4
  %240 = load i32, i32* @DW_DLV_OK, align 4
  %241 = icmp eq i32 %239, %240
  br i1 %241, label %242, label %247

242:                                              ; preds = %238
  %243 = load i32, i32* %5, align 4
  %244 = load i32*, i32** %9, align 8
  %245 = load %struct.Func*, %struct.Func** %7, align 8
  %246 = load %struct.CU*, %struct.CU** %8, align 8
  call void @collect_func(i32 %243, i32* %244, %struct.Func* %245, %struct.CU* %246)
  br label %247

247:                                              ; preds = %242, %238
  br label %248

248:                                              ; preds = %247, %234
  %249 = load i32, i32* %5, align 4
  %250 = load i32*, i32** %6, align 8
  %251 = load i32, i32* @DW_DLA_DIE, align 4
  %252 = call i32 @dwarf_dealloc(i32 %249, i32* %250, i32 %251)
  %253 = load i32*, i32** %10, align 8
  %254 = icmp ne i32* %253, null
  br i1 %254, label %255, label %260

255:                                              ; preds = %248
  %256 = load i32, i32* %5, align 4
  %257 = load i32*, i32** %10, align 8
  %258 = load i32, i32* @DW_DLA_DIE, align 4
  %259 = call i32 @dwarf_dealloc(i32 %256, i32* %257, i32 %258)
  br label %260

260:                                              ; preds = %255, %248
  %261 = load i32*, i32** %11, align 8
  %262 = icmp ne i32* %261, null
  br i1 %262, label %263, label %268

263:                                              ; preds = %260
  %264 = load i32, i32* %5, align 4
  %265 = load i32*, i32** %11, align 8
  %266 = load i32, i32* @DW_DLA_DIE, align 4
  %267 = call i32 @dwarf_dealloc(i32 %264, i32* %265, i32 %266)
  br label %268

268:                                              ; preds = %263, %260
  ret void
}

declare dso_local i64 @dwarf_tag(i32*, i64*, i32*) #1

declare dso_local i32 @warnx(i8*, i32) #1

declare dso_local i32 @dwarf_errmsg(i32) #1

declare dso_local i32 @dwarf_attrval_unsigned(i32*, i32, i8**, i32*) #1

declare dso_local i32 @dwarf_get_ranges(i32, i32, i32**, i64*, i32*, i32*) #1

declare dso_local i32 @handle_high_pc(i32*, i8*, i8**) #1

declare dso_local i32 @dwarf_attrval_string(i32*, i32, i8**, i32*) #1

declare dso_local i32 @dwarf_attr(i32*, i32, i32*, i32*) #1

declare dso_local i32 @dwarf_global_formref(i32, i32*, i32*) #1

declare dso_local i32 @dwarf_offdie(i32, i32, i32**, i32*) #1

declare dso_local %struct.Func* @calloc(i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32* @strdup(i8*) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.Func*, i32) #1

declare dso_local i32 @dwarf_child(i32*, i32**, i32*) #1

declare dso_local i32 @dwarf_siblingof(i32, i32*, i32**, i32*) #1

declare dso_local i32 @dwarf_dealloc(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
