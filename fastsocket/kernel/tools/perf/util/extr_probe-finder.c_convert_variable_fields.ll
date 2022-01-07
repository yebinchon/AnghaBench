; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_probe-finder.c_convert_variable_fields.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_probe-finder.c_convert_variable_fields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_probe_arg_field = type { i8*, i32, %struct.perf_probe_arg_field*, i64 }
%struct.probe_trace_arg_ref = type { i32, %struct.probe_trace_arg_ref* }

@.str = private unnamed_addr constant [21 x i8] c"converting %s in %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed to get the type of %s.\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Var real type: (%x)\0A\00", align 1
@DW_TAG_array_type = common dso_local global i32 0, align 4
@DW_TAG_pointer_type = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"Array real type: (%x)\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [45 x i8] c"Semantic error: %s must be referred by '->'\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DW_TAG_structure_type = common dso_local global i32 0, align 4
@DW_TAG_union_type = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [42 x i8] c"%s is not a data structure nor an union.\0A\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"Semantic error: %s is not a pointor nor array.\0A\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"Semantic error: %s must be referred by '.'\0A\00", align 1
@.str.8 = private unnamed_addr constant [47 x i8] c"Structure on a register is not supported yet.\0A\00", align 1
@ENOTSUP = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [31 x i8] c"%s(tyep:%s) has no member %s.\0A\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"Failed to get the offset of %s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, %struct.perf_probe_arg_field*, %struct.probe_trace_arg_ref**, i32*)* @convert_variable_fields to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert_variable_fields(i32* %0, i8* %1, %struct.perf_probe_arg_field* %2, %struct.probe_trace_arg_ref** %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.perf_probe_arg_field*, align 8
  %10 = alloca %struct.probe_trace_arg_ref**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.probe_trace_arg_ref*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.perf_probe_arg_field* %2, %struct.perf_probe_arg_field** %9, align 8
  store %struct.probe_trace_arg_ref** %3, %struct.probe_trace_arg_ref*** %10, align 8
  store i32* %4, i32** %11, align 8
  %17 = load %struct.probe_trace_arg_ref**, %struct.probe_trace_arg_ref*** %10, align 8
  %18 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %17, align 8
  store %struct.probe_trace_arg_ref* %18, %struct.probe_trace_arg_ref** %12, align 8
  %19 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %9, align 8
  %20 = getelementptr inbounds %struct.perf_probe_arg_field, %struct.perf_probe_arg_field* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = call i32 @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %21, i8* %22)
  %24 = load i32*, i32** %7, align 8
  %25 = call i32* @die_get_real_type(i32* %24, i32* %13)
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %5
  %28 = load i8*, i8** %8, align 8
  %29 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %28)
  %30 = load i32, i32* @ENOENT, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %6, align 4
  br label %276

32:                                               ; preds = %5
  %33 = call i64 @dwarf_dieoffset(i32* %13)
  %34 = trunc i64 %33 to i32
  %35 = call i32 @pr_debug2(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %34)
  %36 = call i32 @dwarf_tag(i32* %13)
  store i32 %36, i32* %16, align 4
  %37 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %9, align 8
  %38 = getelementptr inbounds %struct.perf_probe_arg_field, %struct.perf_probe_arg_field* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 0
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 91
  br i1 %43, label %44, label %114

44:                                               ; preds = %32
  %45 = load i32, i32* %16, align 4
  %46 = load i32, i32* @DW_TAG_array_type, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* %16, align 4
  %50 = load i32, i32* @DW_TAG_pointer_type, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %114

52:                                               ; preds = %48, %44
  %53 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %9, align 8
  %54 = getelementptr inbounds %struct.perf_probe_arg_field, %struct.perf_probe_arg_field* %53, i32 0, i32 2
  %55 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %54, align 8
  %56 = icmp ne %struct.perf_probe_arg_field* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i32*, i32** %11, align 8
  %59 = call i32 @memcpy(i32* %58, i32* %13, i32 4)
  br label %60

60:                                               ; preds = %57, %52
  %61 = call i32* @die_get_real_type(i32* %13, i32* %13)
  %62 = icmp eq i32* %61, null
  br i1 %62, label %63, label %68

63:                                               ; preds = %60
  %64 = load i8*, i8** %8, align 8
  %65 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %64)
  %66 = load i32, i32* @ENOENT, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %6, align 4
  br label %276

