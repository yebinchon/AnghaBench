; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ieee.c_write_ieee_debugging_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ieee.c_write_ieee_debugging_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee_handle = type { i32, i32, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_10__, %struct.TYPE_10__, i8*, %struct.TYPE_10__, i32*, %struct.TYPE_10__, %struct.TYPE_10__, %struct.TYPE_10__, %struct.TYPE_10__, %struct.TYPE_10__, i32* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { %struct.ieee_buf* }
%struct.ieee_buf = type { i64, i32, %struct.ieee_buf* }

@ieee_name_type_newfunc = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@ieee_fns = common dso_local global i32 0, align 4
@ieee_write_undefined_tag = common dso_local global i32 0, align 4
@ieee_nn_record = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ieee_ty_record_enum = common dso_local global i64 0, align 8
@builtin_void = common dso_local global i64 0, align 8
@ieee_be_record_enum = common dso_local global i64 0, align 8
@ieee_add_bb11_blocks = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c".debug\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"bfd_make_section\00", align 1
@SEC_DEBUGGING = common dso_local global i32 0, align 4
@SEC_HAS_CONTENTS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"bfd_set_section_flags\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"bfd_set_section_size\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"bfd_set_section_contents\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"%s: %s: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @write_ieee_debugging_info(i32* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ieee_handle, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ieee_buf*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = call i32 @memset(%struct.ieee_handle* %6, i32 0, i32 104)
  %13 = load i32*, i32** %4, align 8
  %14 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %6, i32 0, i32 14
  store i32* %13, i32** %14, align 8
  %15 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %6, i32 0, i32 0
  store i32 256, i32* %15, align 8
  %16 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %6, i32 0, i32 1
  store i32 32, i32* %16, align 4
  %17 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %6, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i32, i32* @ieee_name_type_newfunc, align 4
  %20 = call i32 @bfd_hash_table_init(i32* %18, i32 %19, i32 4)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %6, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i32, i32* @ieee_name_type_newfunc, align 4
  %26 = call i32 @bfd_hash_table_init(i32* %24, i32 %25, i32 4)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %22, %2
  %29 = load i8*, i8** @FALSE, align 8
  store i8* %29, i8** %3, align 8
  br label %308

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %6, i32 0, i32 7
  %32 = call i32 @ieee_init_buffer(%struct.ieee_handle* %6, %struct.TYPE_10__* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %62

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %6, i32 0, i32 4
  %36 = call i32 @ieee_init_buffer(%struct.ieee_handle* %6, %struct.TYPE_10__* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %62

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %6, i32 0, i32 13
  %40 = call i32 @ieee_init_buffer(%struct.ieee_handle* %6, %struct.TYPE_10__* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %62

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %6, i32 0, i32 5
  %44 = call i32 @ieee_init_buffer(%struct.ieee_handle* %6, %struct.TYPE_10__* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %62

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %6, i32 0, i32 12
  %48 = call i32 @ieee_init_buffer(%struct.ieee_handle* %6, %struct.TYPE_10__* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %6, i32 0, i32 11
  %52 = call i32 @ieee_init_buffer(%struct.ieee_handle* %6, %struct.TYPE_10__* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %6, i32 0, i32 10
  %56 = call i32 @ieee_init_buffer(%struct.ieee_handle* %6, %struct.TYPE_10__* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %6, i32 0, i32 9
  %60 = call i32 @ieee_init_buffer(%struct.ieee_handle* %6, %struct.TYPE_10__* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %58, %54, %50, %46, %42, %38, %34, %30
  %63 = load i8*, i8** @FALSE, align 8
  store i8* %63, i8** %3, align 8
  br label %308

64:                                               ; preds = %58
  %65 = load i8*, i8** %5, align 8
  %66 = bitcast %struct.ieee_handle* %6 to i8*
  %67 = call i32 @debug_write(i8* %65, i32* @ieee_fns, i8* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %64
  %70 = load i8*, i8** @FALSE, align 8
  store i8* %70, i8** %3, align 8
  br label %308

71:                                               ; preds = %64
  %72 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %6, i32 0, i32 8
  %73 = load i32*, i32** %72, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %81

75:                                               ; preds = %71
  %76 = call i32 @ieee_finish_compilation_unit(%struct.ieee_handle* %6)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %75
  %79 = load i8*, i8** @FALSE, align 8
  store i8* %79, i8** %3, align 8
  br label %308

80:                                               ; preds = %75
  br label %81

81:                                               ; preds = %80, %71
  %82 = load i8*, i8** @FALSE, align 8
  %83 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %6, i32 0, i32 6
  store i8* %82, i8** %83, align 8
  %84 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %6, i32 0, i32 2
  %85 = load i32, i32* @ieee_write_undefined_tag, align 4
  %86 = bitcast %struct.ieee_handle* %6 to i8*
  %87 = call i32 @ieee_name_type_hash_traverse(%struct.TYPE_9__* %84, i32 %85, i8* %86)
  %88 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %6, i32 0, i32 6
  %89 = load i8*, i8** %88, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %91, label %93

91:                                               ; preds = %81
  %92 = load i8*, i8** @FALSE, align 8
  store i8* %92, i8** %3, align 8
  br label %308

93:                                               ; preds = %81
  %94 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %6, i32 0, i32 7
  %95 = call i64 @ieee_buffer_emptyp(%struct.TYPE_10__* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %160, label %97

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %6, i32 0, i32 7
  %99 = call i32 @ieee_change_buffer(%struct.ieee_handle* %6, %struct.TYPE_10__* %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %146

101:                                              ; preds = %97
  %102 = load i64, i64* @ieee_nn_record, align 8
  %103 = trunc i64 %102 to i32
  %104 = call i32 @ieee_write_byte(%struct.ieee_handle* %6, i32 %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %146

106:                                              ; preds = %101
  %107 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %6, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @ieee_write_number(%struct.ieee_handle* %6, i32 %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %146

111:                                              ; preds = %106
  %112 = call i32 @ieee_write_id(%struct.ieee_handle* %6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %146

114:                                              ; preds = %111
  %115 = load i64, i64* @ieee_ty_record_enum, align 8
  %116 = trunc i64 %115 to i32
  %117 = call i32 @ieee_write_byte(%struct.ieee_handle* %6, i32 %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %146

119:                                              ; preds = %114
  %120 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %6, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @ieee_write_number(%struct.ieee_handle* %6, i32 %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %146

124:                                              ; preds = %119
  %125 = call i32 @ieee_write_byte(%struct.ieee_handle* %6, i32 206)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %146

127:                                              ; preds = %124
  %128 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %6, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @ieee_write_number(%struct.ieee_handle* %6, i32 %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %146

132:                                              ; preds = %127
  %133 = call i32 @ieee_write_number(%struct.ieee_handle* %6, i32 80)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %146

135:                                              ; preds = %132
  %136 = load i64, i64* @builtin_void, align 8
  %137 = trunc i64 %136 to i32
  %138 = add nsw i32 %137, 32
  %139 = call i32 @ieee_write_number(%struct.ieee_handle* %6, i32 %138)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %135
  %142 = load i64, i64* @ieee_be_record_enum, align 8
  %143 = trunc i64 %142 to i32
  %144 = call i32 @ieee_write_byte(%struct.ieee_handle* %6, i32 %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %148, label %146

146:                                              ; preds = %141, %135, %132, %127, %124, %119, %114, %111, %106, %101, %97
  %147 = load i8*, i8** @FALSE, align 8
  store i8* %147, i8** %3, align 8
  br label %308

148:                                              ; preds = %141
  %149 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %6, i32 0, i32 7
  %150 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %6, i32 0, i32 4
  %151 = call i32 @ieee_append_buffer(%struct.ieee_handle* %6, %struct.TYPE_10__* %149, %struct.TYPE_10__* %150)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %155, label %153

153:                                              ; preds = %148
  %154 = load i8*, i8** @FALSE, align 8
  store i8* %154, i8** %3, align 8
  br label %308

155:                                              ; preds = %148
  %156 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %6, i32 0, i32 4
  %157 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %6, i32 0, i32 7
  %158 = bitcast %struct.TYPE_10__* %156 to i8*
  %159 = bitcast %struct.TYPE_10__* %157 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %158, i8* align 8 %159, i64 8, i1 false)
  br label %160

160:                                              ; preds = %155, %93
  %161 = load i8*, i8** @FALSE, align 8
  %162 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %6, i32 0, i32 6
  store i8* %161, i8** %162, align 8
  %163 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %6, i32 0, i32 5
  %164 = call i32 @ieee_init_buffer(%struct.ieee_handle* %6, %struct.TYPE_10__* %163)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %168, label %166

166:                                              ; preds = %160
  %167 = load i8*, i8** @FALSE, align 8
  store i8* %167, i8** %3, align 8
  br label %308

168:                                              ; preds = %160
  %169 = load i32*, i32** %4, align 8
  %170 = load i32, i32* @ieee_add_bb11_blocks, align 4
  %171 = bitcast %struct.ieee_handle* %6 to i8*
  %172 = call i32 @bfd_map_over_sections(i32* %169, i32 %170, i8* %171)
  %173 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %6, i32 0, i32 6
  %174 = load i8*, i8** %173, align 8
  %175 = icmp ne i8* %174, null
  br i1 %175, label %176, label %178

176:                                              ; preds = %168
  %177 = load i8*, i8** @FALSE, align 8
  store i8* %177, i8** %3, align 8
  br label %308

178:                                              ; preds = %168
  %179 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %6, i32 0, i32 5
  %180 = call i64 @ieee_buffer_emptyp(%struct.TYPE_10__* %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %201, label %182

182:                                              ; preds = %178
  %183 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %6, i32 0, i32 5
  %184 = call i32 @ieee_change_buffer(%struct.ieee_handle* %6, %struct.TYPE_10__* %183)
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %191

186:                                              ; preds = %182
  %187 = load i64, i64* @ieee_be_record_enum, align 8
  %188 = trunc i64 %187 to i32
  %189 = call i32 @ieee_write_byte(%struct.ieee_handle* %6, i32 %188)
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %193, label %191

191:                                              ; preds = %186, %182
  %192 = load i8*, i8** @FALSE, align 8
  store i8* %192, i8** %3, align 8
  br label %308

193:                                              ; preds = %186
  %194 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %6, i32 0, i32 4
  %195 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %6, i32 0, i32 5
  %196 = call i32 @ieee_append_buffer(%struct.ieee_handle* %6, %struct.TYPE_10__* %194, %struct.TYPE_10__* %195)
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %200, label %198

198:                                              ; preds = %193
  %199 = load i8*, i8** @FALSE, align 8
  store i8* %199, i8** %3, align 8
  br label %308

200:                                              ; preds = %193
  br label %201

201:                                              ; preds = %200, %178
  %202 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %6, i32 0, i32 4
  %203 = call i64 @ieee_buffer_emptyp(%struct.TYPE_10__* %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %207

205:                                              ; preds = %201
  %206 = load i8*, i8** @TRUE, align 8
  store i8* %206, i8** %3, align 8
  br label %308

207:                                              ; preds = %201
  store i8* null, i8** %8, align 8
  %208 = load i32*, i32** %4, align 8
  %209 = call i32* @bfd_make_section(i32* %208, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i32* %209, i32** %7, align 8
  %210 = load i32*, i32** %7, align 8
  %211 = icmp eq i32* %210, null
  br i1 %211, label %212, label %213

212:                                              ; preds = %207
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8** %8, align 8
  br label %213

213:                                              ; preds = %212, %207
  %214 = load i8*, i8** %8, align 8
  %215 = icmp eq i8* %214, null
  br i1 %215, label %216, label %226

216:                                              ; preds = %213
  %217 = load i32*, i32** %4, align 8
  %218 = load i32*, i32** %7, align 8
  %219 = load i32, i32* @SEC_DEBUGGING, align 4
  %220 = load i32, i32* @SEC_HAS_CONTENTS, align 4
  %221 = or i32 %219, %220
  %222 = call i32 @bfd_set_section_flags(i32* %217, i32* %218, i32 %221)
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %225, label %224

224:                                              ; preds = %216
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8** %8, align 8
  br label %225

225:                                              ; preds = %224, %216
  br label %226

226:                                              ; preds = %225, %213
  %227 = load i8*, i8** %8, align 8
  %228 = icmp eq i8* %227, null
  br i1 %228, label %229, label %254

229:                                              ; preds = %226
  store i64 0, i64* %10, align 8
  %230 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %6, i32 0, i32 4
  %231 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %230, i32 0, i32 0
  %232 = load %struct.ieee_buf*, %struct.ieee_buf** %231, align 8
  store %struct.ieee_buf* %232, %struct.ieee_buf** %9, align 8
  br label %233

233:                                              ; preds = %242, %229
  %234 = load %struct.ieee_buf*, %struct.ieee_buf** %9, align 8
  %235 = icmp ne %struct.ieee_buf* %234, null
  br i1 %235, label %236, label %246

236:                                              ; preds = %233
  %237 = load %struct.ieee_buf*, %struct.ieee_buf** %9, align 8
  %238 = getelementptr inbounds %struct.ieee_buf, %struct.ieee_buf* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = load i64, i64* %10, align 8
  %241 = add nsw i64 %240, %239
  store i64 %241, i64* %10, align 8
  br label %242

242:                                              ; preds = %236
  %243 = load %struct.ieee_buf*, %struct.ieee_buf** %9, align 8
  %244 = getelementptr inbounds %struct.ieee_buf, %struct.ieee_buf* %243, i32 0, i32 2
  %245 = load %struct.ieee_buf*, %struct.ieee_buf** %244, align 8
  store %struct.ieee_buf* %245, %struct.ieee_buf** %9, align 8
  br label %233

246:                                              ; preds = %233
  %247 = load i32*, i32** %4, align 8
  %248 = load i32*, i32** %7, align 8
  %249 = load i64, i64* %10, align 8
  %250 = call i32 @bfd_set_section_size(i32* %247, i32* %248, i64 %249)
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %253, label %252

252:                                              ; preds = %246
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8** %8, align 8
  br label %253

253:                                              ; preds = %252, %246
  br label %254

254:                                              ; preds = %253, %226
  %255 = load i8*, i8** %8, align 8
  %256 = icmp eq i8* %255, null
  br i1 %256, label %257, label %288

257:                                              ; preds = %254
  store i64 0, i64* %11, align 8
  %258 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %6, i32 0, i32 4
  %259 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %258, i32 0, i32 0
  %260 = load %struct.ieee_buf*, %struct.ieee_buf** %259, align 8
  store %struct.ieee_buf* %260, %struct.ieee_buf** %9, align 8
  br label %261

261:                                              ; preds = %283, %257
  %262 = load %struct.ieee_buf*, %struct.ieee_buf** %9, align 8
  %263 = icmp ne %struct.ieee_buf* %262, null
  br i1 %263, label %264, label %287

264:                                              ; preds = %261
  %265 = load i32*, i32** %4, align 8
  %266 = load i32*, i32** %7, align 8
  %267 = load %struct.ieee_buf*, %struct.ieee_buf** %9, align 8
  %268 = getelementptr inbounds %struct.ieee_buf, %struct.ieee_buf* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 8
  %270 = load i64, i64* %11, align 8
  %271 = load %struct.ieee_buf*, %struct.ieee_buf** %9, align 8
  %272 = getelementptr inbounds %struct.ieee_buf, %struct.ieee_buf* %271, i32 0, i32 0
  %273 = load i64, i64* %272, align 8
  %274 = call i32 @bfd_set_section_contents(i32* %265, i32* %266, i32 %269, i64 %270, i64 %273)
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %277, label %276

276:                                              ; preds = %264
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i8** %8, align 8
  br label %287

277:                                              ; preds = %264
  %278 = load %struct.ieee_buf*, %struct.ieee_buf** %9, align 8
  %279 = getelementptr inbounds %struct.ieee_buf, %struct.ieee_buf* %278, i32 0, i32 0
  %280 = load i64, i64* %279, align 8
  %281 = load i64, i64* %11, align 8
  %282 = add nsw i64 %281, %280
  store i64 %282, i64* %11, align 8
  br label %283

283:                                              ; preds = %277
  %284 = load %struct.ieee_buf*, %struct.ieee_buf** %9, align 8
  %285 = getelementptr inbounds %struct.ieee_buf, %struct.ieee_buf* %284, i32 0, i32 2
  %286 = load %struct.ieee_buf*, %struct.ieee_buf** %285, align 8
  store %struct.ieee_buf* %286, %struct.ieee_buf** %9, align 8
  br label %261

287:                                              ; preds = %276, %261
  br label %288

288:                                              ; preds = %287, %254
  %289 = load i8*, i8** %8, align 8
  %290 = icmp ne i8* %289, null
  br i1 %290, label %291, label %300

291:                                              ; preds = %288
  %292 = load i32, i32* @stderr, align 4
  %293 = load i32*, i32** %4, align 8
  %294 = call i8* @bfd_get_filename(i32* %293)
  %295 = load i8*, i8** %8, align 8
  %296 = call i32 (...) @bfd_get_error()
  %297 = call i8* @bfd_errmsg(i32 %296)
  %298 = call i32 @fprintf(i32 %292, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* %294, i8* %295, i8* %297)
  %299 = load i8*, i8** @FALSE, align 8
  store i8* %299, i8** %3, align 8
  br label %308

300:                                              ; preds = %288
  %301 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %6, i32 0, i32 3
  %302 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %301, i32 0, i32 0
  %303 = call i32 @bfd_hash_table_free(i32* %302)
  %304 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %6, i32 0, i32 2
  %305 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %304, i32 0, i32 0
  %306 = call i32 @bfd_hash_table_free(i32* %305)
  %307 = load i8*, i8** @TRUE, align 8
  store i8* %307, i8** %3, align 8
  br label %308

308:                                              ; preds = %300, %291, %205, %198, %191, %176, %166, %153, %146, %91, %78, %69, %62, %28
  %309 = load i8*, i8** %3, align 8
  ret i8* %309
}

declare dso_local i32 @memset(%struct.ieee_handle*, i32, i32) #1

declare dso_local i32 @bfd_hash_table_init(i32*, i32, i32) #1

declare dso_local i32 @ieee_init_buffer(%struct.ieee_handle*, %struct.TYPE_10__*) #1

declare dso_local i32 @debug_write(i8*, i32*, i8*) #1

declare dso_local i32 @ieee_finish_compilation_unit(%struct.ieee_handle*) #1

declare dso_local i32 @ieee_name_type_hash_traverse(%struct.TYPE_9__*, i32, i8*) #1

declare dso_local i64 @ieee_buffer_emptyp(%struct.TYPE_10__*) #1

declare dso_local i32 @ieee_change_buffer(%struct.ieee_handle*, %struct.TYPE_10__*) #1

declare dso_local i32 @ieee_write_byte(%struct.ieee_handle*, i32) #1

declare dso_local i32 @ieee_write_number(%struct.ieee_handle*, i32) #1

declare dso_local i32 @ieee_write_id(%struct.ieee_handle*, i8*) #1

declare dso_local i32 @ieee_append_buffer(%struct.ieee_handle*, %struct.TYPE_10__*, %struct.TYPE_10__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @bfd_map_over_sections(i32*, i32, i8*) #1

declare dso_local i32* @bfd_make_section(i32*, i8*) #1

declare dso_local i32 @bfd_set_section_flags(i32*, i32*, i32) #1

declare dso_local i32 @bfd_set_section_size(i32*, i32*, i64) #1

declare dso_local i32 @bfd_set_section_contents(i32*, i32*, i32, i64, i64) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*, i8*) #1

declare dso_local i8* @bfd_get_filename(i32*) #1

declare dso_local i8* @bfd_errmsg(i32) #1

declare dso_local i32 @bfd_get_error(...) #1

declare dso_local i32 @bfd_hash_table_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
