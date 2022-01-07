; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ieee.c_ieee_finish_compilation_unit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ieee.c_ieee_finish_compilation_unit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee_handle = type { i32, i8*, %struct.TYPE_7__*, %struct.ieee_range*, i32, i32, i32, i32, i32, i32, i32*, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_6__* }
%struct.ieee_range = type { i32, i32, %struct.ieee_range* }

@ieee_be_record_enum = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@ieee_bb_record_enum = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"__XRYCPP\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"GNU objcopy\00", align 1
@SEC_CODE = common dso_local global i32 0, align 4
@SEC_READONLY = common dso_local global i32 0, align 4
@IEEE_SECTION_NUMBER_BASE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee_handle*)* @ieee_finish_compilation_unit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee_finish_compilation_unit(%struct.ieee_handle* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee_handle*, align 8
  %4 = alloca %struct.ieee_range*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  store %struct.ieee_handle* %0, %struct.ieee_handle** %3, align 8
  %9 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %10 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %9, i32 0, i32 7
  %11 = call i32 @ieee_buffer_emptyp(i32* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %28, label %13

13:                                               ; preds = %1
  %14 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %15 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %16 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %15, i32 0, i32 7
  %17 = call i32 @ieee_change_buffer(%struct.ieee_handle* %14, i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %13
  %20 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %21 = load i64, i64* @ieee_be_record_enum, align 8
  %22 = trunc i64 %21 to i32
  %23 = call i32 @ieee_write_byte(%struct.ieee_handle* %20, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %19, %13
  %26 = load i32, i32* @FALSE, align 4
  store i32 %26, i32* %2, align 4
  br label %446

27:                                               ; preds = %19
  br label %28

28:                                               ; preds = %27, %1
  %29 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %30 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %29, i32 0, i32 11
  %31 = call i32 @ieee_buffer_emptyp(i32* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %113, label %33

33:                                               ; preds = %28
  %34 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %35 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %34, i32 0, i32 6
  %36 = call i32 @ieee_buffer_emptyp(i32* %35)
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  %41 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %42 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %43 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %42, i32 0, i32 6
  %44 = call i32 @ieee_change_buffer(%struct.ieee_handle* %41, i32* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %33
  %47 = load i32, i32* @FALSE, align 4
  store i32 %47, i32* %2, align 4
  br label %446

48:                                               ; preds = %33
  %49 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %50 = load i64, i64* @ieee_bb_record_enum, align 8
  %51 = trunc i64 %50 to i32
  %52 = call i32 @ieee_write_byte(%struct.ieee_handle* %49, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %110

54:                                               ; preds = %48
  %55 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %56 = call i32 @ieee_write_byte(%struct.ieee_handle* %55, i32 6)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %110

58:                                               ; preds = %54
  %59 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %60 = call i32 @ieee_write_number(%struct.ieee_handle* %59, i32 0)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %110

62:                                               ; preds = %58
  %63 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %64 = call i32 @ieee_write_id(%struct.ieee_handle* %63, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %110

66:                                               ; preds = %62
  %67 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %68 = call i32 @ieee_write_number(%struct.ieee_handle* %67, i32 0)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %110

70:                                               ; preds = %66
  %71 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %72 = call i32 @ieee_write_number(%struct.ieee_handle* %71, i32 0)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %110

74:                                               ; preds = %70
  %75 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %76 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %77 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = sub nsw i32 %78, 1
  %80 = call i32 @ieee_write_number(%struct.ieee_handle* %75, i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %110

82:                                               ; preds = %74
  %83 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %84 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %85 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %84, i32 0, i32 6
  %86 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %87 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %86, i32 0, i32 11
  %88 = call i32 @ieee_append_buffer(%struct.ieee_handle* %83, i32* %85, i32* %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %110

90:                                               ; preds = %82
  %91 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %92 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %93 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %92, i32 0, i32 6
  %94 = call i32 @ieee_change_buffer(%struct.ieee_handle* %91, i32* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %110

96:                                               ; preds = %90
  %97 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %98 = load i64, i64* @ieee_be_record_enum, align 8
  %99 = trunc i64 %98 to i32
  %100 = call i32 @ieee_write_byte(%struct.ieee_handle* %97, i32 %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %96
  %103 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %104 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %105 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = sub nsw i32 %106, 1
  %108 = call i32 @ieee_write_number(%struct.ieee_handle* %103, i32 %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %112, label %110

110:                                              ; preds = %102, %96, %90, %82, %74, %70, %66, %62, %58, %54, %48
  %111 = load i32, i32* @FALSE, align 4
  store i32 %111, i32* %2, align 4
  br label %446

112:                                              ; preds = %102
  br label %113

113:                                              ; preds = %112, %28
  %114 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %115 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %114, i32 0, i32 6
  %116 = call i32 @ieee_buffer_emptyp(i32* %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %133, label %118

118:                                              ; preds = %113
  %119 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %120 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %121 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %120, i32 0, i32 6
  %122 = call i32 @ieee_change_buffer(%struct.ieee_handle* %119, i32* %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %118
  %125 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %126 = load i64, i64* @ieee_be_record_enum, align 8
  %127 = trunc i64 %126 to i32
  %128 = call i32 @ieee_write_byte(%struct.ieee_handle* %125, i32 %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %132, label %130

130:                                              ; preds = %124, %118
  %131 = load i32, i32* @FALSE, align 4
  store i32 %131, i32* %2, align 4
  br label %446

132:                                              ; preds = %124
  br label %133

133:                                              ; preds = %132, %113
  %134 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %135 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %134, i32 0, i32 10
  %136 = load i32*, i32** %135, align 8
  %137 = icmp ne i32* %136, null
  br i1 %137, label %138, label %146

138:                                              ; preds = %133
  %139 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %140 = bitcast %struct.ieee_handle* %139 to i8*
  %141 = call i32 @ieee_lineno(i8* %140, i8* null, i32 0, i32 -1)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %145, label %143

143:                                              ; preds = %138
  %144 = load i32, i32* @FALSE, align 4
  store i32 %144, i32* %2, align 4
  br label %446

145:                                              ; preds = %138
  br label %146

146:                                              ; preds = %145, %133
  %147 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %148 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %147, i32 0, i32 5
  %149 = call i32 @ieee_buffer_emptyp(i32* %148)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %184, label %151

151:                                              ; preds = %146
  %152 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %153 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %154 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %153, i32 0, i32 5
  %155 = call i32 @ieee_change_buffer(%struct.ieee_handle* %152, i32* %154)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %163

157:                                              ; preds = %151
  %158 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %159 = load i64, i64* @ieee_be_record_enum, align 8
  %160 = trunc i64 %159 to i32
  %161 = call i32 @ieee_write_byte(%struct.ieee_handle* %158, i32 %160)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %165, label %163

163:                                              ; preds = %157, %151
  %164 = load i32, i32* @FALSE, align 4
  store i32 %164, i32* %2, align 4
  br label %446

165:                                              ; preds = %157
  %166 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %167 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %166, i32 0, i32 9
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %170 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %169, i32 0, i32 8
  %171 = load i32, i32* %170, align 8
  %172 = call i64 @strcmp(i32 %168, i32 %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %183

174:                                              ; preds = %165
  %175 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %176 = load i64, i64* @ieee_be_record_enum, align 8
  %177 = trunc i64 %176 to i32
  %178 = call i32 @ieee_write_byte(%struct.ieee_handle* %175, i32 %177)
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %182, label %180

180:                                              ; preds = %174
  %181 = load i32, i32* @FALSE, align 4
  store i32 %181, i32* %2, align 4
  br label %446

182:                                              ; preds = %174
  br label %183

183:                                              ; preds = %182, %165
  br label %184

184:                                              ; preds = %183, %146
  %185 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %186 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %187 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %186, i32 0, i32 4
  %188 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %189 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %188, i32 0, i32 7
  %190 = call i32 @ieee_append_buffer(%struct.ieee_handle* %185, i32* %187, i32* %189)
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %208

192:                                              ; preds = %184
  %193 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %194 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %195 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %194, i32 0, i32 4
  %196 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %197 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %196, i32 0, i32 6
  %198 = call i32 @ieee_append_buffer(%struct.ieee_handle* %193, i32* %195, i32* %197)
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %208

200:                                              ; preds = %192
  %201 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %202 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %203 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %202, i32 0, i32 4
  %204 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %205 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %204, i32 0, i32 5
  %206 = call i32 @ieee_append_buffer(%struct.ieee_handle* %201, i32* %203, i32* %205)
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %210, label %208

208:                                              ; preds = %200, %192, %184
  %209 = load i32, i32* @FALSE, align 4
  store i32 %209, i32* %2, align 4
  br label %446

210:                                              ; preds = %200
  %211 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %212 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %213 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %212, i32 0, i32 4
  %214 = call i32 @ieee_change_buffer(%struct.ieee_handle* %211, i32* %213)
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %218, label %216

216:                                              ; preds = %210
  %217 = load i32, i32* @FALSE, align 4
  store i32 %217, i32* %2, align 4
  br label %446

218:                                              ; preds = %210
  %219 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %220 = load i64, i64* @ieee_bb_record_enum, align 8
  %221 = trunc i64 %220 to i32
  %222 = call i32 @ieee_write_byte(%struct.ieee_handle* %219, i32 %221)
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %251

224:                                              ; preds = %218
  %225 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %226 = call i32 @ieee_write_byte(%struct.ieee_handle* %225, i32 10)
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %251

228:                                              ; preds = %224
  %229 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %230 = call i32 @ieee_write_number(%struct.ieee_handle* %229, i32 0)
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %251

232:                                              ; preds = %228
  %233 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %234 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %235 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %234, i32 0, i32 1
  %236 = load i8*, i8** %235, align 8
  %237 = call i32 @ieee_write_id(%struct.ieee_handle* %233, i8* %236)
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %251

239:                                              ; preds = %232
  %240 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %241 = call i32 @ieee_write_id(%struct.ieee_handle* %240, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %251

243:                                              ; preds = %239
  %244 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %245 = call i32 @ieee_write_number(%struct.ieee_handle* %244, i32 0)
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %251

247:                                              ; preds = %243
  %248 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %249 = call i32 @ieee_write_id(%struct.ieee_handle* %248, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %253, label %251

251:                                              ; preds = %247, %243, %239, %232, %228, %224, %218
  %252 = load i32, i32* @FALSE, align 4
  store i32 %252, i32* %2, align 4
  br label %446

253:                                              ; preds = %247
  %254 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %255 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %254, i32 0, i32 3
  %256 = load %struct.ieee_range*, %struct.ieee_range** %255, align 8
  store %struct.ieee_range* %256, %struct.ieee_range** %4, align 8
  br label %257

257:                                              ; preds = %432, %253
  %258 = load %struct.ieee_range*, %struct.ieee_range** %4, align 8
  %259 = icmp ne %struct.ieee_range* %258, null
  br i1 %259, label %260, label %436

260:                                              ; preds = %257
  %261 = load %struct.ieee_range*, %struct.ieee_range** %4, align 8
  %262 = getelementptr inbounds %struct.ieee_range, %struct.ieee_range* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  store i32 %263, i32* %5, align 4
  %264 = load %struct.ieee_range*, %struct.ieee_range** %4, align 8
  %265 = getelementptr inbounds %struct.ieee_range, %struct.ieee_range* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 4
  store i32 %266, i32* %6, align 4
  %267 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %268 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %267, i32 0, i32 2
  %269 = load %struct.TYPE_7__*, %struct.TYPE_7__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %269, i32 0, i32 0
  %271 = load %struct.TYPE_6__*, %struct.TYPE_6__** %270, align 8
  store %struct.TYPE_6__* %271, %struct.TYPE_6__** %7, align 8
  br label %272

272:                                              ; preds = %301, %260
  %273 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %274 = icmp ne %struct.TYPE_6__* %273, null
  br i1 %274, label %275, label %305

275:                                              ; preds = %272
  %276 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %277 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %276, i32 0, i32 2
  %278 = load %struct.TYPE_7__*, %struct.TYPE_7__** %277, align 8
  %279 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %280 = call i64 @bfd_get_section_vma(%struct.TYPE_7__* %278, %struct.TYPE_6__* %279)
  %281 = load i32, i32* %5, align 4
  %282 = sext i32 %281 to i64
  %283 = icmp sle i64 %280, %282
  br i1 %283, label %284, label %300

284:                                              ; preds = %275
  %285 = load i32, i32* %6, align 4
  %286 = sext i32 %285 to i64
  %287 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %288 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %287, i32 0, i32 2
  %289 = load %struct.TYPE_7__*, %struct.TYPE_7__** %288, align 8
  %290 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %291 = call i64 @bfd_get_section_vma(%struct.TYPE_7__* %289, %struct.TYPE_6__* %290)
  %292 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %293 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %292, i32 0, i32 2
  %294 = load %struct.TYPE_7__*, %struct.TYPE_7__** %293, align 8
  %295 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %296 = call i64 @bfd_section_size(%struct.TYPE_7__* %294, %struct.TYPE_6__* %295)
  %297 = add nsw i64 %291, %296
  %298 = icmp sle i64 %286, %297
  br i1 %298, label %299, label %300

299:                                              ; preds = %284
  br label %305

300:                                              ; preds = %284, %275
  br label %301

301:                                              ; preds = %300
  %302 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %303 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %302, i32 0, i32 2
  %304 = load %struct.TYPE_6__*, %struct.TYPE_6__** %303, align 8
  store %struct.TYPE_6__* %304, %struct.TYPE_6__** %7, align 8
  br label %272

305:                                              ; preds = %299, %272
  %306 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %307 = icmp eq %struct.TYPE_6__* %306, null
  br i1 %307, label %308, label %309

308:                                              ; preds = %305
  br label %432

309:                                              ; preds = %305
  br label %310

310:                                              ; preds = %345, %309
  %311 = load %struct.ieee_range*, %struct.ieee_range** %4, align 8
  %312 = getelementptr inbounds %struct.ieee_range, %struct.ieee_range* %311, i32 0, i32 2
  %313 = load %struct.ieee_range*, %struct.ieee_range** %312, align 8
  %314 = icmp ne %struct.ieee_range* %313, null
  br i1 %314, label %315, label %343

315:                                              ; preds = %310
  %316 = load i32, i32* %6, align 4
  %317 = add nsw i32 %316, 4096
  %318 = load %struct.ieee_range*, %struct.ieee_range** %4, align 8
  %319 = getelementptr inbounds %struct.ieee_range, %struct.ieee_range* %318, i32 0, i32 2
  %320 = load %struct.ieee_range*, %struct.ieee_range** %319, align 8
  %321 = getelementptr inbounds %struct.ieee_range, %struct.ieee_range* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 8
  %323 = icmp sge i32 %317, %322
  br i1 %323, label %324, label %343

324:                                              ; preds = %315
  %325 = load %struct.ieee_range*, %struct.ieee_range** %4, align 8
  %326 = getelementptr inbounds %struct.ieee_range, %struct.ieee_range* %325, i32 0, i32 2
  %327 = load %struct.ieee_range*, %struct.ieee_range** %326, align 8
  %328 = getelementptr inbounds %struct.ieee_range, %struct.ieee_range* %327, i32 0, i32 1
  %329 = load i32, i32* %328, align 4
  %330 = sext i32 %329 to i64
  %331 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %332 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %331, i32 0, i32 2
  %333 = load %struct.TYPE_7__*, %struct.TYPE_7__** %332, align 8
  %334 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %335 = call i64 @bfd_get_section_vma(%struct.TYPE_7__* %333, %struct.TYPE_6__* %334)
  %336 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %337 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %336, i32 0, i32 2
  %338 = load %struct.TYPE_7__*, %struct.TYPE_7__** %337, align 8
  %339 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %340 = call i64 @bfd_section_size(%struct.TYPE_7__* %338, %struct.TYPE_6__* %339)
  %341 = add nsw i64 %335, %340
  %342 = icmp sle i64 %330, %341
  br label %343

343:                                              ; preds = %324, %315, %310
  %344 = phi i1 [ false, %315 ], [ false, %310 ], [ %342, %324 ]
  br i1 %344, label %345, label %352

345:                                              ; preds = %343
  %346 = load %struct.ieee_range*, %struct.ieee_range** %4, align 8
  %347 = getelementptr inbounds %struct.ieee_range, %struct.ieee_range* %346, i32 0, i32 2
  %348 = load %struct.ieee_range*, %struct.ieee_range** %347, align 8
  store %struct.ieee_range* %348, %struct.ieee_range** %4, align 8
  %349 = load %struct.ieee_range*, %struct.ieee_range** %4, align 8
  %350 = getelementptr inbounds %struct.ieee_range, %struct.ieee_range* %349, i32 0, i32 1
  %351 = load i32, i32* %350, align 4
  store i32 %351, i32* %6, align 4
  br label %310

352:                                              ; preds = %343
  %353 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %354 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %353, i32 0, i32 0
  %355 = load i32, i32* %354, align 8
  %356 = load i32, i32* @SEC_CODE, align 4
  %357 = and i32 %355, %356
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %359, label %360

359:                                              ; preds = %352
  store i32 1, i32* %8, align 4
  br label %370

360:                                              ; preds = %352
  %361 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %362 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %361, i32 0, i32 0
  %363 = load i32, i32* %362, align 8
  %364 = load i32, i32* @SEC_READONLY, align 4
  %365 = and i32 %363, %364
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %367, label %368

367:                                              ; preds = %360
  store i32 3, i32* %8, align 4
  br label %369

368:                                              ; preds = %360
  store i32 2, i32* %8, align 4
  br label %369

369:                                              ; preds = %368, %367
  br label %370

370:                                              ; preds = %369, %359
  %371 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %372 = load i64, i64* @ieee_bb_record_enum, align 8
  %373 = trunc i64 %372 to i32
  %374 = call i32 @ieee_write_byte(%struct.ieee_handle* %371, i32 %373)
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %376, label %420

376:                                              ; preds = %370
  %377 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %378 = call i32 @ieee_write_byte(%struct.ieee_handle* %377, i32 11)
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %380, label %420

380:                                              ; preds = %376
  %381 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %382 = call i32 @ieee_write_number(%struct.ieee_handle* %381, i32 0)
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %384, label %420

384:                                              ; preds = %380
  %385 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %386 = call i32 @ieee_write_id(%struct.ieee_handle* %385, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %387 = icmp ne i32 %386, 0
  br i1 %387, label %388, label %420

388:                                              ; preds = %384
  %389 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %390 = load i32, i32* %8, align 4
  %391 = call i32 @ieee_write_number(%struct.ieee_handle* %389, i32 %390)
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %393, label %420

393:                                              ; preds = %388
  %394 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %395 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %396 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %395, i32 0, i32 1
  %397 = load i32, i32* %396, align 4
  %398 = load i32, i32* @IEEE_SECTION_NUMBER_BASE, align 4
  %399 = add nsw i32 %397, %398
  %400 = call i32 @ieee_write_number(%struct.ieee_handle* %394, i32 %399)
  %401 = icmp ne i32 %400, 0
  br i1 %401, label %402, label %420

402:                                              ; preds = %393
  %403 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %404 = load i32, i32* %5, align 4
  %405 = call i32 @ieee_write_number(%struct.ieee_handle* %403, i32 %404)
  %406 = icmp ne i32 %405, 0
  br i1 %406, label %407, label %420

407:                                              ; preds = %402
  %408 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %409 = load i64, i64* @ieee_be_record_enum, align 8
  %410 = trunc i64 %409 to i32
  %411 = call i32 @ieee_write_byte(%struct.ieee_handle* %408, i32 %410)
  %412 = icmp ne i32 %411, 0
  br i1 %412, label %413, label %420

413:                                              ; preds = %407
  %414 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %415 = load i32, i32* %6, align 4
  %416 = load i32, i32* %5, align 4
  %417 = sub nsw i32 %415, %416
  %418 = call i32 @ieee_write_number(%struct.ieee_handle* %414, i32 %417)
  %419 = icmp ne i32 %418, 0
  br i1 %419, label %422, label %420

420:                                              ; preds = %413, %407, %402, %393, %388, %384, %380, %376, %370
  %421 = load i32, i32* @FALSE, align 4
  store i32 %421, i32* %2, align 4
  br label %446

422:                                              ; preds = %413
  %423 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %424 = load i32, i32* @TRUE, align 4
  %425 = load i32, i32* %5, align 4
  %426 = load i32, i32* %6, align 4
  %427 = call i32 @ieee_add_range(%struct.ieee_handle* %423, i32 %424, i32 %425, i32 %426)
  %428 = icmp ne i32 %427, 0
  br i1 %428, label %431, label %429

429:                                              ; preds = %422
  %430 = load i32, i32* @FALSE, align 4
  store i32 %430, i32* %2, align 4
  br label %446

431:                                              ; preds = %422
  br label %432

432:                                              ; preds = %431, %308
  %433 = load %struct.ieee_range*, %struct.ieee_range** %4, align 8
  %434 = getelementptr inbounds %struct.ieee_range, %struct.ieee_range* %433, i32 0, i32 2
  %435 = load %struct.ieee_range*, %struct.ieee_range** %434, align 8
  store %struct.ieee_range* %435, %struct.ieee_range** %4, align 8
  br label %257

436:                                              ; preds = %257
  %437 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %438 = load i64, i64* @ieee_be_record_enum, align 8
  %439 = trunc i64 %438 to i32
  %440 = call i32 @ieee_write_byte(%struct.ieee_handle* %437, i32 %439)
  %441 = icmp ne i32 %440, 0
  br i1 %441, label %444, label %442

442:                                              ; preds = %436
  %443 = load i32, i32* @FALSE, align 4
  store i32 %443, i32* %2, align 4
  br label %446

444:                                              ; preds = %436
  %445 = load i32, i32* @TRUE, align 4
  store i32 %445, i32* %2, align 4
  br label %446

446:                                              ; preds = %444, %442, %429, %420, %251, %216, %208, %180, %163, %143, %130, %110, %46, %25
  %447 = load i32, i32* %2, align 4
  ret i32 %447
}

declare dso_local i32 @ieee_buffer_emptyp(i32*) #1

declare dso_local i32 @ieee_change_buffer(%struct.ieee_handle*, i32*) #1

declare dso_local i32 @ieee_write_byte(%struct.ieee_handle*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ieee_write_number(%struct.ieee_handle*, i32) #1

declare dso_local i32 @ieee_write_id(%struct.ieee_handle*, i8*) #1

declare dso_local i32 @ieee_append_buffer(%struct.ieee_handle*, i32*, i32*) #1

declare dso_local i32 @ieee_lineno(i8*, i8*, i32, i32) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i64 @bfd_get_section_vma(%struct.TYPE_7__*, %struct.TYPE_6__*) #1

declare dso_local i64 @bfd_section_size(%struct.TYPE_7__*, %struct.TYPE_6__*) #1

declare dso_local i32 @ieee_add_range(%struct.ieee_handle*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