68:                                               ; preds = %60
  %69 = call i64 @dwarf_dieoffset(i32* %13)
  %70 = trunc i64 %69 to i32
  %71 = call i32 @pr_debug2(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* %16, align 4
  %73 = load i32, i32* @DW_TAG_pointer_type, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %95

75:                                               ; preds = %68
  %76 = call %struct.probe_trace_arg_ref* @zalloc(i32 16)
  store %struct.probe_trace_arg_ref* %76, %struct.probe_trace_arg_ref** %12, align 8
  %77 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %12, align 8
  %78 = icmp eq %struct.probe_trace_arg_ref* %77, null
  br i1 %78, label %79, label %82

79:                                               ; preds = %75
  %80 = load i32, i32* @ENOMEM, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %6, align 4
  br label %276

82:                                               ; preds = %75
  %83 = load %struct.probe_trace_arg_ref**, %struct.probe_trace_arg_ref*** %10, align 8
  %84 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %83, align 8
  %85 = icmp ne %struct.probe_trace_arg_ref* %84, null
  br i1 %85, label %86, label %91

86:                                               ; preds = %82
  %87 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %12, align 8
  %88 = load %struct.probe_trace_arg_ref**, %struct.probe_trace_arg_ref*** %10, align 8
  %89 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %88, align 8
  %90 = getelementptr inbounds %struct.probe_trace_arg_ref, %struct.probe_trace_arg_ref* %89, i32 0, i32 1
  store %struct.probe_trace_arg_ref* %87, %struct.probe_trace_arg_ref** %90, align 8
  br label %94

91:                                               ; preds = %82
  %92 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %12, align 8
  %93 = load %struct.probe_trace_arg_ref**, %struct.probe_trace_arg_ref*** %10, align 8
  store %struct.probe_trace_arg_ref* %92, %struct.probe_trace_arg_ref** %93, align 8
  br label %94

94:                                               ; preds = %91, %86
  br label %95

95:                                               ; preds = %94, %68
  %96 = call i32 @dwarf_bytesize(i32* %13)
  %97 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %9, align 8
  %98 = getelementptr inbounds %struct.perf_probe_arg_field, %struct.perf_probe_arg_field* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = mul nsw i32 %96, %99
  %101 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %12, align 8
  %102 = getelementptr inbounds %struct.probe_trace_arg_ref, %struct.probe_trace_arg_ref* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = add nsw i32 %103, %100
  store i32 %104, i32* %102, align 8
  %105 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %9, align 8
  %106 = getelementptr inbounds %struct.perf_probe_arg_field, %struct.perf_probe_arg_field* %105, i32 0, i32 2
  %107 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %106, align 8
  %108 = icmp ne %struct.perf_probe_arg_field* %107, null
  br i1 %108, label %113, label %109

109:                                              ; preds = %95
  %110 = load i32*, i32** %11, align 8
  %111 = load i32*, i32** %7, align 8
  %112 = call i32 @memcpy(i32* %110, i32* %111, i32 4)
  br label %113

113:                                              ; preds = %109, %95
  br label %260

114:                                              ; preds = %48, %32
  %115 = load i32, i32* %16, align 4
  %116 = load i32, i32* @DW_TAG_pointer_type, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %172

118:                                              ; preds = %114
  %119 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %9, align 8
  %120 = getelementptr inbounds %struct.perf_probe_arg_field, %struct.perf_probe_arg_field* %119, i32 0, i32 3
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %130, label %123

123:                                              ; preds = %118
  %124 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %9, align 8
  %125 = getelementptr inbounds %struct.perf_probe_arg_field, %struct.perf_probe_arg_field* %124, i32 0, i32 0
  %126 = load i8*, i8** %125, align 8
  %127 = call i32 @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i8* %126)
  %128 = load i32, i32* @EINVAL, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %6, align 4
  br label %276

130:                                              ; preds = %118
  %131 = call i32* @die_get_real_type(i32* %13, i32* %13)
  %132 = icmp eq i32* %131, null
  br i1 %132, label %133, label %138

133:                                              ; preds = %130
  %134 = load i8*, i8** %8, align 8
  %135 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %134)
  %136 = load i32, i32* @ENOENT, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %6, align 4
  br label %276

138:                                              ; preds = %130
  %139 = call i32 @dwarf_tag(i32* %13)
  store i32 %139, i32* %16, align 4
  %140 = load i32, i32* %16, align 4
  %141 = load i32, i32* @DW_TAG_structure_type, align 4
  %142 = icmp ne i32 %140, %141
  br i1 %142, label %143, label %152

143:                                              ; preds = %138
  %144 = load i32, i32* %16, align 4
  %145 = load i32, i32* @DW_TAG_union_type, align 4
  %146 = icmp ne i32 %144, %145
  br i1 %146, label %147, label %152

147:                                              ; preds = %143
  %148 = load i8*, i8** %8, align 8
  %149 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i8* %148)
  %150 = load i32, i32* @EINVAL, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %6, align 4
  br label %276

152:                                              ; preds = %143, %138
  %153 = call %struct.probe_trace_arg_ref* @zalloc(i32 16)
  store %struct.probe_trace_arg_ref* %153, %struct.probe_trace_arg_ref** %12, align 8
  %154 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %12, align 8
  %155 = icmp eq %struct.probe_trace_arg_ref* %154, null
  br i1 %155, label %156, label %159

156:                                              ; preds = %152
  %157 = load i32, i32* @ENOMEM, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %6, align 4
  br label %276

159:                                              ; preds = %152
  %160 = load %struct.probe_trace_arg_ref**, %struct.probe_trace_arg_ref*** %10, align 8
  %161 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %160, align 8
  %162 = icmp ne %struct.probe_trace_arg_ref* %161, null
  br i1 %162, label %163, label %168

163:                                              ; preds = %159
  %164 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %12, align 8
  %165 = load %struct.probe_trace_arg_ref**, %struct.probe_trace_arg_ref*** %10, align 8
  %166 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %165, align 8
  %167 = getelementptr inbounds %struct.probe_trace_arg_ref, %struct.probe_trace_arg_ref* %166, i32 0, i32 1
  store %struct.probe_trace_arg_ref* %164, %struct.probe_trace_arg_ref** %167, align 8
  br label %171

168:                                              ; preds = %159
  %169 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %12, align 8
  %170 = load %struct.probe_trace_arg_ref**, %struct.probe_trace_arg_ref*** %10, align 8
  store %struct.probe_trace_arg_ref* %169, %struct.probe_trace_arg_ref** %170, align 8
  br label %171

171:                                              ; preds = %168, %163
  br label %218

172:                                              ; preds = %114
  %173 = load i32, i32* %16, align 4
  %174 = load i32, i32* @DW_TAG_structure_type, align 4
  %175 = icmp ne i32 %173, %174
  br i1 %175, label %176, label %185

176:                                              ; preds = %172
  %177 = load i32, i32* %16, align 4
  %178 = load i32, i32* @DW_TAG_union_type, align 4
  %179 = icmp ne i32 %177, %178
  br i1 %179, label %180, label %185

180:                                              ; preds = %176
  %181 = load i8*, i8** %8, align 8
  %182 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i8* %181)
  %183 = load i32, i32* @EINVAL, align 4
  %184 = sub nsw i32 0, %183
  store i32 %184, i32* %6, align 4
  br label %276

185:                                              ; preds = %176, %172
  %186 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %9, align 8
  %187 = getelementptr inbounds %struct.perf_probe_arg_field, %struct.perf_probe_arg_field* %186, i32 0, i32 0
  %188 = load i8*, i8** %187, align 8
  %189 = getelementptr inbounds i8, i8* %188, i64 0
  %190 = load i8, i8* %189, align 1
  %191 = sext i8 %190 to i32
  %192 = icmp eq i32 %191, 91
  br i1 %192, label %193, label %198

193:                                              ; preds = %185
  %194 = load i8*, i8** %8, align 8
  %195 = call i32 @pr_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0), i8* %194)
  %196 = load i32, i32* @EINVAL, align 4
  %197 = sub nsw i32 0, %196
  store i32 %197, i32* %6, align 4
  br label %276

198:                                              ; preds = %185
  %199 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %9, align 8
  %200 = getelementptr inbounds %struct.perf_probe_arg_field, %struct.perf_probe_arg_field* %199, i32 0, i32 3
  %201 = load i64, i64* %200, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %210

203:                                              ; preds = %198
  %204 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %9, align 8
  %205 = getelementptr inbounds %struct.perf_probe_arg_field, %struct.perf_probe_arg_field* %204, i32 0, i32 0
  %206 = load i8*, i8** %205, align 8
  %207 = call i32 @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0), i8* %206)
  %208 = load i32, i32* @EINVAL, align 4
  %209 = sub nsw i32 0, %208
  store i32 %209, i32* %6, align 4
  br label %276

210:                                              ; preds = %198
  %211 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %12, align 8
  %212 = icmp ne %struct.probe_trace_arg_ref* %211, null
  br i1 %212, label %217, label %213

213:                                              ; preds = %210
  %214 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.8, i64 0, i64 0))
  %215 = load i32, i32* @ENOTSUP, align 4
  %216 = sub nsw i32 0, %215
  store i32 %216, i32* %6, align 4
  br label %276

217:                                              ; preds = %210
  br label %218

218:                                              ; preds = %217, %171
  br label %219

219:                                              ; preds = %218
  %220 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %9, align 8
  %221 = getelementptr inbounds %struct.perf_probe_arg_field, %struct.perf_probe_arg_field* %220, i32 0, i32 0
  %222 = load i8*, i8** %221, align 8
  %223 = load i32*, i32** %11, align 8
  %224 = call i32* @die_find_member(i32* %13, i8* %222, i32* %223)
  %225 = icmp eq i32* %224, null
  br i1 %225, label %226, label %235

226:                                              ; preds = %219
  %227 = load i8*, i8** %8, align 8
  %228 = call i32 @dwarf_diename(i32* %13)
  %229 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %9, align 8
  %230 = getelementptr inbounds %struct.perf_probe_arg_field, %struct.perf_probe_arg_field* %229, i32 0, i32 0
  %231 = load i8*, i8** %230, align 8
  %232 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i8* %227, i32 %228, i8* %231)
  %233 = load i32, i32* @EINVAL, align 4
  %234 = sub nsw i32 0, %233
  store i32 %234, i32* %6, align 4
  br label %276

235:                                              ; preds = %219
  %236 = load i32, i32* %16, align 4
  %237 = load i32, i32* @DW_TAG_union_type, align 4
  %238 = icmp eq i32 %236, %237
  br i1 %238, label %239, label %240

239:                                              ; preds = %235
  store i64 0, i64* %14, align 8
  br label %252

240:                                              ; preds = %235
  %241 = load i32*, i32** %11, align 8
  %242 = call i32 @die_get_data_member_location(i32* %241, i64* %14)
  store i32 %242, i32* %15, align 4
  %243 = load i32, i32* %15, align 4
  %244 = icmp slt i32 %243, 0
  br i1 %244, label %245, label %251

245:                                              ; preds = %240
  %246 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %9, align 8
  %247 = getelementptr inbounds %struct.perf_probe_arg_field, %struct.perf_probe_arg_field* %246, i32 0, i32 0
  %248 = load i8*, i8** %247, align 8
  %249 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i8* %248)
  %250 = load i32, i32* %15, align 4
  store i32 %250, i32* %6, align 4
  br label %276

251:                                              ; preds = %240
  br label %252

252:                                              ; preds = %251, %239
  %253 = load i64, i64* %14, align 8
  %254 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %12, align 8
  %255 = getelementptr inbounds %struct.probe_trace_arg_ref, %struct.probe_trace_arg_ref* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = sext i32 %256 to i64
  %258 = add nsw i64 %257, %253
  %259 = trunc i64 %258 to i32
  store i32 %259, i32* %255, align 8
  br label %260

260:                                              ; preds = %252, %113
  %261 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %9, align 8
  %262 = getelementptr inbounds %struct.perf_probe_arg_field, %struct.perf_probe_arg_field* %261, i32 0, i32 2
  %263 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %262, align 8
  %264 = icmp ne %struct.perf_probe_arg_field* %263, null
  br i1 %264, label %265, label %275

265:                                              ; preds = %260
  %266 = load i32*, i32** %11, align 8
  %267 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %9, align 8
  %268 = getelementptr inbounds %struct.perf_probe_arg_field, %struct.perf_probe_arg_field* %267, i32 0, i32 0
  %269 = load i8*, i8** %268, align 8
  %270 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %9, align 8
  %271 = getelementptr inbounds %struct.perf_probe_arg_field, %struct.perf_probe_arg_field* %270, i32 0, i32 2
  %272 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %271, align 8
  %273 = load i32*, i32** %11, align 8
  %274 = call i32 @convert_variable_fields(i32* %266, i8* %269, %struct.perf_probe_arg_field* %272, %struct.probe_trace_arg_ref** %12, i32* %273)
  store i32 %274, i32* %6, align 4
  br label %276

275:                                              ; preds = %260
  store i32 0, i32* %6, align 4
  br label %276

276:                                              ; preds = %275, %265, %245, %226, %213, %203, %193, %180, %156, %147, %133, %123, %79, %63, %27
  %277 = load i32, i32* %6, align 4
  ret i32 %277
}

declare dso_local i32 @pr_debug(i8*, i8*, i8*) #1

declare dso_local i32* @die_get_real_type(i32*, i32*) #1

declare dso_local i32 @pr_warning(i8*, ...) #1

declare dso_local i32 @pr_debug2(i8*, i32) #1

declare dso_local i64 @dwarf_dieoffset(i32*) #1

declare dso_local i32 @dwarf_tag(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local %struct.probe_trace_arg_ref* @zalloc(i32) #1

declare dso_local i32 @dwarf_bytesize(i32*) #1

declare dso_local i32 @pr_err(i8*, i8*) #1

declare dso_local i32* @die_find_member(i32*, i8*, i32*) #1

declare dso_local i32 @dwarf_diename(i32*) #1

declare dso_local i32 @die_get_data_member_location(i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
